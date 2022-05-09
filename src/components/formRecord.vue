<template>
  <div class="book">
    <form @submit.prevent="createZapis">
      <input type="text" placeholder="Имя" v-model="zapis.fName" />
      <input type="text" placeholder="Фамилия" v-model="zapis.lName" />
      <input type="text" placeholder="Отчество" v-model="zapis.sName" />
      <input type="text" placeholder="Телефон" v-model="zapis.phone" />
      <div>
        <label for="check">Избраное: </label
        ><input type="checkbox" name="check" v-model="zapis.fev" />
      </div>
      <button>Записать</button>
    </form>
  </div>
</template>


<script>
export default {
  data() {
    return {
      zapis: {
        id: 5,
        fName: "",
        lName: "",
        sName: "",
        phone: "",
        fev: false,
      },
    };
  },

  methods: {
    createZapis() {
      this.$emit('create', this.zapis)
      this.zapis = {
        fName: "",
        lName: "",
        sName: "",
        phone: "",
        fev: false,
      }

    },
  },
};
</script>




<style>
form {
  margin: 15px;
  display: flex;
  flex-direction: column;
  text-align: center;
}

form * {
  margin: 7px;
  align-items: center;
  justify-content: center;
}

form input {
  padding: 7px;
  border-radius: 5px;
  border: 1px solid rgb(88, 88, 88);
}
</style>
