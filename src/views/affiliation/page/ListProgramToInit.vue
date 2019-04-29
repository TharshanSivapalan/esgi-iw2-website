<template>
  <div>
    <b-row class="mb-3">
      <b-col>
        <h1>List affiliation program to init</h1>
      </b-col>
    </b-row>
    <b-row>
      <b-col>
        <b-card>
          <program-to-init-table></program-to-init-table>
        </b-card>
      </b-col>
    </b-row>
  </div>
</template>

<script>
    import ProgramToInitTable from "../table/ProgramToInitTable";

    export default {
        name: 'list-program-to-init',
        components: {
            ProgramToInitTable
        }
    }
</script>
