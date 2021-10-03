package com.sulake.core.utils.profiler
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import flash.utils.getQualifiedClassName;
   
   public class ProfilerAgent extends ProfilerAgentTask implements IDisposable
   {
       
      
      protected var var_1222:IUpdateReceiver;
      
      public function ProfilerAgent(param1:IUpdateReceiver)
      {
         this.var_1222 = param1;
         var _loc2_:String = getQualifiedClassName(this.var_1222);
         super(_loc2_.slice(_loc2_.lastIndexOf(":") + 1,_loc2_.length));
      }
      
      public function get receiver() : IUpdateReceiver
      {
         return this.var_1222;
      }
      
      override public function dispose() : void
      {
         this.var_1222 = null;
         super.dispose();
      }
      
      public function update(param1:int) : void
      {
         super.start();
         this.var_1222.update(param1);
         super.stop();
      }
   }
}