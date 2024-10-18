/*

1. Write a trigger on Contact when mobile phone number is changed then update 
   the phone number field in Account with the new phone number.
*/

trigger UpdateAccountPhoneNumber on Contact (after update) {
    // Create a map to hold Account Ids and their corresponding new phone numbers
    Map<Id, String> accountPhoneMap = new Map<Id, String>();

    // Iterate over the updated contacts
    for (Contact con : Trigger.new) {
        // Check if the mobile number has changed
        Contact oldContact = Trigger.oldMap.get(con.Id);
        if (con.MobilePhone != oldContact.MobilePhone && con.AccountId != null) {
            // Update the Account phone number if it has changed
            accountPhoneMap.put(con.AccountId, con.MobilePhone);
        }
    }

    // Update the Account records with the new phone numbers
    List<Account> accountsToUpdate = new List<Account>();
    for (Id accountId : accountPhoneMap.keySet()) {
        accountsToUpdate.add(new Account(
            Id = accountId,
            Phone = accountPhoneMap.get(accountId)
        ));
    }

    // Perform the update if there are any accounts to update
    if (accountsToUpdate.size() > 0) {
        update accountsToUpdate;
    }
}
