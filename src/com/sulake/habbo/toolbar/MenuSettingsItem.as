package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2078:String;
      
      private var var_2077:Array;
      
      private var var_2076:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2078 = param1;
         this.var_2077 = param2;
         this.var_2076 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2078;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2077;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2076;
      }
   }
}
