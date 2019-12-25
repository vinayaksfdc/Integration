trigger trigger_pincode on Account (after insert) {
Map<id,Account> accMap=Trigger.newMap;
    set<id> Accounts=accMap.keySet();
    Future_Acc_example.invoke(Accounts);
    
}