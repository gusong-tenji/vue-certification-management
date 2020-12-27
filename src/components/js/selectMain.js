  export default {
    data () {
      return {
        selected: [],
        search: '',
        headers: [
          {
            text: '名前',
            align: 'start',
            sortable: false,
            value: 'name',
          },
          { text: '社員ID', value: 'employee_id' },
          { text: 'フリガナ', value: 'frigana' },
          { text: '入社年月日', value: 'entering_date' }
        ],
        desserts: [],
      }
    },
    mounted: function () {

      let _this = this;
  
        _this.$http.get('/employees').then((res)=>{
      if(res.status == 200){
        console.log('res.data ', res.data)
        this.desserts = res.data;
      }else{
          alert('エラーが発生しました。');
      }
          console.log(res);
      },(err)=>{
          alert('APIエラーが発生しました。');
          console.log(err);
      });
    },
    methods: {
      nextSort () {
        console.log(this.selected[0])
      }
    }
  }