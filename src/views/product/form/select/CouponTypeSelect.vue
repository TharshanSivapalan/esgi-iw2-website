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
        name: 'coupon-type-select',
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
                    text: 'Select a coupon type'
                }, {
                    value: '???',
                    text: '???'
                }]
            }
        }
    }
</script>
