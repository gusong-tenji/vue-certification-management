<template>
  <div id="app">
    <!-- <img alt="Vue logo" src="./assets/logo.png"> -->
    <!-- <HelloWorld msg="Welcome to Your Vue.js App"/> -->
    <!-- <loading v-show="loading"></loading> -->
    <router-view></router-view> 
  </div>
</template>

<script>
// import {mapGetters,mapActions} from 'vuex';

// import HelloWorld from './components/HelloWorld.vue'

export default {
  name: 'app',
  // computed:mapGetters(['loading','shownav']),
  components: {
    // HelloWorld
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
