<template>
  <div class="container">
    <div class="jumbotron mt-5">
      <div class="col-ms-8 mx-auto">
        <h1 class="text-center">WELCOME TO MY PAGE ADMIN</h1>
        <router-link class="nav-link" to="/admin/comment">Comment</router-link>
        <router-link class="nav-link" to="/admin/customer">Customer</router-link>
        <router-link class="nav-link" to="/admin/user">User</router-link>
      </div>
    </div>
  </div>
</template>

<script>
import EventBus from './EventBus'

export default {
  data () {
    return {
      auth: '',
      user: ''
    }
  },
  methods: {

  },
  mounted () {
    EventBus.$on('logged-in', status => {
      this.auth = status
    })
  }
}
</script>
