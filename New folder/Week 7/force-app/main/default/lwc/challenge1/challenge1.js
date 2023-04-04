import { LightningElement, track } from 'lwc';

export default class Challenge1 extends LightningElement {
    @track
    uiInput;
    @track
    inputlist=[];

    handleClick(event){
      let capturedInput = this.template.querySelector('[data-id="input"]').value;
      this.inputlist.push(capturedInput);
      this.uiInput= null;
    }
}