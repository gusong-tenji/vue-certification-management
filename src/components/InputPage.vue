<template>
  <v-form ref="form" v-model="valid" lazy-validation>
    <!-- <v-text-field v-model="employeeId" :counter="6" :rules="employeeIdRules" label="社員ID" required append-outer-icon="mdi-magnify" @click:append-outer="goList"></v-text-field> -->

    <v-autocomplete
        :items="employeeIds"
        :filter="customFilter"
        color="white"
        item-text="employee_id"
        label="社員ID"
        :rules="employeeIdRules" 
        v-model="employeeId"
        required
        @change="fillOthers()"
        append-outer-icon="mdi-magnify" 
        @click:append-outer="goList"
      ></v-autocomplete>

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
      
    <v-text-field v-model="certificationName" :rules="certificationNameRules" label="資格" required v-if="updateCertMode"></v-text-field>
    <v-text-field v-model="certificationName" label="資格" v-else @change="checkCertification"></v-text-field>

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
            v-if="updateCertMode"
          ></v-text-field>
          <v-text-field
            v-model="getDate"
            label="取得日付"
            readonly
            v-bind="attrs"
            v-on="on"
            v-else
            @change="checkCertification"
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
            clearable
            v-bind="attrs"
            v-on="on"
          ></v-text-field>
        </template>
        <v-date-picker
          v-model="encourageDate"
          @input="menu3 = false"
        ></v-date-picker>
      </v-menu>

    <!-- <v-btn color="success" class="mr-4" @click="validate">提出</v-btn> -->

    <!-- <v-btn color="error" class="mr-4" @click="reset">リセット</v-btn> -->
    <v-snackbar
      v-model="hasCommit"
      :timeout="2000"
      absolute
      bottom
      left
    >
      提出しました。
    </v-snackbar>

    <!-- <v-btn color="warning" @click="resetValidation">Reset Validation</v-btn> -->

    <v-dialog
      v-model="dialog"
      persistent
      max-width="590"
    >
      <template v-slot:activator="{ on, attrs }">
        <v-btn
          color="primary"
          dark
          v-bind="attrs"
          v-on="on"
        >
          提出
        </v-btn>
      </template>
      <v-card>
        <v-card-title class="headline">
          下記の内容で提出してよろしいでしょうか？
        </v-card-title>
        <v-card-text class="text-left">
          社員ID：{{employeeId}}<br>
          名前：{{name}}<br>
          フリガナ：{{frigana}}<br>
          入社年月日：{{enteringDate}}<br>
          資格：{{certificationName}}<br>
          取得日付：{{getDate}}<br>
          奨励金日付：{{encourageDate}}<br>

          </v-card-text>
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
            @click="validate"
          >
            はい
          </v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
  </v-form>
</template>
<script src="./js/inputMain.js"></script>