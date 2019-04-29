<template>
  <b-form>
    <b-form-group
            label="Model"
            label-for="modelSelect"
            :label-cols="3"
            :horizontal="true">
      <model-select id="modelSelect"></model-select>
    </b-form-group>

    <b-form-group
            label="Model synonym"
            label-for="modelSynonymInput"
            :label-cols="3"
            :horizontal="true">
      <b-form-input id="modelSynonymInput" type="text" autocomplete="name">
      </b-form-input>
    </b-form-group>
  </b-form>
</template>

<script>
    import ModelSelect from "./select/ModelSelect";

    export default {
        name: 'create-model-synonym-form',
        components: {
            ModelSelect
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