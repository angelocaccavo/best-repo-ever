trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> taskList = new List<Task>();
    
    // Create a set of Opportunities with no Tasks
    Set<Id> opportunityIdsWithTask = new Map<Id, AggregateResult>([
        SELECT WhatId Id FROM Task
        WHERE WhatId IN :trigger.new
        GROUP BY WhatId
    ]).keySet();
    
    // Add an Task for each Opportunity if it doesn't already have one.
    // Iterate over Opportunities that are in this trigger but that don't have Tasks.
    for (Opportunity a : [SELECT Id,stagename FROM Opportunity
                          WHERE Id IN :Trigger.New AND
                          Id NOT IN :opportunityIdsWithTask]) {
                              
                              if(a.StageName == 'Closed Won'){
                                  taskList.add(new Task(Subject = 'Follow Up Test Task',whatId  = a.Id));                                  
                              }
                          }
    
    
    if (taskList.size() > 0) {
        insert taskList;
        
    }
}