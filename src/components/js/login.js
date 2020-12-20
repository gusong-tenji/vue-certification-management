export default{
    data(){
        return{
            username:'',
            password:'',
            userInfo:{}
        }
    },
    methods:{
        goLogin(){
            let _this = this;
            
            if(_this.username ==''){
                alert('ユーザIDを入力してください。');
            }else if(_this.password == ''){
                alert('パスワードを入力してください。');
            }else{
                _this.$http.post('/login',{
                    loginName:_this.username,
                    loginPawd:_this.password,
                }).then((res)=>{
                if(res.status == 200){
                    _this.userInfo = res.data;
                    if(_this.userInfo.status == 1){
                        //LOGIN success
                        window.sessionStorage.userInfo = JSON.stringify(_this.userInfo);
                        console.log(_this.$store);
                        _this.$store.dispatch('setUserInfo', _this.userInfo);
                        let redirect = decodeURIComponent(_this.$route.query.redirect || '/home');
                        _this.$router.push({
                            path: redirect
                        });
                    }else{
                        alert(_this.userInfo.msg);
                    }
                }else{
                    alert('エラーが発生しました。');
                }
                    console.log(res);
                },(err)=>{
                    alert('APIエラーが発生しました。');
                    console.log(err);
                });
            }
            
        }
    }
}