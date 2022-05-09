<template>
  <div class="book">
   <form-record @create="createZapis"></form-record>
   <records :zapis="zapis"></records>  
  </div>
</template>

<script>
import FormRecord from "@/components/formRecord.vue"
import Records from "./components/records.vue"
export default {
  components: {
    FormRecord, Records
  },
  data() {
    return {
      zapis: [
        {
          id: 2,
          fName: "Антон",
          lName: "Антонович",
          sName: "Антонов",
          phone: 89999999999,
          fev: false,
        },
        {
          id: 3,
          fName: "Петр",
          lName: "Петрович",
          sName: "Петров",
          phone: 89999999999,
          fev: false,
        },
        {
          id: 4,
          fName: "Александр",
          lName: "Александров",
          sName: "Адександрович",
          phone: 89999999999,
          fev: false,
        },
      ],
    };
  },
  methods: {
    createZapis(zapis) {
      this.zapis.push(zapis)
    }
  },
};
</script>

<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

.book {
  display: flex;
}
</style>

