/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-18-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class CTHealthHeaderController {
    
    @AuraEnabled
    public static Map<String, Integer> getPersonHealthStatusCount(){
        return CTPersonController.getHealthStatusCount2();
    }

    @AuraEnabled
    public static Map<String, Integer> getLocationHealthStatusCount(){
        return CTLocationController.getHealthStatusCount2();
    }
}