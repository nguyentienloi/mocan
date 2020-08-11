<template>
  <div class="container">
    <div class="jumbotron mt-5">
      <div class="col-ms-8 mx-auto">
        <h1 class="text-center" v-on:click="getlist()">QUẢN LÝ COMMENT</h1>
        <table class="table table-hover">
          <thead>
            <tr>
              <th class="text-center">STT</th>
              <th class="text-center">Customer name</th>
              <th class="text-center">Description</th>
              <th class="text-center">Time</th>
              <th class="text-center">Feature</th>
            </tr>
          </thead>
          <tbody v-if="datas.length">
            <tr :key="index" v-for="(data, index) in datas" class="warning">
              <td class="text-center">{{ index + 1 }}</td>
              <td class="text-center">{{ data.userName }}</td>
              <td class="text-center">{{ data.comment }}</td>
              <td class="text-center">{{ data.created }}</td>
              <td class="text-center">
                <a href="" class="btn btn-danger" v-on:click="deleteComment(data.id)">Delete</a>
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
import router from '../router'

export default {
  data () {
    return {
      datas: []
    }
  },
  methods: {
    // getlist () {
    //   axios.get('/comments/getlist').then(res => {
    //     this.datas = res.data
    //   }).catch(err => {
    //     console.log(err)
    //   })
    // },
    deleteComment (id) {
      const URL = '/comments/delete/' + id
      axios.delete(URL).then(res => {
        router.push({name: 'Comment'})
      }).catch(err => {
        console.log(err)
      })
    }
  },
  computed: {
    getlist () {
      var me = this
      axios.get('/comments/getlist').then(res => {
        me.datas = res.data
        console.log('data', res.data)
      }).catch(err => {
        console.log(err)
      })
    }
  }
}
</script>
