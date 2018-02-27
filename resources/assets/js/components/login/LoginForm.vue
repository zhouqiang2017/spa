<template>
    <form method="POST" @submit.prevent="login">

        <div class="form-group row">
            <label for="email" class="col-md-4 col-form-label text-md-right">邮箱</label>
            <div class="col-md-6">
                <input v-model="email"
                       v-validate data-vv-rules="required|email" data-vv-as="邮箱"
                       :class="{ 'is-invalid': errors.has('email') }"
                       id="email" type="email" class="form-control" name="email" value="" required>
                <span class="invalid-feedback" v-show="errors.has('email')">{{ errors.first('email') }}</span>
            </div>
        </div>

        <div class="form-group row">
            <label for="password" class="col-md-4 col-form-label text-md-right">密码</label>
            <div class="col-md-6">
                <input v-model="password"
                       v-validate data-vv-rules="required|min:6" data-vv-as="密码"
                       :class="{ 'is-invalid': errors.has('password') }"
                       id="password" type="password"class="form-control" name="password" required>
                <span class="invalid-feedback" v-show="errors.has('password')">{{ errors.first('password') }}</span>
            </div>
        </div>

        <div class="form-group row mb-0">
            <div class="col-md-6 offset-md-4">
                <button type="submit" class="btn btn-primary">
                    登录
                </button>
            </div>
        </div>
    </form>
</template>

<script>
    import JWTToken from '../../helpers/jwt'
    export default {
        data(){
            return {
                email: '',
                password: ''
            }
        },
        methods:{
            login(){
                let formData = {
                    email: this.email,
                    password: this.password,
                };
                axios.post('/api/login',formData).then(response => {
                    console.log(response.data);
                    JWTToken.setToken(response.data.token);

                }).catch(error => {
                    console.log(error.response.data);
                });
            }
        }
    }

</script>
