import InputMainView from '../InputPage.vue';
import ListMainView from '../ListPage.vue';
import SearchMainView from '../SearchPage.vue';

export default {
  data() {
    return {
      drawer: false,
      group: null,
      title: '検索画面'
    }
  },
  components: {
    InputMainView,
    ListMainView,
    SearchMainView
  },
  methods: {
    input() {
      this.title = '入力画面'
      console.log(this.title)
    },
    list() {
      this.title = '社員一覧'
      console.log(this.title)
    },
    search() {
      this.title = '検索画面'
      console.log(this.title)
    }
  }
}