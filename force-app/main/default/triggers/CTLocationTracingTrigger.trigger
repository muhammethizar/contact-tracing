/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-12-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger CTLocationTracingTrigger on Location_Tracing__c (before insert) {
    switch on Trigger.operationType {
        when BEFORE_INSERT {
            CTLocationTracingTriggerHandler.beforeInsert(Trigger.new);
        }
}