<template>
  <div>
    <b-row class="mb-3">
      <b-col>
        <h1>Create an affiliation program</h1>
      </b-col>
    </b-row>
    <b-row>
      <b-col>
        <b-card>
          <program-form></program-form>

          <div slot="footer">
            <div align="right">
              <b-btn>Create</b-btn>
            </div>
          </div>
        </b-card>
      </b-col>
    </b-row>
  </div>
</template>

<script>
    import ProgramForm from "../form/ProgramForm";

    export default {
        name: 'create-program-page',
        components: {
            ProgramForm
        }
    }
</script>
