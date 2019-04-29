<template>
  <v-client-table
          :columns="columns"
          :data="data"
          :options="options"
          :theme="theme"
          id="list"
  >
    <div slot="action" slot-scope="props">
      <b-btn variant="warning">Force import</b-btn>
      <b-btn variant="primary">Edit</b-btn>
      <b-btn variant="danger">Delete</b-btn>
    </div>
  </v-client-table>
</template>

<script>
    import Vue from 'vue'
    import {ClientTable, Event} from 'vue-tables-2'

    Vue.use(ClientTable);

    export default {
        name: 'program-to-init-table',
        components: {
            ClientTable,
            Event
        },
        data: function () {
            return {
                columns: [
                    'id',
                    'internalName',
                    'sellerName',
                    'platformName',
                    'feedType',
                    'lastImportDate',
                    'action',
                ],
                data: [{
                    id: '1',
                    internalName: 'Asphalt gold',
                    sellerName: 'Alphatgold',
                    platformName: 'Webgains',
                    feedType: 'CSV',
                    lastImportDate: '12/05/2019',
                    action: ''
                }],
                options: {
                    headings: {
                        id: 'Program Id',
                        internalName: 'Internal Name',
                        sellerName: 'Seller',
                        platformName: 'Platform Name',
                        feedType: 'Feed Type',
                        lastImportDate: 'Last Import Date',
                        action: 'action'
                    },
                    sortable: [],
                    filterable: [],
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
  #list {
    .VuePagination {
      text-align: center;
      justify-content: center;
    }

    .VueTables__search-field {
      display: flex;
    }

    .VueTables__search-field input {
      margin-left: 0.25rem;
    }
  }
</style>
