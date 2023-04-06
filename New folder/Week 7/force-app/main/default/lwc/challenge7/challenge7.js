import { LightningElement,api, wire } from "lwc";
import { getRecord, getFieldValue } from "lightning/uiRecordApi";
import CONTACT_NAME_FIELD from "@salesforce/schema/Contact.Name";
import CONTACT_TITLE_FIELD from '@salesforce/schema/Contact.TITLE';
import CONTACT_PHONE_FIELD from '@salesforce/schema/Contact.PHONE';
import CONTACT_OBJECT from '@salesforce/schema/Contact';


export default class Challenge7 extends LightningElement {

    @api
    recordId;
    @wire(getRecord, {recordId: "$recordId", fields: [CONTACT_NAME_FIELD, CONTACT_TITLE_FIELD, CONTACT_PHONE_FIELD ] } )
    record;

    get nameValue(){
        return getFieldValue(this.record.data , CONTACT_NAME_FIELD);
    }

    get titleValue(){
        return getFieldValue(this.record.data , CONTACT_TITLE_FIELD);
    }

    get phoneValue(){
        return getFieldValue(this.record.data , CONTACT_PHONE_FIELD);
    }
}