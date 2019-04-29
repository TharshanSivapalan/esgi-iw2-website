<template>
  <div>
    <b-row class="mb-3">
      <b-col>
        <h1>List special offer</h1>
      </b-col>
    </b-row>
    <b-row>
      <b-col>
        <b-card>
          <special-offer-table></special-offer-table>
        </b-card>
      </b-col>
    </b-row>
  </div>
</template>

<script>

    import SpecialOfferTable from "../table/SpecialOfferTable";
    export default {
        name: 'special-offer',
        components: {
            SpecialOfferTable

        }
    }
</script>
