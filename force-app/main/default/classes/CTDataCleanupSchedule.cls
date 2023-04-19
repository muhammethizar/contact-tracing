/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-20-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class CTDataCleanupSchedule implements Schedulable {
    public static final String CRON = '0 0 2  * * ?';
    public void execute(SchedulableContext sc){
        CTPeopleTracingDataCleanupBatch peopleTracingBatch = new CTPeopleTracingDataCleanupBatch();
        Database.executeBatch(peopleTracingBatch, 2000);

        CTLocationTracingDataCleanupBatch locationTracingBatch = new CTLocationTracingDataCleanupBatch();
        Database.executeBatch(locationTracingBatch, 2000);
    }
}