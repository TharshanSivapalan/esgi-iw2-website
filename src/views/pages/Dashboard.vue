<template>
  <div>
    <b-row class="mb-3">
      <b-col sm="12" md="12">
        <h1>Dashboard</h1>
      </b-col>
    </b-row>
    <b-row>
      <b-col class="d-flex align-items-stretch">
        <b-card class="text-white bg-info w-100">
          <div class="text-center mb-4">
            <div class="h5 align-center text-uppercase font-weight-bold">Products</div>
          </div>
          <div class="h4 text-center">886</div>
        </b-card>
      </b-col>
      <b-col class="d-flex align-items-stretch">
        <b-card class="text-white bg-info w-100">
          <div class="text-center mb-4">
            <div class="h5 align-center text-uppercase font-weight-bold">Brands</div>
          </div>
          <div class="h4 text-center">3</div>
        </b-card>
      </b-col>
      <b-col class="d-flex align-items-stretch">
        <b-card class="text-white bg-info w-100">
          <div class="text-center mb-4">
            <div class="h5 align-center text-uppercase font-weight-bold">Models</div>
          </div>
          <div class="h4 text-center">215</div>
        </b-card>
      </b-col>
      <b-col class="d-flex align-items-stretch">
        <b-card class="text-white bg-danger w-100">
          <div class="text-center mb-4">
            <div class="h5 align-center text-uppercase font-weight-bold">Seller without data feed</div>
          </div>
          <div class="h4 text-center">5</div>
        </b-card>
      </b-col>
      <b-col class="d-flex align-items-stretch">
        <b-card class="text-white bg-danger w-100">
          <div class="text-center mb-4">
            <div class="h5 align-center text-uppercase font-weight-bold">Seller without product</div>
          </div>
          <div class="h4 text-center">5</div>
        </b-card>
      </b-col>
    </b-row>

    <b-row>
      <b-col>
        <count-product-group-by-brand-table></count-product-group-by-brand-table>
      </b-col>

      <b-col>
        <count-product-group-by-model-table></count-product-group-by-model-table>
      </b-col>

      <b-col>
        <count-product-group-by-seller-table></count-product-group-by-seller-table>
      </b-col>
    </b-row>
  </div>
</template>

<script>
  import countProductGroupByBrandTable from '../product/table/CountProductGroupByBrandTable';
  import countProductGroupByModelTable from '../product/table/CountProductGroupByModelTable';
  import countProductGroupBySellerTable from '../product/table/CountProductGroupBySellerTable';

  export default {
    name: 'dashboard',
    components: {
      countProductGroupByBrandTable,
      countProductGroupByModelTable,
      countProductGroupBySellerTable
    }
  }
</script>
