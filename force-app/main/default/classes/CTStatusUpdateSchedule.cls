/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-20-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class CTStatusUpdateSchedule implements Schedulable {
    public static final String CRON = '0 0 3  * * ?';
    public void execute(SchedulableContext sc){
        CTUpdatePersonStatusBatch updatePersonStatusBatch = new CTUpdatePersonStatusBatch();
        Database.executeBatch(updatePersonStatusBatch, 2000);

        CTLocationStatusUpdateBatch updateLocationStatusBatch = new CTLocationStatusUpdateBatch();
        Database.executeBatch(updateLocationStatusBatch, 2000);
    }
}