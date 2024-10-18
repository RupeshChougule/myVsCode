import { LightningElement, wire} from 'lwc';
import getContactList from '@salesforce/apex/firstLwcApex.getContactList';
import getAccountDetails from '@salesforce/apex/firstLwcApex.getAccountDetails';
export default class FirstLwcDemo extends LightningElement {

    greetings = 'Welcome to LWC Demo ..!';
    result;
    error;

    /**
      Get a Apex class
      Creat an AuraEnabled method
      Import the method in LWC
      Use @wire to call the method // error, data
     */

    @wire(getContactList)
    wiredata({error, data}) {
        if (data) {
            console.log('Inside if:', data)
            this.result = data;
            this.error = undefined;
           
        } else if (error) {
            console.log('Inside else', error)
            this.error = error;
            this.result = undefined;
        }
    }

    handleclick(){
        getAccountDetails()
            .then(result => {
                console.log('Inside Then :', result)
                this.result = data;
                this.error = undefined;
            })
            .catch(error => {
                console.log('Inside Catch :', error)
                this.error = error;
                this.result = undefined;
            });
    }
}