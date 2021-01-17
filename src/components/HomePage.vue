<template>
<div id="app">
  <v-app id="inspire">
    <v-card class="mx-auto overflow-hidden" height="100%" width="100%">
      <v-app-bar color="deep-purple" dark>
        <v-app-bar-nav-icon @click="drawer = true"></v-app-bar-nav-icon>

        <v-toolbar-title>{{title}}</v-toolbar-title>
        <v-spacer></v-spacer>
        <v-btn icon>
          <!-- <v-icon @click="logout">mdi-logout</v-icon> -->
          <v-icon @click.stop="dialog = true">mdi-logout</v-icon>
        </v-btn>

        <v-dialog
          v-model="dialog"
          max-width="490"
        >
          <v-card>
            <v-card-title class="headline">
              ログアウトしてよろしいでしょうか?
            </v-card-title>

            <v-card-actions>
              <v-spacer></v-spacer>

              <v-btn
                color="green darken-1"
                text
                @click="dialog = false"
              >
                いいえ
              </v-btn>

              <v-btn
                color="green darken-1"
                text
                @click="logout"
              >
                はい
              </v-btn>
            </v-card-actions>
          </v-card>
        </v-dialog>
        <template v-slot:extension>
          <v-tabs align-with-title v-model="tab">
            <v-tabs-slider color="yellow"></v-tabs-slider>

          <v-tab
            v-for="item in items"
            :key="item.name"
            @click="item.event"
          >
            {{ item.name }}
          </v-tab>
          </v-tabs>
        </template>
      </v-app-bar>

      <v-navigation-drawer v-model="drawer" absolute temporary>
        <v-list nav dense>
          <v-list-item-group v-model="group" active-class="deep-purple--text text--accent-4">
            <v-list-item>
              <v-list-item-icon>
                <v-icon>mdi-home</v-icon>
              </v-list-item-icon>
              <v-list-item-title @click="search">検索画面</v-list-item-title>
            </v-list-item>

            <v-list-item>
              <v-list-item-icon>
                <v-icon>mdi-account</v-icon>
              </v-list-item-icon>
              <v-list-item-title @click="input">入力画面</v-list-item-title>
            </v-list-item>

			    <v-list-item>
              <v-list-item-icon>
                <v-icon>mdi-account</v-icon>
              </v-list-item-icon>
              <v-list-item-title @click="list">社員一覧</v-list-item-title>
            </v-list-item>
          </v-list-item-group>
        </v-list>
      </v-navigation-drawer>

	<div v-if="title=='検索画面'">
		<SearchMainView v-on:handleSwitch="handleSwitch"></SearchMainView>
	</div>
		
	<div v-else-if="title=='入力画面'">
		<InputMainView :parentData="inputData" v-on:handleSwitch="handleSwitch"></InputMainView>
	</div>

	<div v-else-if="title=='社員一覧'">
		<SelectMainView v-on:handleSwitch="handleSwitch"></SelectMainView>
	</div>

    </v-card>
  </v-app>
</div>
</template>
<script src="./js/homePage.js"></script>

