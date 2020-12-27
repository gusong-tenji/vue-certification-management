<template>
  <v-form ref="form" v-model="valid" lazy-validation>
    <v-text-field v-model="employeeId" :counter="6" :rules="employeeIdRules" label="社員ID" required></v-text-field>
    <v-text-field v-model="name" :counter="10" :rules="nameRules" label="名前" required></v-text-field>


    <v-text-field v-model="frigana" label="フリガナ"></v-text-field>
    
    <v-menu
        v-model="menu1"
        :close-on-content-click="false"
        :nudge-right="40"
        transition="scale-transition"
        offset-y
        min-width="290px"
      >
        <template v-slot:activator="{ on, attrs }">
          <v-text-field
            v-model="enteringDate"
            label="入社年月日"
            readonly
            v-bind="attrs"
            v-on="on"
            :rules="enteringDateRules"
          ></v-text-field>
        </template>
        <v-date-picker
          v-model="enteringDate"
          @input="menu1 = false"
        ></v-date-picker>
      </v-menu>
      
    <v-text-field v-model="certificationName" :rules="certificationNameRules" label="資格" required></v-text-field>

    <v-menu
        v-model="menu2"
        :close-on-content-click="false"
        :nudge-right="40"
        transition="scale-transition"
        offset-y
        min-width="290px"
      >
        <template v-slot:activator="{ on, attrs }">
          <v-text-field
            v-model="getDate"
            label="取得日付"
            readonly
            v-bind="attrs"
            v-on="on"
            :rules="getDateRules"
          ></v-text-field>
        </template>
        <v-date-picker
          v-model="getDate"
          @input="menu2 = false"
        ></v-date-picker>
      </v-menu>

      
    <v-menu
        v-model="menu3"
        :close-on-content-click="false"
        :nudge-right="40"
        transition="scale-transition"
        offset-y
        min-width="290px"
      >
        <template v-slot:activator="{ on, attrs }">
          <v-text-field
            v-model="encourageDate"
            label="奨励金日付"
            readonly
            v-bind="attrs"
            v-on="on"
          ></v-text-field>
        </template>
        <v-date-picker
          v-model="encourageDate"
          @input="menu3 = false"
        ></v-date-picker>
      </v-menu>

    <v-btn color="success" class="mr-4" @click="validate">提出</v-btn>

    <v-btn color="error" class="mr-4" @click="reset">リセット</v-btn>

    <!-- <v-btn color="warning" @click="resetValidation">Reset Validation</v-btn> -->
  </v-form>
</template>
<script src="./js/inputMain.js"></script>