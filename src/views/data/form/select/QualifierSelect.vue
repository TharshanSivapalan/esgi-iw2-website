<template>
  <b-form-select
          :id="id"
          :plain="true"
          v-model="selected"
          :options="options">
  </b-form-select>
</template>

<script>
    export default {
        name: 'qualifier-select',
        components: {},
        props: [
            'id'
        ],
        data() {
            return {
                show: true,
                id: null,
                selected: null,
                options: [{
                    value: null,
                    text: 'Select a qualifier'
                }, {
                    value: 'double quote',
                    text: '"'
                }, {
                    value: 'coma',
                    text: ','
                }, {
                    value: 'semicolon',
                    text: ';'
                }]
            }
        }
    }
</script>
