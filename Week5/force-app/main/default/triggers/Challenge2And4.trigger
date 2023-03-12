trigger Challenge2And4 on Contact (before insert,before update, before delete, after insert, after update, after delete, after undelete) {
    switch on Trigger.OperationType{
        when BEFORE_INSERT{}
        when BEFORE_UPDATE{}
        when BEFORE_DELETE{}
        when AFTER_INSERT{
            //Challenge 2
            ChallengeHelper.AddDefaultEmail(Trigger.new);
        }
        when AFTER_UPDATE{
            //Challenge 4
            ChallengeHelper.ContactSyncPhone(Trigger.new);
        }
        when AFTER_DELETE{}
        when AFTER_UNDELETE{}
    }  
}