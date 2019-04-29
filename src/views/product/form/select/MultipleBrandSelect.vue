<template>
  <b-form-select
          :id="id"
          :plain="true"
          :multiple="true"
          :options="options"
          :value="value">
  </b-form-select>
</template>

<script>
    export default {
        name: 'multiple-brand-select',
        components: {},
        props: [
            'id'
        ],
        data() {
            return {
                id: null,
                show: true,
                selected: null,
                value: [
                  null
                ],
                options: [
                    {
                        text: 'Select some brands',
                        value: null
                    },
                    {
                        text: 'adidas',
                        value: 'Adidas'
                    },
                    {
                        text: 'new balance',
                        value: 'New Balance'
                    }
                ]
            }
        }
    }
</script>