<template>
    <div>
        <nav class="navbar navbar-expand-md navbar-light navbar-laravel">
            <div class="container">
                <router-link to="/" tag="div" class="nav-item">
                    <a class="nav-link active">首页</a>
                </router-link>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">
                    </ul>
                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        <router-link v-if="!user.authenticated" to="/login" tag="li" class="nav-item">
                            <a class="nav-link">登录</a>
                        </router-link>
                        <router-link v-if="!user.authenticated" to="/register" tag="li" class="nav-item">
                            <a class="nav-link">注册</a>
                        </router-link>
                        <router-link v-if="user.authenticated" to="/profile" tag="li">
                            <a class="nav-link">个人中心</a>
                        </router-link>
                        <li v-if="user.authenticated">
                            <a @click.prevent="logout" class="nav-link" href="#">退出登录</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</template>

<script>
    import {mapState} from 'vuex'

    export default {
        computed: {
            ...mapState({
                user: state => state.AuthUser
            })
        },
        methods: {
            logout() {
                this.$store.dispatch('logoutRequest').then(response => {
                    this.$router.push({'name': 'home'})
                })
            }
        }
    }
</script>
