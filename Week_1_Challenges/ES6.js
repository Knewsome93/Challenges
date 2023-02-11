let btnClick = document.querySelector("button");
        let hContent = document.querySelector("h1");
        btnClick.addEventListener("click",changeContent);
        
        function changeContent(){
        let newContent = "Working, Please Wait!";
            hContent.innerHTML = newContent;
            setTimeout(reset,5000); 
        }
        function reset(){
            let original = "Waiting";
            hContent.innerHTML = original;
        }