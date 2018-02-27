
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');

import VueRouter from 'vue-router';

Vue.use(VueRouter);

import App from './components/App.vue';

Vue.component('app',App);

import zh_CN from './locale/zh_CN';

import VeeValidate, { Validator } from 'vee-validate';

Validator.localize('zh_CN', zh_CN);

Vue.use(VeeValidate);



/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */
import router from './routes';

const app = new Vue({
    el: '#app',
    router
});
