<template>
  <c-table :table-data="items" small caption="Products by seller"></c-table>
</template>

<script>
    import {shuffleArray} from '@/shared/utils'
    import cTable from './../../table/Table.vue'

    const someData = () => shuffleArray([
        {seller: 'Nike', productCount: 442},
        {seller: 'Adidas', productCount: 320},
        {seller: 'New Balance', productCount: 124},
    ]);

    export default {
        name: 'count-product-group-by-seller-table',
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
