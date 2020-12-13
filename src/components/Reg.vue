<template>
	<div class="m_r">
		<!-- <header class="top_bar">
		    <a onclick="window.history.go(-1)" class="icon_back"></a>
		    <h3 class="cartname">京东注册</h3>
		</header> -->
		<main class="user_login_box">
		    <div class="login_dialog">
		        <div class="_username">
		            <input type="text" name="regname" placeholder="ユーザID" class="user_input" v-model="regname">
		        </div>
		        <div class="_username u_passwd">
		            <input type="password" name="regpasswd" placeholder="パスワード" class="user_input" v-model="regpasswd">
		        </div>
		        <div class="_username u_passwd">
		            <input type="password" name="regpasswd_ag" placeholder="パスワードの確認" class="user_input" v-model="regpasswd_ag">
		        </div>
		        <div class="login_box">
		            <a @click="goSearch()" class="btn_login">登録</a>
		        </div>
		    </div>
		</main>
	</div>
</template>
<script src="./js/reg.js"></script>
<style>
@import '../assets/css/reg.css';
</style>