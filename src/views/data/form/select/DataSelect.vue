<template>
  <b-form-group
          :label="label"
          :label-for="id"
          :label-cols="3">
    <b-form-select
            :id="id"
            v-model="selected"
            :plain="true"
            :options="options"
    >
    </b-form-select>
  </b-form-group>
</template>

<script>
    export default {
        name: 'data-select',
        props: [
            'id',
            'label',
            'options'
        ],
        data() {
            return {
                show: true,
                selected: null,
                label: null,
                id: null,
                options: null
            }
        },
        methods: {}
    }
</script>

