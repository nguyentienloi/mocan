<template>
<div class="header_top">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <div class="menu_top">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                    <router-link class="nav-link" to="/">Moc An</router-link>
                    <router-link class="nav-link" to="">Giới thiệu</router-link>
                    <router-link class="nav-link" to="">Công dụng</router-link>
                    <router-link class="nav-link" to="">Thành phần</router-link>
                    <router-link class="nav-link" to="">Phản hồi</router-link>
                </div>
            </div>
            <form class="form-inline">
              <input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder=" Search...">
              <button type="submit" class="btn btn-primary mb-2">Tìm kiếm</button>
            </form>
        </div>
        <!-- <router-link v-if="auth !=='loggedin'" class="nav-link" to="/login">Đăng nhập</router-link>
        <router-link v-if="auth !=='loggedin'" class="nav-link" to="/register">Đăng ký</router-link> -->
        <div v-if="auth=='loggedin'" class="dropdown">
            <button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                {{ user_name }}
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <router-link class="nav-link" to="/profile">Hồ sơ cá nhân</router-link>
                <a class="nav-link" v-on:click="logout">Đăng xuất</a>
            </div>
        </div>

    </nav>
</div>
</template>

<script>
import EventBus from './EventBus'
import jwtDecode from 'jwt-decode'
import router from '../router'

export default {
  data () {
    const token = localStorage.usertoken
    const decoded = jwtDecode(token)
    return {
      auth: '',
      user: '',
      user_name: decoded.first_name + ' ' + decoded.last_name
    }
  },
  methods: {
    logout () {
      localStorage.removeItem('usertoken')
      router.push({name: 'Login'})
    }
  },
  mounted () {
    EventBus.$on('logged-in', status => {
      this.auth = status
    })
  }
}
</script>
