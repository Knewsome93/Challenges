let userInput = document.getElementById("UI");

async function getPokemonName(pokemon){
   pokemon= userInput.value.toLowerCase();
    const req = new Request('https://pokeapi.co/api/v2/pokemon/'+ pokemon)
    const response = await fetch(req);
    let data = await response.json();
    // returns hp value of pokemon
    let hpStat = data.stats[0];
    let hpData=String(Object.values(hpStat)[0]);
    console.log(hpData);
   // console.log(Object.keys(data)[15]);
    let pokemonName= String(Object.values(data)[10]);
    alert(pokemonName.toUpperCase());
    console.log(pokemonName.toUpperCase());
    let pokeName = document.getElementById("Theheader");
    let pokeHp= document.getElementById("phealth");

    pokeHp.innerHTML= 'hp = ' + hpData;
    pokeName.innerHTML = pokemonName.toUpperCase();
    resetInput();
    }
    function resetInput(){
        userInput.value="";
    }
    let btnClick = document.querySelector("button");
    btnClick.addEventListener("click",getPokemonName);
    


    