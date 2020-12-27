import InputMainView from '../InputPage.vue';
import ListMainView from '../ListPage.vue';
import SearchMainView from '../SearchPage.vue';

export default {
  data() {
    return {
      drawer: false,
      group: null,
      title: '検索画面',
      inputData: {}
    }
  },
  components: {
    InputMainView,
    ListMainView,
    SearchMainView
  },
  methods: {
    input(event, data = false) {
      this.title = '入力画面'
      if (data) {
        this.title = '更新画面'
        this.inputData = data
      }
    },
    list() {
      this.title = '社員一覧'
    },
    search() {
      this.title = '検索画面'
    },
    handleSwitch (event, data) {
      if (event == 'input') {
        this.input('', data)
      } else if (event == 'search') {
        this.search()
      } else if (event == 'list') {
        this.list()
      }
    },
  }
}