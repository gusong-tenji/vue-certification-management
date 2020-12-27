<template>
  <v-card>
    <v-card-title>
      社員一覧
      <v-spacer></v-spacer>
      <v-text-field
        v-model="search"
        append-icon="mdi-magnify"
        label="Search"
        single-line
        hide-details
      ></v-text-field>
    </v-card-title>
    <v-data-table
      v-model="selected"
      :headers="headers"
      :items="desserts"
      single-select
      item-key="name"
      show-select
      :search="search"
      class="elevation-1"
    >
    </v-data-table>
    <div class="text-center pt-2">
      <v-btn
        color="primary"
        @click="nextSort"
      >
        Sort next column
      </v-btn>
    </div>
  </v-card>
</template>
<script src="./js/selectMain.js"></script>