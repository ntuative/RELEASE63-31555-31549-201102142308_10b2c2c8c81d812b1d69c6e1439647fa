package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_727:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_782)
         {
            _structure = null;
            _assets = null;
            var_244 = null;
            var_269 = null;
            var_568 = null;
            var_530 = null;
            var_313 = null;
            if(!var_1229 && var_43)
            {
               var_43.dispose();
            }
            var_43 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_724 = null;
            var_782 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_727[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_727[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_343:
               switch(_loc3_)
               {
                  case AvatarAction.const_864:
                  case AvatarAction.const_431:
                  case AvatarAction.const_403:
                  case AvatarAction.const_838:
                  case AvatarAction.const_368:
                  case AvatarAction.const_850:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_298:
            case AvatarAction.const_649:
            case AvatarAction.const_261:
            case AvatarAction.const_681:
            case AvatarAction.const_755:
            case AvatarAction.const_800:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
