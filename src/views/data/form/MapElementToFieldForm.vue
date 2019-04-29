<template>
  <b-form>
    <data-select
            v-for="field in fields"
            v-bind:key="field.id"
            v-bind:id="field.id"
            v-bind:label="field.label"
            v-bind:options="options"
    ></data-select>
  </b-form>
</template>

<script>
    import DataSelect from "./select/DataSelect";

    export default {
        name: 'map-element-to-field-form',
        components: {
            DataSelect
        },
        data() {
            return {
                show: true,
                selected: null,
                fields: [
                    {
                        label: 'Category',
                        id: 'category'
                    },
                    {
                        label: 'Seller Id',
                        id: 'sellerId'
                    },
                    {
                        label: 'MNP',
                        id: 'mnp'
                    },
                    {
                        label: 'Brand',
                        id: 'brand'
                    },
                    {
                        label: 'Product Name',
                        id: 'productName'
                    },
                    {
                        label: 'Price',
                        id: 'price'
                    },
                    {
                        label: 'Old price',
                        id: 'oldPrice'
                    },
                    {
                        label: 'Product URL 1',
                        id: 'productUrl1'
                    },
                    {
                        label: 'Product URL 2',
                        id: 'productUrl2'
                    },
                    {
                        label: 'Product URL 3',
                        id: 'productUrl3'
                    },
                    {
                        label: 'Color',
                        id: 'color'
                    },
                    {
                        label: 'Gender',
                        id: 'gender'
                    },
                    {
                        label: 'Size',
                        id: 'size'
                    },
                    {
                        label: 'Stock level',
                        id: 'stockLevel'
                    }
                ],
                options: [
                    {value: null, text: 'Please select an option'},
                    {value: 'a', text: 'This is First option'},
                    {value: 'b', text: 'Selected Option'},
                    {value: {C: '3PO'}, text: 'This is an option with object value'},
                    {value: 'd', text: 'This one is disabled', disabled: true}
                ]
            }
        },
        methods: {
            click() {
                console.log(this.data().selected);
            }
        }
    }
</script>

