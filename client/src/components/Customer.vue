<template>
  <div class="container">
    <div class="jumbotron mt-5">
      <div class="col-ms-8 mx-auto">
        <h1 class="text-center" v-on:click="getlist()">QUẢN LÝ CUSTOMER</h1>
        <table class="table table-hover">
          <thead>
            <tr>
              <th class="text-center">STT</th>
              <th class="text-center">Customer name</th>
              <th class="text-center">Mobile</th>
              <th class="text-center">Time</th>
            </tr>
          </thead>
          <tbody>
            <tr :key="index" v-for="(data, index) in datas" class="warning">
              <td class="text-center">{{ index + 1 }}</td>
              <td class="text-center">{{ data.name }}</td>
              <td class="text-center">{{ '0' + data.phone }}</td>
              <td class="text-center">{{ data.created }}</td>
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
    // getlist () {
    //   axios.get('/customers/getlist').then(res => {
    //     this.datas = res.data
    //   }).catch(err => {
    //     console.log(err)
    //   })
    // }
  },
  computed: {
    getlist () {
      axios.get('/customers/getlist').then(res => {
        this.datas = res.data
      }).catch(err => {
        console.log(err)
      })
    }
  }
}
</script>
