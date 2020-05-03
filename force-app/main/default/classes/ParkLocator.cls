public class ParkLocator {
    public static String[] country(String s){
        ParkService.ParksImplPort ct=new ParkService.ParksImplPort();
        System.debug(ct.byCountry(s));
        return ct.byCountry(s);
    }
}