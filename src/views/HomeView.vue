
<template>
  <div class="hero has-background-grey">
  
   
      
          <div class="my-big-map mb-6 mt-4">      
            
            <div class="box">
             
                <BigMap :cities="blogsArray" @popupClicked="displayDetail"/>
            
            </div>
                        
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


import BigMap from '../components/BigMap.vue';

export default {

  data: function () {
    return {
      blogsArray: [],
      id: 0

    }
  },

  components: {
    CitiesCards,
    BigMap

  },
  mounted() {

    const OPEN_WEATHER_API_KEY = "";
    //Fetching all the blogs from the Database:
    fetch('http://localhost:8888/')
      .then(res => res.json())
      .then(blogs => {
        this.blogsArray = blogs;
      })
    }
  ,
  methods: {
    displayDetail(event) {
      this.id = event;
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





