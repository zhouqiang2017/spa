<template>
    <form @submit.prevent="updateProfile">
        <div class="form-group">
            <label for="name" class="control-label">用户名</label>
            <input v-model="name"
                   :class="{'is-invalid' : errors.has('name') }"
                   v-validate data-vv-rules="required" data-vv-as="用户名"
                   id="name" type="text" class="form-control" name="name" required>
            <span class="invalid-feedback" v-show="errors.has('name')">{{errors.first('name')}}</span>
        </div>
        <div class="form-group">
            <label for="email" class="control-label">邮箱</label>
            <input v-model="email"
                   :class="{'is-invalid' : errors.has('email') }"
                   v-validate data-vv-rules="required|email" data-vv-as="邮箱"
                   id="email" type="email" class="form-control" name="email" required>
            <span class="invalid-feedback" v-show="errors.has('email')">{{errors.first('email')}}</span>
        </div>
        <div class="form-group">
            <div class="col-md-6 col-md-offset-4">
                <button type="submit" class="btn btn-primary btn-block">
                    更新用户资料
                </button>
            </div>
        </div>
    </form>
</template>

<script>
    import jwtToken from './../../helpers/jwt';
    import {ErrorBag} from 'vee-validate';
    import * as types from './../../store/mutation-type';

    export default {
        created() {
            this.$store.dispatch('setAuthUser');
        },
        computed: {
            name: {
                get() {
                    return this.$store.state.AuthUser.name;
                },
                set(value) {
                    this.$store.commit({
                        type: types.UPDATE_PROFILE_NAME,
                        value: value
                    })
                }
            },
            email: {
                get() {
                    return this.$store.state.AuthUser.email;
                },
                set(value) {
                    this.$store.commit({
                        type: types.UPDATE_PROFILE_EMAIL,
                        value: value
                    })
                }
            }
        },
        methods: {
            updateProfile() {
                const formData = {
                    name: this.name,
                    email: this.email
                }
                this.$store.dispatch('updateProfileRequest', formData).then(response => {
                    this.$router.push({name: 'profile'})
                }).catch(error => {
                })
            }
        }
    }
</script>
