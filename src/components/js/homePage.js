import InputMainView from '../InputPage.vue';
import ListMainView from '../ListPage.vue';
import SearchMainView from '../SearchPage.vue';
import SelectMainView from '../SelectPage.vue';

export default {
  data() {
    return {
      drawer: false,
      group: null,
      tab: null,
      items: [
        {name:'検索画面', event: this.search},
        {name:'入力画面', event: this.input},
        {name:'社員一覧', event: this.list},
      ],
      title: '検索画面',
      inputData: {}
    }
  },
  components: {
    InputMainView,
    ListMainView,
    SearchMainView,
    SelectMainView
  },
  methods: {
    logout () {
      this.$router.push({
        path: '/'
    });
    },
    input(event, data = '') {
      const tabNum = 1
      this.title = this.items[tabNum].name
      this.tab = tabNum
      this.inputData = data
    },
    list() {
      const tabNum = 2
      this.title = this.items[tabNum].name
      this.tab = tabNum
    },
    search() {
      const tabNum = 0
      this.title = this.items[tabNum].name
      this.tab = tabNum
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