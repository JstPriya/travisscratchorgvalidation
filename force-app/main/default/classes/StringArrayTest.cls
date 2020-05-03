public class StringArrayTest {
    private static List<String> array1;
    public static List<String> generateStringArray(Integer n){
        array1=new List<String>();
        for(Integer i=0;i<n;i++)
            array1.add('Test '+i);
        return array1;
    }
}