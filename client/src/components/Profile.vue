<template>
  <div class="container">
    <div class="jumbotron mt-5">
      <div class="col-ms-8 mx-auto">
        <h1 class="text-center">Profile</h1>
        <table class="table col-md-6 mx-auto">
          <tbody>
            <tr>
              <td>First Name</td>
              <td>{{ first_name }}</td>
            </tr>
             <tr>
              <td>Last Name</td>
              <td>{{ last_name }}</td>
            </tr>
             <tr>
              <td>First Name</td>
              <td>{{ first_name }}</td>
            </tr>
             <tr>
              <td>Email</td>
              <td>{{ email }}</td>
            </tr>
          </tbody>
        </table>
      </div>
      <!-- <div class="col-ms-8 mx-auto">
        <h1 class="text-center"><a v-on:click="getlist">Danh sách người dùng</a></h1>
        <table class="table col-md-6 mx-auto">
          <tbody>
            <tr>
              <td>First Name</td>
              <td>Last Name</td>
              <td>Email</td>
              <td>Status</td>
            </tr>
             <tr :key="index" v-for="(item, index) in datas">
              <td>{{ item.last_name }}</td>
              <td>{{ item.first_name }}</td>
              <td>{{ item.email }}</td>
              <td>{{ item.email }}</td>
            </tr>
          </tbody>
        </table>
      </div> -->
    </div>
  </div>
</template>

<script>
import jwtDecode from 'jwt-decode'
// import axios from 'axios'
export default {
  data () {
    const token = localStorage.usertoken
    const decoded = jwtDecode(token)
    return {
      first_name: decoded.first_name,
      last_name: decoded.last_name,
      email: decoded.email,
      datas: []
    }
  },
  methods: {
    // getlist () {
    //   axios.get('/users/getlist').then(res => {
    //     this.datas = res.data
    //   }).catch(err => {
    //     console.log(err)
    //   })
    // }
  }
}
</script>
