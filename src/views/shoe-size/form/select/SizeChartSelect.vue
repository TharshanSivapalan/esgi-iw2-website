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
        name: 'size-chart-select',
        components: {},
        selected: null,
        data() {
            return {
                show: true,
                id: null,
                selected: null,
                options: [{
                    value: null,
                    text: 'Select a size chart'
                }, {
                    value: 'uk',
                    text: 'UK'
                }, {
                    value: 'us',
                    text: 'US'
                }, {
                    value: 'eu',
                    text: 'EU'
                }]
            }
        }
    }
</script>
