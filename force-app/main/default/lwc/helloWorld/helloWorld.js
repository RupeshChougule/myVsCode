import { LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {
  greeting = 'Salesforce';
  changeHandler(event) {
    this.greeting = event.target.value;
  }

  connectedCallback() {
    window.alert("Hello "+this.greeting);
  }
}