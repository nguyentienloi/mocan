import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/Home'
import HomeAdmin from '@/components/HomeAdmin'
import Comment from '@/components/Comment'
import Login from '@/components/Login'
import Register from '@/components/Register'
import Profile from '@/components/Profile'
import Customer from '@/components/Customer'
import User from '@/components/User'
Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    },
    {
      path: '/login',
      name: 'Login',
      component: Login
    },
    {
      path: '/register',
      name: 'Register',
      component: Register
    },
    {
      path: '/profile',
      name: 'Profile',
      component: Profile
    },
    {
      path: '/admin/index',
      name: 'HomeAdmin',
      component: HomeAdmin
    },
    {
      path: '/admin/comment',
      name: 'Comment',
      component: Comment
    },
    {
      path: '/admin/customer',
      name: 'Customer',
      component: Customer
    },
    {
      path: '/admin/user',
      name: 'User',
      component: User
    }
  ]
})
