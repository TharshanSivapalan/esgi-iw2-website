<template>
  <div>
    <b-row class="mb-3">
      <b-col>
        <h1>Matching Model</h1>
      </b-col>
    </b-row>

    <b-row class="mb-3">
      <b-col>
        <b-card>
          <div slot="header">
            <strong>Model List</strong>
          </div>
          <model-table></model-table>
        </b-card>
      </b-col>
    </b-row>

    <b-row class="mb-3">
      <b-col sm="12" md="6">
        <b-card>
          <div slot="header">
            <strong>Add a model</strong>
          </div>

          <create-model-form></create-model-form>

          <div slot="footer">
            <div align="right">
              <b-btn>Add</b-btn>
            </div>
          </div>
        </b-card>
      </b-col>

      <b-col sm="12" md="6">
        <b-card>
          <div slot="header">
            <strong>Add a model synonym</strong>
          </div>

          <create-model-synonym-form></create-model-synonym-form>

          <div slot="footer">
            <div align="right">
              <b-btn>Add</b-btn>
            </div>
          </div>
        </b-card>
      </b-col>
    </b-row>
  </div>
</template>

<script>
    import ModelTable from "../product/table/ModelTable";
    import CreateModelForm from "../product/form/CreateModelForm";
    import CreateModelSynonymForm from "../product/form/CreateModelSynonymForm";

    export default {
        name: 'matching-model',
        components: {
            CreateModelForm,
            ModelTable,
            CreateModelSynonymForm
        }
    }
</script>
