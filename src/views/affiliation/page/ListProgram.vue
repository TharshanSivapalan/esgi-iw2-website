<template>
  <div>
    <b-row class="mb-3">
      <b-col>
        <h1>List affiliation program</h1>
      </b-col>
    </b-row>
    <b-row>
      <b-col>
        <b-card>
          <program-table></program-table>
        </b-card>
      </b-col>
    </b-row>
  </div>
</template>

<script>
    import ProgramTable from "../table/ProgramTable";

    export default {
        name: 'list-program',
        components: {
            ProgramTable
        }
    }
</script>
