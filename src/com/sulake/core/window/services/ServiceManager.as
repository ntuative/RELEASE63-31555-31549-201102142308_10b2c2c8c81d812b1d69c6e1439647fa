package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2757:uint;
      
      private var var_138:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var _windowContext:IWindowContext;
      
      private var var_1064:IMouseDraggingService;
      
      private var var_1065:IMouseScalingService;
      
      private var var_1063:IMouseListenerService;
      
      private var var_1066:IFocusManagerService;
      
      private var var_1068:IToolTipAgentService;
      
      private var var_1067:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2757 = 0;
         this.var_138 = param2;
         this._windowContext = param1;
         this.var_1064 = new WindowMouseDragger(param2);
         this.var_1065 = new WindowMouseScaler(param2);
         this.var_1063 = new WindowMouseListener(param2);
         this.var_1066 = new FocusManager(param2);
         this.var_1068 = new WindowToolTipAgent(param2);
         this.var_1067 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1064 != null)
         {
            this.var_1064.dispose();
            this.var_1064 = null;
         }
         if(this.var_1065 != null)
         {
            this.var_1065.dispose();
            this.var_1065 = null;
         }
         if(this.var_1063 != null)
         {
            this.var_1063.dispose();
            this.var_1063 = null;
         }
         if(this.var_1066 != null)
         {
            this.var_1066.dispose();
            this.var_1066 = null;
         }
         if(this.var_1068 != null)
         {
            this.var_1068.dispose();
            this.var_1068 = null;
         }
         if(this.var_1067 != null)
         {
            this.var_1067.dispose();
            this.var_1067 = null;
         }
         this.var_138 = null;
         this._windowContext = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1064;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1065;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1063;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1066;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1068;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1067;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
