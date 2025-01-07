<template>
  <div id="app">
    <h1>Приложение</h1>
    <nav>
      <router-link to="/login">Авторизация</router-link> |
      <router-link to="/register">Регистрация</router-link>
    </nav>
    
    <router-view></router-view> 
  </div>
</template>

<script>
export default {};
</script>

<style>
nav {
  margin-bottom: 20px;
}
</style>
