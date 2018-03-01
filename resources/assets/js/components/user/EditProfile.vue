<template>
    <div>
        <div class="card card-default">
            <div class="card-body">
                <edit-profile-form></edit-profile-form>
            </div>
        </div>
    </div>
</template>

<script>
    import EditProfileForm from './EditProfileForm.vue';
    export default {
        name: 'edit-profile',
        components: {
            EditProfileForm
        }
    }
</script>
