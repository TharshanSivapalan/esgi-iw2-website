<template>
  <div>
    <b-row class="mb-3">
      <b-col>
        <h1>Create a special offer</h1>
      </b-col>
    </b-row>
    <b-row>
      <b-col>
        <b-card>
          <create-special-offer-form></create-special-offer-form>

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
    import CreateSpecialOfferForm from "../form/CreateSpecialOfferForm";

    export default {
        name: 'create-special-offer',
        components: {
            CreateSpecialOfferForm
        }
    }
</script>
