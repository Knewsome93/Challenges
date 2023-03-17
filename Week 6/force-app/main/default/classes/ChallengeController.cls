public class ChallengeController {
    
    public Account challengeAccount {get;set;} 
    public Account curracc {get; set;}
    public String greeting{get;set;}
    public Id accId;
    public String accName;
    
    public ChallengeController(){  
        //Account chosen for Challenge 4
    challengeAccount =[SELECT Name, AnnualRevenue, Rating, NumberOfEmployees FROM Account WHERE Name ='Burlington Textiles Corp of America' LIMIT 1];
    
 		//Challenge 6 code  
        PageReference currPage = ApexPages.currentPage();
        Map<String,String> parameters = currPage.getParameters();
        accId = parameters.get('id');
        Account pulledAcc=[SELECT Id,Name FROM Account WHERE id =:accID];
        accName= pulledAcc.Name;
       greeting= 'Welcome!';
    }
    //Action to change the Greeting of the page
    public void changeGreeting(){
        greeting='Welcome to the ' + accName + ' page!';
    }
    
}