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
        name: 'brand-select',
        components: {},
        props: [
            'id'
        ],
        data() {
            return {
                id: null,
                show: true,
                selected: null,
                options: [
                    {
                        value: null,
                        text: 'Select a brand'
                    },
                    {
                        value: 'nike',
                        text: 'Nike'
                    },
                    {
                        value: 'adidas',
                        text: 'Adidas'
                    },
                    {
                        value: 'new balance',
                        text: 'New Balance'
                    }
                ]
            }
        }
    }
</script>
