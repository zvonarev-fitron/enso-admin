<template>

    <transition mode="out-in"
        enter-active-class="fadeIn"
        leave-active-class="fadeOut">
        <router-view class="animated"
            :key="key"/>
    </transition>

</template>

<script>

export default {
    name: 'Router',

    computed: {
        key() {

            // console.log(this.$route.params);
            // console.log(JSON.stringify(this.$route.params));

            return JSON.stringify(this.$route.params);
        },
    },
};

</script>
