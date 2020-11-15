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
<script>
	export default{
		data(){
			return{
				regname:'',
				regpasswd:'',
				regpasswd_ag:'',
				regInfo:{}
			}
		},
		methods:{
			goSearch(){
				let _this = this;
				if(_this.regname ==''){
					alert('ユーザIDを入力してください。');
				}else if(_this.regpasswd == '' || _this.regpasswd_ag == ''){
					alert('パスワードを入力してください。');
				}else if(_this.regpasswd!==_this.regpasswd_ag){
					alert('パスワードの確認とパスワードを一致していません。');
				}else{
					_this.$http.post('/reg',{
						regName:_this.regname,
						regPasswd:_this.regpasswd
				}).then((res)=>{
					if(res.status == 200){
						_this.regInfo = res.data;
						if(_this.regInfo.status == 1){
							//reg success, go to this login page
							window.history.go(-1);
						}else{
							alert('登録失敗しました。');
						}
					}else{
						alert('エラーが発生しました。');
					}
					console.log(res);
				},(err)=>{
					console.log(err);
				});
				}
				
			}
		}
	}
</script>
<style>
@import '../assets/css/reg.css';
</style>