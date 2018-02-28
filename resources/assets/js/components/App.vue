<template>
    <div>
        <top-menu></top-menu>
        <transition name="fade" mode="out-in">
            <router-view></router-view>
        </transition>
    </div>
</template>

<style>
    .fade-enter-active, .fade-leave-active {
        transition: opacity .6s
    }
    .fade-enter, .fade-leave-to {
        opacity: 0
    }
</style>

<script>
    import TopMenu from './common/TopMenu.vue';
    import jwtToken from '../helpers/jwt';
    import Cookie from 'js-cookie';
    export default {
        created() {
            if(jwtToken.getToken()){
                this.$store.dispatch('setAuthUser');
            }else if(Cookie.get('auth_id')){
                this.$store.dispatch('refreshToken')
            }
        },
        components:{
            TopMenu
        }
    }
</script>
