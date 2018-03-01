<template>
    <div class="container">
        <div class="notification">
            <transition name="fade" mode="in-out">
                <div class="alert" :class="notificationLevel"
                     v-if="message"
                     @click="hideNotification()">
                    <button type="button"
                            class="close"
                            data-dismiss="alert"
                            aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    {{ message }}
                </div>
            </transition>
        </div>
    </div>
</template>

<script>
    import {mapState, mapActions} from 'vuex';
    export default {
        name: 'notification',
        computed: {
            ...mapState({
                level: state => state.Notification.level,
                message: state => state.Notification.message
            }),
            notificationLevel() {
                return 'alert-' + this.level;
            }
        },
        methods: {
            ...mapActions([
                'hideNotification'
            ])
        }
    }
</script>
