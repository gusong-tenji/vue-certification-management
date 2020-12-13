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