package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_968:BigInteger;
      
      private var var_2186:BigInteger;
      
      private var var_1695:BigInteger;
      
      private var var_2350:BigInteger;
      
      private var var_1366:BigInteger;
      
      private var var_1694:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1366 = param1;
         this.var_1694 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1366.toString() + ",generator: " + this.var_1694.toString() + ",secret: " + param1);
         this.var_968 = new BigInteger();
         this.var_968.fromRadix(param1,param2);
         this.var_2186 = this.var_1694.modPow(this.var_968,this.var_1366);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1695 = new BigInteger();
         this.var_1695.fromRadix(param1,param2);
         this.var_2350 = this.var_1695.modPow(this.var_968,this.var_1366);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2186.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2350.toRadix(param1);
      }
   }
}
