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
        name: 'multiple-model-select',
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
                        text: 'Select some models',
                        value: null
                    },
                    {
                        text: 'air max 1',
                        value: 'Air max 1'
                    },
                    {
                        text: '997',
                        value: '997'
                    }
                ]
            }
        }
    }
</script>