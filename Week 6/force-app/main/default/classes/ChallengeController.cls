public class ChallengeController {
    
    public Account challengeAccount {get;set;} 
    
    public ChallengeController(){  
    challengeAccount =[SELECT Name, AnnualRevenue, Rating, NumberOfEmployees FROM Account WHERE Name ='Burlington Textiles Corp of America' LIMIT 1];
    }
}