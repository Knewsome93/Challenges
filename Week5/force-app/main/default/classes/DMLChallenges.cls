public class DMLChallenges {
    
    public static void spawnContacts(){
        String contactFirstName = 'Contact';
        List<Contact> spawnedContacts = new List<Contact>();
        for(Integer i=1; i<=200; i++){
            spawnedContacts.add(new Contact(FirstName = contactFirstName, LastName= 'Number '+ i));
            }
        insert spawnedContacts;
    }
    
    public static void createHomes(){
        list<Account> newHomes = new List<Account>();
        for(Integer i = 1; i<=3; i++){
            newHomes.add(new Account(Name='Home ' + i));
        }
        insert newHomes;
    }
    
    public static void Relocate(){
        List<Contact> contactsToRelocate = [SELECT Name, CreatedDate FROM Contact Order By CreatedDate DESC LIMIT 50];
        delete contactsToRelocate;
        
    }
    
    public static void AssignHomes(){
        List<Account> newHomes = [SELECT Id FROM Account WHERE Name Like 'Home%'];
        List<Contact> createdContacts = [SELECT Name, AccountId FROM Contact WHERE FirstName = 'Contact'];
        for(Integer i = 0; i <createdContacts.size(); i++){
            ID accid = newHomes[math.round(math.random()*(newHomes.size()-1))].Id;
            createdContacts[i].AccountId= accid;
        }
        update createdContacts;
      }
}