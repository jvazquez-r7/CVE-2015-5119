package 
{
    import flash.external.ExternalInterface

    public class Logger {
        private static const DEBUG:uint = 1
 
        public static function alert(msg:String):void
        {
            var str:String = "";

            if (DEBUG == 1)
                str += msg;
            
            if(ExternalInterface.available){
                ExternalInterface.call("alert", str);
            }
        }

        public static function log(msg:String):void
        {
            var str:String = "";

            if (DEBUG == 1)
                str += msg;
            
            if(ExternalInterface.available){
                ExternalInterface.call("console.log", str);
            }
        }
    }
}
