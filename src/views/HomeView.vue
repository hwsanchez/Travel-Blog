
<template>
  <div class="hero has-background-grey">
  
   
      
          <div class="my-big-map">      
            
            <div class="box">
            
            <MapWithVisitedLocations :cities="blogsArray" />
            
            </div>
                        
          </div>

          <div class="my-title">
            <h3 class="title has-text-centered is-size-4">Blogs Previews</h3>
          </div>
      


          <div class="my-cards">
              <RouterLink  :to="'/post/' + id">

                <CitiesCards :cities="blogsArray" @cardClicked="displayDetail"/>
              
              </RouterLink>
          
          </div>
        
          
  
  </div>


</template>

<script>

import CitiesCards from '../components/CitiesCards.vue';

import MapWithVisitedLocations from '../components/MapWithVisitedLocations.vue';

export default {

  data: function () {
    return {
      blogsArray: [],
      id: 0

    }
  },

  components: {
    CitiesCards,
    MapWithVisitedLocations

  },
  mounted() {

    // fetch('./cities.json')
    //   .then(archivo => archivo.json())
    //   .then(resultadoFinal => {
    //     console.log(resultadoFinal);
    //     this.blogsArray = resultadoFinal;
    //     console.log("BlogsArray from Homeview mounted(): ");
    //     console.log(this.blogsArray);

    //   });

    fetch('http://localhost:8888/')
      .then(res => res.json())
      .then(blogs => {
        console.log("This is the fetched data from the Database on the local server: ");
        console.log(blogs);
        this.blogsArray = blogs;
        })
    }
  ,
  methods: {
    displayDetail(event) {
      this.id = event;
      alert(`You want to see the detail of card id: ${this.id}`);
  

    }

  }
}

</script>

<style>



.main-wrapper {

  background-color: rgb(97, 97, 97);

}

.my-big-map {

  width: 80%;
  padding-top: 10px;
  margin-right: auto;
  margin-left: auto;
}

.my-cards {
  /* display: grid;
  grid-template-columns: 20px 1fr 20px; */
  background-color: rgb(214, 214, 214);
  overflow: auto;
  white-space: nowrap;

}

.my-cards > * {
  grid-column: 2 / -2;
}

.app > .full {
  grid-column: 1 / -1;
}

.my-title {
  padding: 30px 30px;
}

</style>





