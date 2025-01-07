<template>
    <div class="login">
      <h2>Авторизация</h2>
      <form @submit.prevent="login">
        <input v-model="email" type="email" placeholder="Email" required />
        <input v-model="password" type="password" placeholder="Password" required />
        <button type="submit">Авторизация</button>
      </form>
      <router-link to="/register">Нету аккаунта? Зарегистрироваться</router-link>
    </div>
  </template>
  
  <script>
  import axios from 'axios';
  import { useToast } from 'vue-toastification';
  
  export default {
    data() {
      return {
        email: '',
        password: '',
      };
    },
    setup() {
      const toast = useToast();
      return { toast };
    },
    methods: {
      async login() {
        try {
          const response = await axios.post('http://localhost:3000/api/auth/login', {
            email: this.email,
            password: this.password,
          });
          this.toast.success(response.data.message);
          
        } catch (error) {
          this.toast.error(error.response.data.message);
        }
      },
    },
  };
  </script>
  
  <style scoped>
  
  </style>
  