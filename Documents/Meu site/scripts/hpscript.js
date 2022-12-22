
NavBarResponsiva();

function NavBarResponsiva() {
    const BotaoMenu = document.getElementsByClassName('botaomenu')[0];
    const navbarLinks = document.getElementsByClassName('navbar-links')[0];

    BotaoMenu.addEventListener('click', () => {
        navbarLinks.classList.toggle('active');
    });
}

/*
            let resolucao = screen.width;

            let altura = screen.height;

            console.log(resolucao);

            resolucao = resolucao - 20;

            largura = resolucao;

            console.log(resolucao);

            document.body.style.maxWidth = resolucao+"px";
            document.getElementById("corpo1").style.maxWidth = largura+"px";
            //  document.getElementById("corpo1").style.maxHeight = altura+"px";
*//*
              window.onscroll = function() 
              {
                  scrollFunction()
              };
              
              function scrollFunction() 
              {

                if(document.body.scrollTop > 0 || document.documentElement.scrollTop > 0) 
                {
                  document.getElementById("navbar").style.backgroundColor = "transparent";
                  document.getElementById("title-main").style.opacity = "100%";

                } 



                if(document.body.scrollTop > 30 || document.documentElement.scrollTop > 30) 
                {
                  document.getElementById("navbar").style.backgroundColor = "transparent";
                  document.getElementById("title-main").style.opacity = "100%";

                }

                if(document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) 
                {
                  document.getElementById("navbar").style.backgroundColor = "rgba(214, 214, 214, 0.267)";
                  document.getElementById("title-main").style.opacity = "80%";
          
                }

                if(document.body.scrollTop > 60 || document.documentElement.scrollTop > 60) 
                {
                  document.getElementById("navbar").style.backgroundColor = "rgba(214, 214, 214, 0.267)";
                  document.getElementById("title-main").style.opacity = "60%";
              
                }

                if(document.body.scrollTop > 70 || document.documentElement.scrollTop > 70) 
                {
                  document.getElementById("navbar").style.backgroundColor = "rgba(214, 214, 214, 0.267)";
                  document.getElementById("title-main").style.opacity = "40%";
        
                }

                if(document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) 
                {
                  document.getElementById("navbar").style.backgroundColor = "rgba(214, 214, 214, 0.267)";
                  document.getElementById("title-main").style.opacity = "20%";
                }

                if(document.body.scrollTop > 90 || document.documentElement.scrollTop > 90) 
                {
                  document.getElementById("navbar").style.backgroundColor = "rgba(214, 214, 214, 0.267)";
                  document.getElementById("title-main").style.opacity = "10%";
                }

                if(document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) 
                {
                  document.getElementById("navbar").style.backgroundColor = "rgba(214, 214, 214, 0.267)";
                  document.getElementById("title-main").style.opacity = "0%";
                }

              }

    
 */