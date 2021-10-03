package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2046:int;
      
      private var var_1600:String;
      
      private var var_2111:String;
      
      private var var_2464:Boolean;
      
      private var var_2462:Boolean;
      
      private var var_2463:int;
      
      private var var_2110:String;
      
      private var var_2465:String;
      
      private var var_1601:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2046 = param1.readInteger();
         this.var_1600 = param1.readString();
         this.var_2111 = param1.readString();
         this.var_2464 = param1.readBoolean();
         this.var_2462 = param1.readBoolean();
         param1.readString();
         this.var_2463 = param1.readInteger();
         this.var_2110 = param1.readString();
         this.var_2465 = param1.readString();
         this.var_1601 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2046;
      }
      
      public function get avatarName() : String
      {
         return this.var_1600;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2111;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2464;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2462;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2463;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2110;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2465;
      }
      
      public function get realName() : String
      {
         return this.var_1601;
      }
   }
}
