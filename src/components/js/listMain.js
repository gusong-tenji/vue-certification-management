export default {
  data () {
    return {
      itemsPerPageArray: [4, 8, 12],
      search: '',
      filter: {},
      sortDesc: false,
      page: 1,
      itemsPerPage: 4,
      sortBy: '社員番号',
      keys: [
        '社員番号',
        '名前',
        'フリガナ',
        '入社年月日'
      ],
      items: [],
    }
  },
  computed: {
    numberOfPages () {
      return Math.ceil(this.items.length / this.itemsPerPage)
    },
    filteredKeys () {
      return this.keys.filter(key => key !== 'name')
    },
  },
  mounted: function () {

    let _this = this;

      _this.$http.get('/employeeinfo').then((res)=>{
    if(res.status == 200){
      console.log('res.data ', res.data)
      this.items = res.data;
    }else{
        alert('エラーが発生しました。');
    }
        console.log(res);
    },(err)=>{
        alert('APIエラーが発生しました。');
        console.log(err);
    });

      
    this.$nextTick(function () {

      // Code that will run only after the
      // entire view has been rendered
    })
  },
  methods: {
    nextPage () {
      if (this.page + 1 <= this.numberOfPages) this.page += 1
    },
    formerPage () {
      if (this.page - 1 >= 1) this.page -= 1
    },
    updateItemsPerPage (number) {
      this.itemsPerPage = number
    },
  },
}