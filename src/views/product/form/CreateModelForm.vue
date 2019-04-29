<template>
  <b-form>
    <b-form-group
            label="Brand"
            label-for="brandSelect"
            :label-cols="3"
            :horizontal="true">
      <brand-select id="brandSelect"></brand-select>
    </b-form-group>

    <b-form-group
            label="Model name"
            label-for="modelNameInput"
            :label-cols="3"
            :horizontal="true">
      <b-form-input id="modelNameInput" type="text" autocomplete="name">
      </b-form-input>
    </b-form-group>

    <b-form-group
            label="Model Picture"
            label-for="modelPictureInput"
            :label-cols="3"
            :horizontal="true">
      <b-form-file id="modelPictureInput" :plain="true"></b-form-file>
    </b-form-group>
  </b-form>
</template>

<script>
    import BrandSelect from "./select/BrandSelect";

    export default {
        name: 'create-model-form',
        components: {
            BrandSelect
        },
        data() {
            return {
                selected: [],
                show: true
            }
        },
        methods: {
            click() {
                // do nothing
            }
        }
    }
</script>