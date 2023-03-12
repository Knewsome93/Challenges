public class DataLord {
    public static Integer NumAccount(){
        List<Account> MyAccounts = [SELECT ID FROM ACCOUNT];
        System.debug(myAccounts.size());
        return myAccounts.size();
    }
    
    public static Integer NumHot(){
        List<Account> HotAcc = [SELECT Rating FROM Account WHERE Rating = 'Hot'];
        System.debug(HotAcc.size());
        return HotAcc.size();
    }
    
    public static Integer NumComplex(){
        List<Account> NameList = [SELECT Name FROM Account WHERE Name LIKE '%&%'];
        System.debug(NameList);
        return NameList.size();
    }
    
    public static Integer BigFive(){
        List<Account> TheFive = [SELECT Name, AnnualRevenue FROM Account ORDER BY AnnualRevenue DESC LIMIT 5]; return TheFive.size();
        
       }
    
    public static Opportunity LastBigOpportunity(){
        Opportunity TheBigOne = [SELECT Name, CloseDate, Amount FROM Opportunity WHERE Amount > 100000 ORDER BY CloseDate DESC LIMIT 1];
        System.debug(TheBigOne);
        return TheBigOne;
    }
    
    public static List<Contact> MajorPlayers(){
        List<Contact> MJ = [SELECT NAME,Account.Name FROM Contact WHERE Account.Rating = 'Hot'];
        System.debug(MJ);
        return MJ;
    }
    
    public static void MostPopularAccount(){
        Account BigOne = [SELECT NAME,(SELECT Name FROM Contacts) FROM Account LIMIT 1];
        System.debug(BigOne);
    }
}