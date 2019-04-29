<template>
  <v-client-table :columns="columns" :data="data" :options="options" :theme="theme" id="modelTable">
    <img height="50px" slot="picture" slot-scope="props" :src="props.row.picture"/>
  </v-client-table>
</template>

<script>
    import Vue from 'vue'
    import {ClientTable, Event} from 'vue-tables-2'

    Vue.use(ClientTable);

    export default {
        name: 'model-table',
        components: {
            ClientTable,
            Event
        },
        data: function () {
            return {
                columns: [
                    'modelId',
                    'brand',
                    'productName',
                    'sellerName',
                    'picture'
                ],
                data: [{
                    modelId: 'Air Max 1',
                    brand: 'Nike',
                    productName: 'Air Max 1 - 200',
                    sellerName: 'Nike',
                    picture: 'img/brand/logo.svg'
                }, {
                    modelId: 'Stan Smith',
                    brand: 'Adidas',
                    productName: 'Stan smith- 200',
                    sellerName: 'Adidas',
                    picture: 'img/brand/logo.svg'
                }],
                options: {
                    headings: {
                        modelId: 'Model Id',
                        brand: 'Brand',
                        productName: 'Product Name',
                        sellerName: 'Seller name',
                        picture: 'Picture'
                    },
                    sortable: [],
                    filterable: [
                        'modelId',
                        'brand',
                        'productName',
                        'sellerName',
                        'picture'
                    ],
                    sortIcon: {
                        base: 'fa',
                        up: 'fa-sort-asc',
                        down: 'fa-sort-desc',
                        is: 'fa-sort'
                    },
                    pagination: {
                        chunk: 5,
                        edge: false,
                        nav: 'scroll'
                    }
                },
                useVuex: true,
                theme: 'bootstrap4',
                template: 'default'
            }
        }
    };
</script>

<style lang="scss">
  #modelTable {
    .VuePagination {
      text-align: center;
      justify-content: center;
    }

    .VueTables__search {
      float: right;
    }

    .VueTables__search-field label {
      display: none
    }
  }
</style>
