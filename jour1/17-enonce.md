
vous devez réaliser une page de reseaux sociaux
via la variable suivante 

[ 
    {
        img : https://via.placeholder.com/400x200 ,
        auteur : "moi" ,
        datePublication : "22/01/2023",
        nbLike : 10
    },
    {
        img : https://via.placeholder.com/400x200 ,
        auteur : "Alain" ,
        datePublication : "21/02/2023",
        nbLike : 1
    },
    {
        img : https://via.placeholder.com/400x200 ,
        auteur : "Alain" ,
        datePublication : "01/12/2023",
        nbLike : 0
    }
]

vous devez injecter dans une balise div le code html suivant pour chaque article 

<section>
    <img src="https://via.placeholder.com/400x200" alt="">
    <div>
        <span>moi</span>
        <span>publié le 22/01/2023</span>
    </div>  
    <div>
        nb like : 10 <button>liker</button>
    </div>  
</section>