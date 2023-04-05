import { LightningElement, api } from 'lwc';

export default class Challenge5Child extends LightningElement {
    @api
    band;

    bandChosen(){
        let tempBand = JSON.parse(JSON.stringify(this.band));
        const myEvent = new CustomEvent('select',{detail:tempBand});

        this.dispatchEvent(myEvent);
    }
}