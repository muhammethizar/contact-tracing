/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-12-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger CTPersonTrigger on Person__c (before insert, after insert, before update, after update, before delete, after delete, after undelete) {

    switch on Trigge.operationType {
        when BEFORE_INSERT {
            // todo: update health status to green
            // todo: generate unique token for the person record
            CTPersonTriggerHandler.beforeInsert(Trigger.new);
        }
        when BEFORE_UPDATE {
            CTPersonTriggerHandler.beforeUpdate(Trigger.new, Trigger.oldMap);
        }
        when AFTER_UPDATE {
            CTPersonTriggerHandler.afterUpdate(Trigger.new, Trigger.oldMap);
        }
    }
}