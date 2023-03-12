public class ChallengeHelper {
	//Challenge 1
    public static void PreventAccDelete(List<Account> acc){
       Map<Id,Account> AcctsWithCon = new Map<Id,Account>(
        [SELECT Id,(SELECT Id FROM Contacts) FROM Account WHERE Id IN :Trigger.old]);
        for(Account a: acc){
            if(!(AcctsWithCon.get(a.Id).Contacts.size()==0)){
                Trigger.oldMap.get(a.Id).addError('Account has Contact, Cannot Delete!');
            }
        }
    }
    //Challenge 2
    public static void AddDefaultEmail(List<Contact> con){
        for(Contact c: con){
            if(!hasEmail(c)){
                c.Email = 'WelcometoChallenges@RevPro.net';
            }
        }
    }
    
    private static Boolean hasEmail(Contact con){
        Boolean GoodEmail = !(con.Email==null);
            return GoodEmail;
    }
    //Challenge 3
    public static void AddRelatedContact(List<Account> accs){
        Map<Id,Account> accsWithContact = new Map<Id,Account>(
            [SELECT Id,(SELECT Name FROM Contacts) FROM Account WHERE Id IN :Trigger.new]);
        for(Account acc : accs){
            if(accsWithContact.get(acc.id).Contacts.size()==0){
                accsWithContact.get(acc.id).Contacts.add(new Contact(LastName='Thompson'));
            }
               
        }
    }
    //Challenge 4
    public static void ContactSyncPhone(List<Contact> cons){
        List<Account> AccountsList = new List<Account>([SELECT Id,Phone FROM Account]);
        for(Contact cont: cons){
            for(Account a: AccountsList){
                ID accid = a.Id;
                if(cont.AccountId==accid){
                    a.Phone = cont.Phone;
                }
            }
        }
    }
    
    
}