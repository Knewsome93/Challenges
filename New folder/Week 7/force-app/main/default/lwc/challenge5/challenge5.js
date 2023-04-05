import { LightningElement } from 'lwc';

export default class Challenge5 extends LightningElement {
    bands=[{name:'Rage Against the Machine', description:'Rage Against the Machine is an American rock band from Los Angeles, California. Formed' 
         + 'in 1991, the group consists of vocalist Zack de la Rocha, bassist and backing vocalist Tim Commerford, guitarist Tom Morello, and drummer Brad Wilk.',
        image:'https://static.spin.com/files/2019/11/GettyImages-566789191-1572893068.jpg'},
        {name:'Linkin Park', description:'Linkin Park is an American rock band from Agoura Hills, California. The band\'s current lineup comprises vocalist/rhythm' +
        ' guitarist/keyboardist Mike Shinoda, lead guitarist Brad Delson, bassist Dave Farrell, DJ/turntablist Joe Hahn and drummer Rob Bourdon, all of whom are founding members.',
        image:'https://townsquare.media/site/366/files/2014/12/Linkin-Park.jpg?w=980&q=75'},
        {name:'Avenged Sevenfold', description:'Avenged Sevenfold is an American heavy metal band from Huntington Beach, California, formed in 1999. ',
         image:'https://cdn.mos.cms.futurecdn.net/93HmtAv7PTcbwGcKsWMuof-1200-80.jpg'},];

         chosenband;
        displayinfo=false;
        
         handleClick(event){
            this.displayinfo=!this.displayinfo;
         }
}