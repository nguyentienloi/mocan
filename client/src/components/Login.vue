<template>
  <div class="container">
    <div class="row">
      <div class="col-md-6 mt-5 mx-auto">
        <form v-on:submit.prevent="login">
          <h1 class="h3 mb-3 font-weight-normal text-center">ĐĂNG NHẬP PANPAGE</h1>
          <div class="form-group">
            <label for="email">Email address</label>
            <input type="email" v-model="email" name="email" placeholder="Enter Email" class="form-control">
          </div>
          <div class="form-group">
            <label for="password">Password</label>
            <input type="password" v-model="password" name="password" placeholder="Enter Password" class="form-control">
          </div>
          <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'
import router from '../router'
import EventBus from './EventBus'

export default {
  data () {
    return {
      email: '',
      password: '',
      error: 0
    }
  },
  methods: {
    login () {
      axios.post('/users/login', {
        email: this.email,
        password: this.password
      }).then(res => {
        if (res.data) {
          localStorage.setItem('usertoken', res.data.token)
          this.email = ''
          this.password = ''
          if (res.data.user.role === 1) {
            router.push({name: 'HomeAdmin'})
          } else {
            router.push({name: 'Home'})
          }
        }
      }).catch(err => {
        console.log(err)
      })
      this.emitMethod()
    },
    emitMethod () {
      EventBus.$emit('logged-in', 'loggedin')
      EventBus.$emit('user_name', this.email)
    }
  }
}
</script>
