package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2580:int;
      
      private var var_2579:int;
      
      private var var_2578:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2580 = param1;
         this.var_2579 = param2;
         this.var_2578 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2580,this.var_2579,this.var_2578];
      }
      
      public function dispose() : void
      {
      }
   }
}
