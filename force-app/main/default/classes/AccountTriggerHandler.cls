public class AccountTriggerHandler {
    public static void createContact(List<Account> accounts){
        List<Contact> contact = new List<Contact>();
        for(Account acc : accounts){
            Contact con = new Contact( LastName = acc.name,
                                     AccountId = acc.id,
                                     MailingCity = acc.BillingCity,
                                     Fax = acc.Fax);
            contact.add(con);
        }
        insert contact;
    }
}