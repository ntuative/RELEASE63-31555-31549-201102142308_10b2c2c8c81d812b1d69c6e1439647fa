package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1587:String = "pricing_model_unknown";
      
      public static const const_471:String = "pricing_model_single";
      
      public static const const_555:String = "pricing_model_multi";
      
      public static const const_464:String = "pricing_model_bundle";
      
      public static const const_1411:String = "price_type_none";
      
      public static const const_878:String = "price_type_credits";
      
      public static const const_984:String = "price_type_activitypoints";
      
      public static const const_1174:String = "price_type_credits_and_activitypoints";
       
      
      private var var_716:String;
      
      private var var_1101:String;
      
      private var _offerId:int;
      
      private var var_1662:String;
      
      private var var_1099:int;
      
      private var var_1100:int;
      
      private var var_1661:int;
      
      private var var_433:ICatalogPage;
      
      private var var_715:IProductContainer;
      
      private var var_2253:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1662 = param1.localizationId;
         this.var_1099 = param1.priceInCredits;
         this.var_1100 = param1.priceInActivityPoints;
         this.var_1661 = param1.activityPointType;
         this.var_433 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_433;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1662;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1099;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1100;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1661;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_715;
      }
      
      public function get pricingModel() : String
      {
         return this.var_716;
      }
      
      public function get priceType() : String
      {
         return this.var_1101;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2253;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2253 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1662 = "";
         this.var_1099 = 0;
         this.var_1100 = 0;
         this.var_1661 = 0;
         this.var_433 = null;
         if(this.var_715 != null)
         {
            this.var_715.dispose();
            this.var_715 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_716)
         {
            case const_471:
               this.var_715 = new SingleProductContainer(this,param1);
               break;
            case const_555:
               this.var_715 = new MultiProductContainer(this,param1);
               break;
            case const_464:
               this.var_715 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_716);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_716 = const_471;
            }
            else
            {
               this.var_716 = const_555;
            }
         }
         else if(param1.length > 1)
         {
            this.var_716 = const_464;
         }
         else
         {
            this.var_716 = const_1587;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1099 > 0 && this.var_1100 > 0)
         {
            this.var_1101 = const_1174;
         }
         else if(this.var_1099 > 0)
         {
            this.var_1101 = const_878;
         }
         else if(this.var_1100 > 0)
         {
            this.var_1101 = const_984;
         }
         else
         {
            this.var_1101 = const_1411;
         }
      }
   }
}
