import { LightningElement, track } from 'lwc';

export default class Challenge2 extends LightningElement {
    @track
    headerinfo='Change Header if you dare!';
    showButton= false;

    headerChange(event){
        this.headerinfo= event.target.value;
    }

    handleClick(){
        this.showButton=!this.showButton;
    }
}