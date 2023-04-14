/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-12-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger CTLocationTrigger on Location__c (before insert, after insert, before update, after update) {

    switch on Trigger.operationType {
        when BEFORE_INSERT {
            CTLocationTriggerHandler.beforeInsert(Trigger.new);
        }
        when BEFORE_UPDATE {
            CTLocationTriggerHandler.beforeUpdate(Trigger.new, Trigger.oldMap);
        }
        when AFTER_UPDATE {
            CTLocationTriggerHandler.afterUpdate(Trigger.new, Trigger.oldMap);
        }
    }
}