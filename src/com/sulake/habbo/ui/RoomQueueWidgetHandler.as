package com.sulake.habbo.ui
{
   import com.sulake.habbo.catalog.enum.CatalogPageName;
   import com.sulake.habbo.session.events.RoomSessionQueueEvent;
   import com.sulake.habbo.widget.RoomWidgetEnum;
   import com.sulake.habbo.widget.events.RoomWidgetRoomQueueUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomQueueMessage;
   import flash.events.Event;
   
   public class RoomQueueWidgetHandler implements IRoomWidgetHandler
   {
       
      
      private var var_782:Boolean = false;
      
      private var _container:IRoomWidgetHandlerContainer = null;
      
      public function RoomQueueWidgetHandler()
      {
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this.var_782;
      }
      
      public function get type() : String
      {
         return RoomWidgetEnum.const_400;
      }
      
      public function set container(param1:IRoomWidgetHandlerContainer) : void
      {
         this._container = param1;
      }
      
      public function dispose() : void
      {
         this.var_782 = true;
         this._container = null;
      }
      
      public function getWidgetMessages() : Array
      {
         var _loc1_:* = [];
         _loc1_.push(RoomWidgetRoomQueueMessage.const_709);
         _loc1_.push(RoomWidgetRoomQueueMessage.CHANGE_TO_SPECTATOR_QUEUE);
         _loc1_.push(RoomWidgetRoomQueueMessage.const_811);
         _loc1_.push(RoomWidgetRoomQueueMessage.const_871);
         return _loc1_;
      }
      
      public function processWidgetMessage(param1:RoomWidgetMessage) : RoomWidgetUpdateEvent
      {
         if(this._container == null || this._container.roomSession == null)
         {
            return null;
         }
         var _loc2_:RoomWidgetRoomQueueMessage = param1 as RoomWidgetRoomQueueMessage;
         if(_loc2_ == null)
         {
            return null;
         }
         switch(param1.type)
         {
            case RoomWidgetRoomQueueMessage.const_709:
               this._container.roomSession.method_13();
               break;
            case RoomWidgetRoomQueueMessage.CHANGE_TO_SPECTATOR_QUEUE:
               this._container.roomSession.changeQueue(RoomSessionQueueEvent.const_1108);
               break;
            case RoomWidgetRoomQueueMessage.const_811:
               this._container.roomSession.changeQueue(RoomSessionQueueEvent.const_1080);
               break;
            case RoomWidgetRoomQueueMessage.const_871:
               if(this._container.catalog != null)
               {
                  this._container.catalog.openCatalogPage(CatalogPageName.const_191,true);
               }
         }
         return null;
      }
      
      public function getProcessedEvents() : Array
      {
         return [RoomSessionQueueEvent.const_511];
      }
      
      public function processEvent(param1:Event) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:* = false;
         var _loc7_:* = null;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         var _loc10_:* = null;
         if(this._container == null || this._container.events == null)
         {
            return;
         }
         switch(param1.type)
         {
            case RoomSessionQueueEvent.const_511:
               _loc2_ = param1 as RoomSessionQueueEvent;
               if(_loc2_ == null)
               {
                  return;
               }
               switch(_loc2_.queueSetTarget)
               {
                  case RoomSessionQueueEvent.const_1080:
                     _loc3_ = "null";
                     break;
                  case RoomSessionQueueEvent.const_1108:
                     _loc3_ = "null";
               }
               if(_loc3_ == null)
               {
                  return;
               }
               _loc4_ = this._container.sessionDataManager.hasUserRight("fuse_room_queue_default");
               _loc5_ = this._container.sessionDataManager.hasUserRight("fuse_room_queue_club");
               _loc6_ = true;
               if(this._container.inventory != null)
               {
                  _loc6_ = this._container.inventory.clubDays > 0;
               }
               _loc7_ = _loc2_.queueTypes;
               _loc9_ = false;
               if(_loc7_.length > 1)
               {
                  if(_loc6_ && _loc2_.queueTypes.indexOf(RoomSessionQueueEvent.const_1092) != -1)
                  {
                     _loc8_ = _loc2_.getQueueSize(RoomSessionQueueEvent.const_1092) + 1;
                     _loc9_ = true;
                  }
                  else
                  {
                     _loc8_ = _loc2_.getQueueSize(RoomSessionQueueEvent.const_1413) + 1;
                  }
               }
               else
               {
                  _loc8_ = _loc2_.getQueueSize(_loc7_[0]) + 1;
               }
               _loc10_ = new RoomWidgetRoomQueueUpdateEvent(_loc3_,_loc8_,_loc6_,_loc2_.isActive,_loc9_);
               this._container.events.dispatchEvent(_loc10_);
               break;
         }
      }
      
      public function update() : void
      {
      }
   }
}
