import { LightningElement } from 'lwc';

export default class Challenge3 extends LightningElement {
    color;

    handleClickBlue(){
        this.color='blue';
    }
    handleClickRed(){
        this.color='red';
    }
    handleClickGreen(){
        this.color='green';
    }
}