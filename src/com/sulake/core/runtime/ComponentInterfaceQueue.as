package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1616:IID;
      
      private var var_782:Boolean;
      
      private var var_1070:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1616 = param1;
         this.var_1070 = new Array();
         this.var_782 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1616;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_782;
      }
      
      public function get receivers() : Array
      {
         return this.var_1070;
      }
      
      public function dispose() : void
      {
         if(!this.var_782)
         {
            this.var_782 = true;
            this.var_1616 = null;
            while(this.var_1070.length > 0)
            {
               this.var_1070.pop();
            }
            this.var_1070 = null;
         }
      }
   }
}
