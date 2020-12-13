<template>
	<div class="my_l">
		<!-- <header class="top_bar">
		    <a onclick="window.history.go(-1)" class="icon_back"></a>
		    <h3 class="cartname">京东登录</h3>
		</header> -->
		<main class="user_login_box">
		    <div class="login_dialog">
		        <div class="_username">
		            <input type="text" name="username" placeholder="ユーザID:" class="user_input" v-model="username"/>
		        </div>
		        <div class="_username u_passwd">
		            <input type="password" name="password" placeholder="パスワード:" class="user_input" v-model="password"/>
		        </div>

		        <div class="login_box">
		            <a @click="goLogin()" class="btn_login">ログイン</a>
		        </div>
		        <div class="go_reg_box">
		            <router-link tag="span" to="/register">登録</router-link>
		        </div>
		    </div>
		</main>
	</div>
</template>
<script src="./js/login.js"></script>
<style>
@import '../assets/css/login.css';
</style>