<template>
  <b-form>
    <b-form-group
            label="Seller"
            label-for="sellerSelect"
            :label-cols="3"
            :horizontal="true">
      <seller-select id="sellerSelect"></seller-select>
    </b-form-group>

    <b-form-group
            label="Internal Program Name"
            label-for="internalProgramNameInput"
            :label-cols="3"
            :horizontal="true">
      <b-form-input id="internalProgramNameInput" type="text" autocomplete="name"></b-form-input>
    </b-form-group>

    <b-form-group
            label="Product Feed Type"
            label-for="selectFeedTypeField"
            :label-cols="3"
            :horizontal="true">
      <feed-type-select id="selectFeedTypeField"></feed-type-select>
    </b-form-group>

    <b-form-group
            label="Delimiter"
            label-for="selectDelimiterField"
            :label-cols="3"
            :horizontal="true">
      <delimiter-select id="selectDelimiterField"></delimiter-select>
    </b-form-group>

    <b-form-group
            label="Qualifier"
            label-for="selectQualifierField"
            :label-cols="3"
            :horizontal="true">
      <qualifier-select id="selectQualifierField"></qualifier-select>
    </b-form-group>

    <b-form-group
            label="Single Product On Multiple Line"
            label-for="singleProductOnMultipleLineInput"
            :label-cols="3"
            :horizontal="true">
      <b-form-checkbox-group id="singleProductOnMultipleLineInput">
        <div class="custom-control custom-checkbox custom-control-inline">
          <input type="checkbox" class="custom-control-input" id="singleProductOnMultipleLineInputCheck" value="1">
          <label class="custom-control-label" for="singleProductOnMultipleLineInputCheck">yes</label>
        </div>
      </b-form-checkbox-group>
    </b-form-group>

    <b-form-group
            label="Size Delimiter"
            label-for="selectSizeDelimiterField"
            :label-cols="3"
            :horizontal="true">
      <size-delimiter-select id="selectSizeDelimiterField"></size-delimiter-select>
    </b-form-group>

    <b-form-group
            label="Multiple color in one field"
            label-for="multipleColorInOneFieldInput"
            :label-cols="3"
            :horizontal="true">
      <b-form-checkbox-group id="multipleColorInOneFieldInput">
        <div class="custom-control custom-checkbox custom-control-inline">
          <input type="checkbox" class="custom-control-input" id="multipleColorInOneFieldInputCheck" value="1">
          <label class="custom-control-label" for="multipleColorInOneFieldInputCheck">yes</label>
        </div>
      </b-form-checkbox-group>
    </b-form-group>

    <b-form-group
            label="Color Delimiter"
            label-for="selectColorDelimiterField"
            :label-cols="3"
            :horizontal="true">
      <color-delimiter-select id="selectColorDelimiterField"></color-delimiter-select>
    </b-form-group>

    <b-form-group
            label="Feed Size Chart"
            label-for="selectSizeChartField"
            :label-cols="3"
            :horizontal="true">
      <size-chart-select id="selectSizeChartField"></size-chart-select>
    </b-form-group>

    <b-form-group
            label="Feed URL"
            label-for="feedUrlInput"
            :label-cols="3"
            :horizontal="true">
      <b-form-input id="feedUrlInput" type="text" autocomplete="name"></b-form-input>
    </b-form-group>

    <b-form-group
            label="Deep Link"
            label-for="deepLinkInput"
            :label-cols="3"
            :horizontal="true">
      <b-form-checkbox-group id="deepLinkInput">
        <div class="custom-control custom-checkbox custom-control-inline">
          <input type="checkbox" class="custom-control-input" id="deepLinkInputCheck" value="1">
          <label class="custom-control-label" for="deepLinkInputCheck">yes</label>
        </div>
      </b-form-checkbox-group>
    </b-form-group>

    <b-form-group
            label="Deep Link URL"
            label-for="deepLinkUrl"
            :label-cols="3"
            :horizontal="true">
      <b-form-input id="deepLinkUrl" type="text" autocomplete="name"></b-form-input>
    </b-form-group>
  </b-form>
</template>

<script>
    import SellerSelect from "../../product/form/select/SellerSelect";
    import FeedTypeSelect from "../../data/form/select/FeedTypeSelect";
    import DelimiterSelect from "../../data/form/select/DelimiterSelect";
    import QualifierSelect from "../../data/form/select/QualifierSelect";
    import SizeDelimiterSelect from "../../data/form/select/SizeDelimiterSelect";
    import ColorDelimiterSelect from "../../data/form/select/ColorDelimiterSelect";
    import SizeChartSelect from "../../shoe-size/form/select/SizeChartSelect";

    export default {
        name: 'program-form',
        components: {
            SellerSelect,
            FeedTypeSelect,
            DelimiterSelect,
            QualifierSelect,
            SizeDelimiterSelect,
            ColorDelimiterSelect,
            SizeChartSelect
        },
        data () {
            return {
                selected: [],
                show: true
            }
        },
        methods: {
            click () {

            }
        }
    }
</script>