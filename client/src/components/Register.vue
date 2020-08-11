<template>
  <div class="container">
    <div class="row">
      <div class="col-md-6 mt-5 mx-auto">
        <form v-on:submit.prevent="register">
          <h1 class="h3 mb-3 font-weight-normal text-center">ĐĂNG KÝ THÀNH VIÊN</h1>
          <div class="form-group">
            <label for="first_name">First name</label>
            <input type="first_name" v-model="first_name" name="first_name" placeholder="Enter first name" class="form-control">
          </div>
          <div class="form-group">
            <label for="last_name">Last name</label>
            <input type="last_name" v-model="last_name" name="last_name" placeholder="Enter last name" class="form-control">
          </div>
          <div class="form-group">
            <label for="email">Email address</label>
            <input type="email" v-model="email" name="email" placeholder="Enter Email" class="form-control">
          </div>
          <div class="form-group">
            <label for="password">Password</label>
            <input type="password" v-model="password" name="password" placeholder="Enter Password" class="form-control">
          </div>
          <button class="btn btn-lg btn-primary btn-block" type="submit">Đăng ký</button>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'
import router from '../router'

export default {
  data () {
    return {
      first_name: '',
      last_name: '',
      email: '',
      password: '',
      errors: []
    }
  },
  methods: {
    register () {
      this.errors = []
      if (!this.first_name) {
        this.errors.push('First name required!')
      }
      if (!this.last_name) {
        this.errors.push('Last name required!')
      }
      if (!this.email) {
        this.errors.push('Email; required!')
      }
      if (!this.password) {
        this.errors.push('Password required!')
      }
      if (this.first_name && this.last_name && this.email && this.password) {
        axios.post('/users/register', {
          first_name: this.first_name,
          last_name: this.last_name,
          email: this.email,
          password: this.password
        }).then(res => {
          this.first_name = ''
          this.last_name = ''
          this.email = ''
          this.password = ''
          router.push({name: 'Login'})
        }).catch(err => {
          console.log(err)
        })
      }
    }
  }
}
</script>
