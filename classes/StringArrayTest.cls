public class StringArrayTest {

    public static list<string> generateStringArray(integer numString){
        List<string> ls = new List<String>();
        for(integer i=0; i<numString; i++){
            ls.add('Test ' + i);
        }
        
        return ls;
    }
}