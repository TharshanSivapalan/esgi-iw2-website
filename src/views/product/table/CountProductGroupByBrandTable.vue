<template>
  <c-table :table-data="items" small caption="Products by brand"></c-table>
</template>

<script>
    import {shuffleArray} from '@/shared/utils'
    import cTable from './../../table/Table.vue'

    const someData = () => shuffleArray([
        {brand: 'Nike', productCount: 442},
        {brand: 'Adidas', productCount: 320},
        {brand: 'New Balance', productCount: 124},
    ]);

    export default {
        name: 'count-product-group-by-brand-table',
        components: {cTable},
        data: () => {
            return {
                items: someData,
                itemsArray: someData(),
                fields: [
                    {key: 'brand', label: 'Brand', sortable: true},
                    {key: 'productCount', label: 'Products'},
                ]
            }
        }
    }
</script>
