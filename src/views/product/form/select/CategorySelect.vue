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
        name: 'category-select',
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
                        text: 'Select a category'
                    },
                    {
                        value: 'all',
                        text: 'All'
                    },
                    {
                        value: 'on sale only',
                        text: 'On sale only'
                    }
                ]
            }
        }
    }
</script>
