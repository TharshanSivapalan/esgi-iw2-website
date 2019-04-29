<template>
  <b-form>
    <b-form-group
            label="Brand"
            label-for="sellerSelect"
            :label-cols="3"
            :horizontal="true">
      <seller-select id="sellerSelect"></seller-select>
    </b-form-group>

    <b-form-group
            label="Offer name"
            label-for="offerNameInput"
            :label-cols="3"
            :horizontal="true">
      <b-form-input id="offerNameInput" type="text" autocomplete="name"></b-form-input>
    </b-form-group>

    <b-row>
      <b-col>
        <b-form-group
                label="Start Date"
                label-for="startDateInput"
                :label-cols="4"
                :horizontal="true">
          <b-form-input type="date" id="startDateInput"></b-form-input>
        </b-form-group>
      </b-col>

      <b-col>
        <b-form-group
                label="End Date"
                label-for="endDateInput"
                :label-cols="4"
                :horizontal="true">
          <b-form-input type="date" id="endDateInput"></b-form-input>
        </b-form-group>
      </b-col>
    </b-row>

    <b-form-group
            label="Has Coupon Code"
            label-for="hasCouponCodeInput"
            :label-cols="3"
            :horizontal="true">
      <b-form-checkbox-group id="hasCouponCodeInput">
        <div class="custom-control custom-checkbox custom-control-inline">
          <input type="checkbox" class="custom-control-input" id="couponCodeInputCheck" value="1">
          <label class="custom-control-label" for="couponCodeInputCheck">yes</label>
        </div>
      </b-form-checkbox-group>
    </b-form-group>

    <b-form-group
            label="Coupon Code"
            label-for="couponCodeInput"
            :label-cols="3"
            :horizontal="true">
      <b-form-input id="couponCodeInput" type="text" autocomplete="name"></b-form-input>
    </b-form-group>

    <b-form-group
            label="Coupon Type"
            label-for="couponTypeSelect"
            :label-cols="3"
            :horizontal="true">
      <coupon-type-select id="couponTypeSelect"></coupon-type-select>
    </b-form-group>

    <b-form-group
            label="Coupon Value"
            label-for="couponValueInput"
            :label-cols="3"
            :horizontal="true">
      <b-form-input id="couponValueInput" type="text" autocomplete="name"></b-form-input>
    </b-form-group>

    <b-row>
      <b-col>
        <b-form-group
                label="Product range"
                label-for="categorySelect"
                :label-cols="4"
                :horizontal="true">
          <category-select id="categorySelect"></category-select>
        </b-form-group>
      </b-col>
      <b-col>
        <b-form-group
                label="Brand range"
                label-for="brandSelect"
                :label-cols="4"
                :horizontal="true">
          <brand-select id="brandSelect"></brand-select>
        </b-form-group>
      </b-col>
      <b-col>
        <b-form-group
                label="Model range"
                label-for="modelSelect"
                :label-cols="4"
                :horizontal="true">
          <model-select id="modelSelect"></model-select>
        </b-form-group>
      </b-col>
    </b-row>
    <b-form-group
            label="FR Description"
            label-for="frDescriptionInput"
            :horizontal="false">
      <!--      <b-form-input id="frDescriptionInput" type="text" autocomplete="name"></b-form-input>-->
      <quill-editor :content="descriptionFr"></quill-editor>
    </b-form-group>

    <b-form-group
            label="EN Description"
            label-for="enDescriptionInput"
            :horizontal="false">
      <!--      <b-form-input id="enDescriptionInput" type="text" autocomplete="name"></b-form-input>-->
      <quill-editor :content="descriptionEn"></quill-editor>
    </b-form-group>
  </b-form>
</template>

<script>
    import Vue from 'vue'
    import VueQuillEditor from 'vue-quill-editor'
    import SellerSelect from "./select/SellerSelect";
    import CouponTypeSelect from "./select/CouponTypeSelect";
    import CategorySelect from "./select/CategorySelect";
    import BrandSelect from "./select/BrandSelect";
    import ModelSelect from "./select/ModelSelect";
    // require styles
    import 'quill/dist/quill.core.css'
    import 'quill/dist/quill.snow.css'
    import 'quill/dist/quill.bubble.css'

    // mount with global
    Vue.use(VueQuillEditor);

    export default {
        name: 'create-special-offer-form',
        components: {
            SellerSelect,
            CouponTypeSelect,
            CategorySelect,
            BrandSelect,
            ModelSelect,
        },
        data() {
            return {
                descriptionFr: null,
                descriptionEn: null,
                selected: [],
                show: true,
            }
        },
        methods: {
            click() {
                // do nothing
            }
        }
    }
</script>

