public class SOSLChallenges {

    public static List<List<sObject>> retrieveContactsAndLeads(){
        List<List<sObject>> conAndLeadsSearchList = [FIND 'Tom' IN NAME FIELDS RETURNING Contact(FirstName), Lead(FirstName)];
        return conAndLeadsSearchList;
    }
    
    public static List<List<sObject>> allFieldsWithAandO(){
        List<List<sObject>> withAandOList = [FIND '*a* *o*' IN ALL FIELDS RETURNING Account(Name)];
        return withAandOList;
    }
}