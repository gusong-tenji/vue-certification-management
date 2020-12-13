<template>
<div id="app">
  <v-app id="inspire">
    <v-card class="mx-auto overflow-hidden" height="100%" width="100%">
      <v-app-bar color="deep-purple" dark>
        <v-app-bar-nav-icon @click="drawer = true"></v-app-bar-nav-icon>

        <v-toolbar-title>{{title}}</v-toolbar-title>
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
		<SearchMainView></SearchMainView>
	</div>
		
	<div v-else-if="title=='入力画面'">
		<InputMainView></InputMainView>
	</div>

	<div v-else-if="title=='社員一覧'">
		<ListMainView></ListMainView>
	</div>

    </v-card>
  </v-app>
</div>
</template>
<script src="./js/homePage.js"></script>

