<template>
  <div class="container">
    <div class="jumbotron mt-5">
      <div class="col-ms-8 mx-auto">
        <h1 class="text-center"><a v-on:click="getlist()">Danh sách người dùng</a></h1>
        <table class="table col-md-6 mx-auto">
          <tbody>
            <tr>
              <td>STT</td>
              <td>First Name</td>
              <td>Last Name</td>
              <td>Email</td>
              <td>Status</td>
            </tr>
             <tr :key="index" v-for="(item, index) in datas">
              <td>{{ index + 1 }}</td>
              <td>{{ item.last_name }}</td>
              <td>{{ item.first_name }}</td>
              <td>{{ item.email }}</td>
              <td><label class="alert alert-success">{{ item.status === 1 ? 'active' : 'inactive'  }}</label></td>
              <td>
                <div id="app">
                  <v-app id="inspire">
                    <v-container fluid>
                      <v-switch v-model="switch1" :label="`Switch 1: ${switch1.toString()}`"></v-switch>
                    </v-container>
                  </v-app>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  data () {
    return {
      datas: []
    }
  },
  methods: {
  },
  computed: {
    getlist () {
      axios.get('/users/getlist').then(res => {
        this.datas = res.data
      }).catch(err => {
        console.log(err)
      })
    }
  }
}
</script>
