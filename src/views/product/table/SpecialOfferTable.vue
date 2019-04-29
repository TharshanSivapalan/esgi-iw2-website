<template>
  <v-client-table :columns="columns" :data="data" :options="options" :theme="theme" id="specialOfferTable">
    <div slot="action" slot-scope="props">
      <a class="btn btn-primary" :href="'/product/special-offer/' + props.row.id + '/edit'">Edit</a>
      <b-btn variant="danger">Delete</b-btn>
    </div>
  </v-client-table>
</template>

<script>
    import Vue from 'vue'
    import {ClientTable, Event} from 'vue-tables-2'

    Vue.use(ClientTable);

    export default {
        name: 'special-offer-table',
        components: {
            ClientTable,
            Event
        },
        data: function () {
            return {
                columns: [
                    'id',
                    'name',
                    'sellerName',
                    'startDate',
                    'endDate',
                    'action'
                ],
                data: [{
                    id: '123',
                    name: 'Asphaltgold black friday',
                    sellerName: 'Asphaltgold',
                    startDate: '15/02/2019',
                    endDate: '10/09/2019',
                    action: null
                }],
                options: {
                    headings: {
                        id: 'Model Id',
                        name: 'Special offer name',
                        sellerName: 'Seller Name',
                        startDate: 'Start Date',
                        endDate: 'End Date',
                        action: null
                    },
                    sortable: [],
                    filterable: [
                        'id',
                        'name',
                        'sellerName',
                        'startDate',
                        'endDate'
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
  #specialOfferTable {
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
