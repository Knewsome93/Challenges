public class Challenge9Controller {
    // Account List Named accs used for Challenge 9 all others being used for Challenge 10
    public List<Account> accs{get;set;}
    public List<String> accName{get;set;}
    public String accountName{get;set;}
    public List<Account> chosenAccs{get;set;}
    public Account accountToAdd;
    
    public Challenge9Controller(){
        chosenAccs= new List<Account>();
        //accs list used for challenge 9
        accs=[SELECT Name, (SELECT Name FROM Contacts) FROM Account];
     	accName= new List<String>();
        }
    
    public List<SelectOption> getAccChoices(){
        List<SelectOption> choices = new List<SelectOption>();
        for(Account acc: accs){
            choices.add(new SelectOption(acc.Name,acc.Name));
        }
        return choices;
    }
    
    public void addChosen(){
        accName.add(accountName);
        for(String acc: accName){
            accountToAdd = [SELECT Name,(SELECT Name FROM Contacts) FROM Account WHERE Name=:acc LIMIT 1];
            chosenAccs.add(accountToAdd);
        }
    }
    
    public List<Account> getChosenAccountstoDisplay(){
        for(String acc: accName){
            accountToAdd = [SELECT Name,(SELECT Name FROM Contacts) FROM Account WHERE Name=:acc LIMIT 1];
            chosenAccs.add(accountToAdd);
        }
        return chosenAccs;
    }
    
    public Boolean getAccountAdded(){
        if(!(chosenAccs==null)){
            return true;
        }
        return false;
    }
    
    
    }