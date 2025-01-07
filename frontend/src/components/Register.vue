<template>
    <div class="register">
      <h2>Регистрация</h2>
      <form @submit.prevent="register">
        <input v-model="email" type="email" placeholder="Email" required />
        <input v-model="password" type="password" placeholder="Password" required />
        <button type="submit">Регистрация</button>
      </form>
      <router-link to="/login">Уже есть аккаунт? Войти</router-link>
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
      async register() {
        try {
          const response = await axios.post('http://localhost:3000/api/auth/register', {
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
  /* Добавьте стили для компонента */
  </style>
  