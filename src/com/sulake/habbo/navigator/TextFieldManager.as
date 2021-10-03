package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_72:ITextFieldWindow;
      
      private var var_587:Boolean;
      
      private var var_1342:String = "";
      
      private var var_1755:int;
      
      private var var_1756:Function;
      
      private var var_2440:String = "";
      
      private var var_125:IWindowContainer;
      
      private var var_2439:Boolean;
      
      private var _orgTextBackgroundColor:uint;
      
      private var var_2441:uint;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         this._navigator = param1;
         this.var_72 = param2;
         this.var_1755 = param3;
         this.var_1756 = param4;
         if(param5 != null)
         {
            this.var_587 = true;
            this.var_1342 = param5;
            this.var_72.text = param5;
         }
         Util.setProcDirectly(this.var_72,this.onInputClick);
         this.var_72.addEventListener(WindowKeyboardEvent.const_182,this.checkEnterPress);
         this.var_72.addEventListener(WindowEvent.const_100,this.checkMaxLen);
         this.var_2439 = this.var_72.textBackground;
         this._orgTextBackgroundColor = this.var_72.textBackgroundColor;
         this.var_2441 = this.var_72.textColor;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!this.isInputValid())
         {
            this.displayError(param1);
            return false;
         }
         this.restoreBackground();
         return true;
      }
      
      public function restoreBackground() : void
      {
         this.var_72.textBackground = this.var_2439;
         this.var_72.textBackgroundColor = this._orgTextBackgroundColor;
         this.var_72.textColor = this.var_2441;
      }
      
      public function displayError(param1:String) : void
      {
         this.var_72.textBackground = true;
         this.var_72.textBackgroundColor = 4294021019;
         this.var_72.textColor = 4278190080;
         if(this.var_125 == null)
         {
            this.var_125 = IWindowContainer(this._navigator.getXmlWindow("nav_error_popup"));
            this._navigator.refreshButton(this.var_125,"popup_arrow_down",true,null,0);
            IWindowContainer(this.var_72.parent).addChild(this.var_125);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_125.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         this.var_125.findChildByName("border").width = _loc2_.width + 15;
         this.var_125.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         this.var_72.getLocalPosition(_loc3_);
         this.var_125.x = _loc3_.x;
         this.var_125.y = _loc3_.y - this.var_125.height + 3;
         var _loc4_:IWindow = this.var_125.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_125.width / 2 - _loc4_.width / 2;
         this.var_125.x += (this.var_72.width - this.var_125.width) / 2;
         this.var_125.visible = true;
      }
      
      public function goBackToInitialState() : void
      {
         this.clearErrors();
         if(this.var_1342 != null)
         {
            this.var_72.text = this.var_1342;
            this.var_587 = true;
         }
         else
         {
            this.var_72.text = "";
            this.var_587 = false;
         }
      }
      
      public function getText() : String
      {
         if(this.var_587)
         {
            return this.var_2440;
         }
         return this.var_72.text;
      }
      
      public function setText(param1:String) : void
      {
         this.var_587 = false;
         this.var_72.text = param1;
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_125 != null)
         {
            this.var_125.visible = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return this.var_72;
      }
      
      private function isInputValid() : Boolean
      {
         return !this.var_587 && Util.trim(this.getText()).length > 2;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_273)
         {
            return;
         }
         if(!this.var_587)
         {
            return;
         }
         this.var_72.text = this.var_2440;
         this.var_587 = false;
         this.restoreBackground();
      }
      
      private function checkEnterPress(param1:Event) : void
      {
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = WindowKeyboardEvent(param1);
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            if(this.var_1756 != null)
            {
               this.var_1756();
            }
         }
      }
      
      private function checkMaxLen(param1:Event) : void
      {
         var _loc2_:String = this.var_72.text;
         if(_loc2_.length > this.var_1755)
         {
            this.var_72.text = _loc2_.substring(0,this.var_1755);
         }
      }
   }
}
