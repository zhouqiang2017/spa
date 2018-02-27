<template>
    <div>
        <nav class="navbar navbar-expand-lg navbar-light bg-light text-center">
            <div class="collapse navbar-collapse text-center" id="navbarNav">
                <ul class="navbar-nav" style="margin: 0 auto">
                    <router-link to="/" tag="li" class="nav-item">
                        <a class="nav-link active">首页</a>
                    </router-link>
                    <router-link to="/login" tag="li" class="nav-item">
                        <a class="nav-link">登录</a>
                    </router-link>
                    <router-link to="/register" tag="li" class="nav-item">
                        <a class="nav-link">注册</a>
                    </router-link>
                </ul>
            </div>
        </nav>
    </div>
</template>

<script>
    export default {

    }
</script>
