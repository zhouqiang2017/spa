<template>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">注册</div>

                    <div class="card-body">
                        <register-form></register-form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    import RegisterForm from './RegisterForm.vue';
    export default {
        components: {
            RegisterForm
        }
    }
</script>
