<template>
    <form method="POST" @submit.prevent="register">
        <div class="form-group row">
            <label for="name" class="col-md-4 col-form-label text-md-right">用户名</label>
            <div class="col-md-6">
                <input v-model="name"
                       v-validate data-vv-rules="required|min:4" data-vv-as="用户名"
                       :class="{ 'is-invalid': errors.has('name') }"
                       id="name" type="text" class="form-control" name="name" value="" required autofocus>
                <span class="invalid-feedback" v-show="errors.has('name')">{{ errors.first('name') }}</span>
            </div>
        </div>

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
                       id="password" type="password" class="form-control" name="password" required>
                <span class="invalid-feedback" v-show="errors.has('password')">{{ errors.first('password') }}</span>
            </div>
        </div>

        <div class="form-group row">
            <label for="password-confirm" class="col-md-4 col-form-label text-md-right">确认密码</label>
            <div class="col-md-6">
                <input
                        v-validate data-vv-rules="required|min:6|comfirmed:password" data-vv-as="确认密码"
                        :class="{ 'is-invalid': errors.has('password_confirmation') }"
                        id="password-confirm" type="password" class="form-control" name="password_confirmation"
                        required>
                <span class="invalid-feedback"
                      v-show="errors.has('password_confirmation')">{{ errors.first('password_confirmation') }}</span>
            </div>
        </div>
        <div class="form-group row mb-0">
            <div class="col-md-6 offset-md-4">
                <button type="submit" class="btn btn-primary">
                    注册
                </button>
            </div>
        </div>
    </form>
</template>

<script>
    export default {
        data() {
            return {
                name: '',
                email: '',
                password: ''
            }
        },
        methods: {
            register() {
                this.$validator.validateAll().then((result) => {
                    if (result) {
                        let formData = {
                            name: this.name,
                            email: this.email,
                            password: this.password
                        }
                        axios.post('/api/register', formData).then(response => {
                            this.$router.push({name: 'confirm'})
                        })
                    }
                })
            }
        }
    }

</script>
