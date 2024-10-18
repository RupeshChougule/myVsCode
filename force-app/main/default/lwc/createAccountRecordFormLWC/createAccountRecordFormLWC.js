import { LightningElement } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import NUMBER_FIELD from '@salesforce/schema/Account.AccountNumber';
import WEBSITE_FIELD from '@salesforce/schema/Account.Website';

export default class CreateAccountRecordFormLWC extends LightningElement {
    accountObject = ACCOUNT_OBJECT;
    myFields = [NAME_FIELD, WEBSITE_FIELD, NUMBER_FIELD];

    handleAccountCreated(){
        // Run code when account is created.
    }
}