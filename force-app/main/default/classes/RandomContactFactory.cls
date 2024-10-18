public class RandomContactFactory {
	
    public static List<Contact> generateRandomContacts(Integer num, String lastName){
        List<Contact> conList = new List<Contact>();
        for(Integer i=0; i<=num; i++){
            Contact ct = new Contact(FirstName = 'Test '+i, LastName = lastName);
            conList.add(ct);
        }
        return conList;
    }
}