<?php

namespace App\Http\Proxy;

use GuzzleHttp\Client;

/**
 * Class TokenProxy
 *
 * @package \App\Http\Proxy
 */
class TokenProxy
{
    protected $http;

    public function __construct(Client $http)
    {
        $this->http = $http;
    }

    public function login($email, $password)
    {
        if ( auth()->attempt(['email' => $email, 'password' => $password, 'is_active' => 1]) ) {
            return $this->proxy('password', [
                'username' => $email,
                'password' => $password,
                'scope' => ''
            ]);
        }
        return response()->json([
            'status'  => false,
            'message' => 'Credentials not match',
        ],421);
    }

    public function logout()
    {
        $user = auth()->guard('api')->user();//可以从请求中token获取到用户信息

        if(is_null($user)){

            app('cookie')->queue(app('cookie')->forget('refreshToken'));

            return response()->json([
                'message' => 'logout!'
            ],204);
        }

        $accessToken = $user->token();

        app('db')->table('oauth_refresh_tokens')
            ->where('access_token_id', $accessToken->id)
            ->update([
                'revoked' => true,
            ]);

        app('cookie')->queue(app('cookie')->forget('refreshToken'));

        $accessToken->revoke();

        return response()->json([
           'message' => 'logout!'
        ],204);

    }

    public function refresh()
    {
        $refreshToken = request()->cookie('refreshToken');
        return $this->proxy('refresh_token',[
            'refresh_token' => $refreshToken
            ]);
    }

    public function proxy($grantType, $data = [])
    {
        $data = array_merge($data, [
            'client_id' => env('PASSPORT_CLIENT_ID'),
            'client_secret' => env('PASSPORT_CLIENT_SECRET'),
            'grant_type' => $grantType
        ]);
        $response = $this->http->post('http://sap.ao/oauth/token', [
            'form_params' => $data
        ]);
        $token = json_decode((string)$response->getBody(), true);

        return response()->json([
            'token' => $token['access_token'],
            'auth_id' => md5($token['refresh_token']),
            'expires_in' => $token['expires_in']
        ])->cookie('refreshToken', $token['refresh_token'], 14400, null, null, false, true);
    }


}
