import { LightningElement, track } from 'lwc';
export default class MyFirstWebComponent extends LightningElement {
    @track
    contacts = [
        {
            Id: 1,
            Name: 'Rupesh Chougule',
            Title: 'CEO',
        },
        {
            Id: 2,
            Name: 'Amy Taylor',
            Title: 'VP of Engineering',
        },
        {
            Id: 3,
            Name: 'Michael Jones',
            Title: 'VP of Sales',
        },
        {
            Id: 4,
            Name: 'Jennifer Wu',
            Title: 'VP of Engineering',
        },
    ];
}