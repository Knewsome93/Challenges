trigger Challenge1And3 on Account (before insert,before update, before delete, after insert, after update, after delete, after undelete) {
    
    switch on Trigger.OperationType{
        when BEFORE_INSERT{}
        when BEFORE_UPDATE{}
        when BEFORE_DELETE{
            //Challenge 1
            ChallengeHelper.PreventAccDelete(Trigger.old);
        }
        when AFTER_INSERT{
            //Challenge 3
            ChallengeHelper.AddRelatedContact(Trigger.new);
        }
        when AFTER_UPDATE{}
        when AFTER_DELETE{}
        when AFTER_UNDELETE{}
    }

}