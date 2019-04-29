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
        name: 'feed-type-select',
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
                    text: 'Select a feed type'
                }, {
                    value: 'csv',
                    text: 'CSV'
                }, {
                    value: 'xml',
                    text: 'XML'
                }]
            }
        }
    }
</script>
