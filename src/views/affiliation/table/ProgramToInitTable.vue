<template>
  <v-client-table
          :columns="columns"
          :data="data"
          :options="options"
          :theme="theme"
          id="list"
  >
    <a class="btn btn-primary" slot="initUrl" slot-scope="props" :href="props.row.initUrl" title="Init program">
      Init
    </a>
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
                    'programId',
                    'internalName',
                    'sellerName',
                    'platformName',
                    'feedType',
                    'initUrl'
                ],
                data: [{
                    programId: '1',
                    internalName: 'Asphalt gold',
                    sellerName: 'Alphatgold',
                    platformName: 'Webgains',
                    feedType: 'CSV',
                    initUrl: 'http://test.test'
                }],
                options: {
                    headings: {
                        programId: 'Program Id',
                        internalName: 'Internal Name',
                        sellerName: 'Seller',
                        platformName: 'Platform Name',
                        feedType: 'Feed Type',
                        initUrl: 'Init'
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
