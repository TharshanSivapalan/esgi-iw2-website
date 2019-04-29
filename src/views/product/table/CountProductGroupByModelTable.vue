<template>
  <c-table :table-data="items" small caption="Products by model"></c-table>
</template>

<script>
    import {shuffleArray} from '@/shared/utils'
    import cTable from './../../table/Table.vue'

    const someData = () => shuffleArray([
        {model: 'Nike', productCount: 442},
        {model: 'Adidas', productCount: 320},
        {model: 'New Balance', productCount: 124},
    ]);

    export default {
        name: 'count-product-group-by-model-table',
        components: {cTable},
        data: () => {
            return {
                items: someData,
                itemsArray: someData(),
                fields: [
                    {key: 'model', label: 'Model', sortable: true},
                    {key: 'productCount', label: 'Products'},
                ]
            }
        }
    }
</script>
