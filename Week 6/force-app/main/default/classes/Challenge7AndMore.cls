public class Challenge7AndMore {

    public String chosenAcc{get;set;}
    public List<Account> ourAcc;
    public String Aname {get;set;}
    public Account acc{get;set;}
    
    public Challenge7AndMore(){
        ourAcc=[SELECT Name,AnnualRevenue,Rating,NumberOfEmployees FROM Account];
    }
    
    public List<SelectOption> getAccountOptions(){
        List<SelectOption> choices = new List<SelectOption>();
        for(Account acc: ourAcc){
            choices.add(new SelectOption(acc.Name,acc.Name));
        }
        return choices;
    }
    
    public void displayChosen(){
        acc=[SELECT Name,AnnualRevenue,Rating, NumberOfEmployees FROM Account WHERE Name=:chosenAcc];
    }
    
    public Account getChosenAccount(){
        acc=[SELECT Name,AnnualRevenue,Rating, NumberOfEmployees FROM Account WHERE Name=:chosenAcc];
        return acc;
    }
    
    public Boolean getAccountSelected(){
        if(!(acc==null)){
            return true;
        }
        return false;
    }
}