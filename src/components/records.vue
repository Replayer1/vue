<template>
  <div class="body">
    <div class="body-btn">
      <button @click="sortedArrayName()">Сортировать по имени</button
      ><button @click="sortedArrayFam()">Сортировать по фамилии</button>
    </div>
    <div class="body-rec">
      <div class="def">
        <div class="write" v-for="zap in def()">
          <i
            ><strong>Имя:</strong>
            <p>{{ zap.fName }}</p></i
          >
          <i
            ><strong>Фамилия:</strong>
            <p>{{ zap.lName }}</p></i
          >
          <i
            ><strong>Отчество:</strong>
            <p>{{ zap.sName }}</p></i
          >
          <i
            ><strong>Телефон:</strong>
            <p>{{ zap.phone }}</p></i
          >
          <i><button @click="zap.fev = !zap.fev">В Избраное</button></i>
        </div>
      </div>
      <div class="fev">
        <div class="write" v-for="zap in fev()">
          <i
            ><strong>Имя:</strong>
            <p>{{ zap.fName }}</p></i
          >
          <i
            ><strong>Фамилия:</strong>
            <p>{{ zap.lName }}</p></i
          >
          <i
            ><strong>Отчество:</strong>
            <p>{{ zap.sName }}</p></i
          >
          <i
            ><strong>Телефон:</strong>
            <p>{{ zap.phone }}</p></i
          >
          <i><button @click="zap.fev = !zap.fev">Из Избраное</button></i>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    zapis: {
      type: Array,
    },
  },
  methods: {
    def() {
      return this.zapis.filter((i) => i.fev === false);
    },
    fev() {
      return this.zapis.filter((i) => i.fev === true);
    },
    sortedArrayFam() {
      this.zapis.sort(m);
    },
  },
};
</script>

<style scoped>
.body-rec {
  display: flex;
}

.body-btn * {
  margin: 20px;
  padding: 3px;
  border: 2px solid gray;
  border-radius: 5px;
}

.def .write {
  display: flex;
  flex-direction: column;
  border: 3px solid rgb(90, 158, 87);
  border-radius: 5px;
  margin: 20px;
  width: 400px;
}

.fev .write {
  display: flex;
  flex-direction: column;
  border: 3px solid rgb(158, 87, 87);
  border-radius: 5px;
  margin: 20px;
  width: 400px;
}

.write * {
  margin: 5px;
  display: flex;
}
</style>

