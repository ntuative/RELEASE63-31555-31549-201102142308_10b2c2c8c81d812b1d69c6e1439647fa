package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1756:int = 0;
      
      public static const const_1466:int = 1;
      
      public static const const_1500:int = 2;
      
      public static const const_1730:int = 3;
      
      public static const const_1830:int = 4;
      
      public static const const_1771:int = 5;
      
      public static const const_1596:int = 10;
      
      public static const const_1896:int = 11;
      
      public static const const_1739:int = 12;
      
      public static const const_1822:int = 13;
      
      public static const const_1710:int = 16;
      
      public static const const_1727:int = 17;
      
      public static const const_1725:int = 18;
      
      public static const const_1877:int = 19;
      
      public static const const_1888:int = 20;
      
      public static const const_1726:int = 22;
      
      public static const const_1723:int = 23;
      
      public static const const_1919:int = 24;
      
      public static const const_1889:int = 25;
      
      public static const const_1858:int = 26;
      
      public static const const_1770:int = 27;
      
      public static const const_1912:int = 28;
      
      public static const const_1722:int = 29;
      
      public static const const_1921:int = 100;
      
      public static const const_1928:int = 101;
      
      public static const const_1781:int = 102;
      
      public static const const_1716:int = 103;
      
      public static const const_1825:int = 104;
      
      public static const const_1754:int = 105;
      
      public static const const_1892:int = 106;
      
      public static const const_1869:int = 107;
      
      public static const const_1838:int = 108;
      
      public static const const_1835:int = 109;
      
      public static const const_1783:int = 110;
      
      public static const const_1816:int = 111;
      
      public static const const_1927:int = 112;
      
      public static const const_1796:int = 113;
      
      public static const const_1828:int = 114;
      
      public static const const_1873:int = 115;
      
      public static const const_1793:int = 116;
      
      public static const const_1839:int = 117;
      
      public static const const_1801:int = 118;
      
      public static const const_1923:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1466:
            case const_1596:
               return "banned";
            case const_1500:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
