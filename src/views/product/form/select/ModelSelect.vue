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
        name: 'model-select',
        components: {},
        props: [
            'id'
        ],
        data() {
            return {
                id: null,
                show: true,
                selected: null,
                options: [{
                    value: null,
                    text: 'Select a model'
                }, {
                    value: 'Nike',
                    text: 'nike'
                }]
            }
        }
    }
</script>
