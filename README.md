#SPA
>1. 安装 vue-router ```npm install vue-router --save```
>
>> * app.js 引入 vue-router ;
```JavaScript                   
 import VueRouter from 'vue-router'
 
 Vue.use(VueRouter);

 ```
 >> * 创建js路由文件 并引入vue-router 和 组件
```JavaScript
import VueRouter from 'vue-router';

let routes = [
    {
        path: '/',
        component: './components/Home'
    }
];

export default new VueRouter({
    routes
});
```
>> * app.js 引入路由文件 （不能再引入组件了）
```JavaScript
import router from './routes';

const app = new Vue({
    el: '#app',
    router
});
```

