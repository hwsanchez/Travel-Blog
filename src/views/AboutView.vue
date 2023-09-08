<template>

<div class="wrapper">
     
             <h1 class="title">Contact</h1>

            <div class="columns" >
                <div class="column is-one-third is-warning" id="responsive">
                    <img class="my-pic" src="../assets/images/hugo3.jpg" alt="hugo's pic">
                </div>  

                <div class="column is-two-thirds">

                    <div class="contact-box">

                 
                        <h1 class="subtitle has-text-weight-medium mb-3">Hugo W Sanchez</h1>   
                        <ul>
                            <li>Bussardweg 24, 22527 Hamburg</li>
                            <li><a href="">hwsanchez.poreda@gmail.com</a></li>
                            <li>+49 157 85145890</li>
                        
                        </ul>          
                    </div>
                </div>       
            </div>
            
            <div class="">
                <p> This is a my final project for my Fullstack Developer course at Hamburg Coding School: <strong> My Travel Blog.</strong></p>       
            </div>  
</div>
</template>

<style scoped>

.wrapper {
    margin: 10px 10px 20px 20px;
    height: 500px;
}

.my-pic {
    width: 350px;
    border: 1px solid rgb(124, 124, 124);
    border-radius: 5px;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    margin-right: 2rem;

}

.contact-box {

    display: flex;
    flex-direction: column;
    justify-content: end;
    height: 100%;
}

@media (max-width: 600px) {

    #responsive img {
        width: 350px;
        margin: 0 auto;
    }
}

</style>

