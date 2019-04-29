<template>
  <div>
    <b-row class="mb-3">
      <b-col>
        <h1>Data mapping</h1>
      </b-col>
    </b-row>

    <b-row>
      <b-col>
        <b-card>
          <map-element-to-field-form></map-element-to-field-form>

          <div slot="footer" align="right">
            <b-button type="submit" size="sm" variant="primary">
              Link
            </b-button>
          </div>
        </b-card>
      </b-col>
    </b-row>
  </div>
</template>

<script>
    import mapElementToFieldForm from '../data/form/MapElementToFieldForm';

    export default {
        name: 'data-mapping',
        components: {
            mapElementToFieldForm,
        }
    }
</script>
