package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2092:int = 0;
      
      private var var_1386:String = "";
      
      private var var_1734:String = "";
      
      private var var_2093:String = "";
      
      private var var_2089:String = "";
      
      private var var_1579:int = 0;
      
      private var var_2091:int = 0;
      
      private var var_2090:int = 0;
      
      private var var_1388:int = 0;
      
      private var var_2088:int = 0;
      
      private var var_1387:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2092 = param1;
         this.var_1386 = param2;
         this.var_1734 = param3;
         this.var_2093 = param4;
         this.var_2089 = param5;
         if(param6)
         {
            this.var_1579 = 1;
         }
         else
         {
            this.var_1579 = 0;
         }
         this.var_2091 = param7;
         this.var_2090 = param8;
         this.var_1388 = param9;
         this.var_2088 = param10;
         this.var_1387 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2092,this.var_1386,this.var_1734,this.var_2093,this.var_2089,this.var_1579,this.var_2091,this.var_2090,this.var_1388,this.var_2088,this.var_1387];
      }
   }
}
