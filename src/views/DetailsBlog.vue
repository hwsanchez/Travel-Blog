<template>
  <div class="hero is-fullheight has-background-grey">
   
          <div class="back-home-button">
          
              <RouterLink :to="'/'">  
                  <button class="button is-dark">
                      <span class="icon">
                        <i class="fa-solid fa-arrow-left"></i>  
                      </span>
                      <span>Home</span>
                  </button>
              </RouterLink>

          </div>

          <div class="block ml-4 mt-5 my-block">
              <div class="my-header">
              <!-- Author's info -->
                <div class="author-info">
                  <img :src="blogsArray[0].authorsImage" style="width: 40px;" alt="author pic">
                  <p class="subtitle mb-0 mr-4 has-text-black"> {{ blogsArray[0].author }} </p>
                </div>
            
              </div>
                <!-- Blog Title -->
                <p class="title mb-0 mt-4"> {{ blogsArray[0].title }}</p>
          </div>
         
            <div class="details-container">

              <div class="content">
                  <div class="details-image">
                            <img :src="blogsArray[0].cityImage" alt="pic">
                        </div>

                        <p>
                          Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ab facere placeat aliquid rem dolorum. Aspernatur obcaecati voluptas temporibus cumque sit quos nihil et eum, accusantium, iure adipisci, voluptatem ullam sequi.
                          Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur laboriosam nemo reiciendis et facere ab veritatis doloribus modi pariatur, rerum possimus earum a ducimus dolorem veniam hic quo neque aut.
                          Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellat earum sit est voluptatum harum repudiandae minima ea odio cum! Unde qui magni veritatis amet possimus ipsam blanditiis cupiditate eos fuga.
                          Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ab facere placeat aliquid rem dolorum. Aspernatur obcaecati voluptas temporibus cumque sit quos nihil et eum, accusantium, iure adipisci, voluptatem ullam sequi.
                          Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur laboriosam nemo reiciendis et facere ab veritatis doloribus modi pariatur, rerum possimus earum a ducimus dolorem veniam hic quo neque aut.
                        </p>

                        <br>

                        <p class="mb-5">
                          Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellat earum sit est voluptatum harum repudiandae minima ea odio cum! Unde qui magni veritatis amet possimus ipsam blanditiis cupiditate eos fuga.
                          Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellat earum sit est voluptatum harum repudiandae minima ea odio cum! Unde qui magni veritatis amet possimus ipsam blanditiis cupiditate eos fuga.
                        </p>
              
              </div>

                  

              <div class="blog-middle">

                  <div class="map-text-container"> 

                      <div > 
                                    <div div class="map-container">

                                                <MapboxMap
                                                  style="height: 300px;"
                                                  access-token="pk.eyJ1IjoiaHdzYW5jaGV6IiwiYSI6ImNsY29pdmxrazFqcHkzcHA4dXBnYmdiYWgifQ.9VHhEbISmVUsxq_GY8OsZA"
                                                  map-style="mapbox://styles/mapbox/streets-v11"
                                                  :center="[geoLoc.lon, geoLoc.lat]"
                                                  :zoom="9">
                                                  <MapboxMarker :lng-lat="[geoLoc.lon, geoLoc.lat]"/>

                                                </MapboxMap>
                        
                                   </div>
                                      <!-- end map container -->

                                    <p class="texto">
                                      Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur laboriosam nemo reiciendis et facere ab veritatis doloribus modi pariatur, rerum possimus earum a ducimus dolorem veniam hic quo neque aut.
                                      Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellat earum sit est voluptatum harum repudiandae minima ea odio cum! Unde qui magni veritatis amet possimus ipsam blanditiis cupiditate eos fuga.
                                      Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ab facere placeat aliquid rem dolorum. 
                                      Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur laboriosam nemo reiciendis et facere ab veritatis doloribus modi pariatur, rerum possimus earum a ducimus dolorem veniam hic quo neque aut.
                                      Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellat earum sit est voluptatum harum repudiandae minima ea odio cum! Unde qui magni veritatis amet possimus ipsam blanditiis cupiditate eos fuga.
                                      Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ab facere placeat aliquid rem dolorum. 
                                      Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur laboriosam nemo reiciendis et facere ab veritatis doloribus modi pariatur, rerum possimus earum a ducimus dolorem veniam hic quo neque aut.
                                      Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellat earum sit est voluptatum harum repudiandae minima ea odio cum! Unde qui magni veritatis amet possimus ipsam blanditiis cupiditate eos fuga.
                                      Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ab facere placeat aliquid rem dolorum. 
                                    </p> 
                              
                      </div>


                                 

                          


                              
                              
                          
                        
                         
         
                      </div>           
              </div>

              <div class="text-bottom">
              <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur laboriosam nemo reiciendis et facere ab veritatis doloribus modi pariatur, rerum possimus earum a ducimus dolorem veniam hic quo neque aut.
                      Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellat earum sit est voluptatum harum repudiandae minima ea odio cum! Unde qui magni veritatis amet possimus ipsam blanditiis cupiditate eos fuga.
                      Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ab facere placeat aliquid rem dolorum. 
                    </p> 
              
                    <p>
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ab facere placeat aliquid rem dolorum. Aspernatur obcaecati voluptas temporibus cumque sit quos nihil et eum, accusantium, iure adipisci, voluptatem ullam sequi.
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur laboriosam nemo reiciendis et facere ab veritatis doloribus modi pariatur, rerum possimus earum a ducimus dolorem veniam hic quo neque aut.
                    </p>
              </div>
                  
           

            </div>
            <!-- end detail container -->
        
  
    
  </div>  
  <!-- end of hero -->
</template>

<script>

//import config from '../config.js';
import { MapboxMap, MapboxMarker } from '@studiometa/vue-mapbox-gl';

// const myMapboxToken = config.mapboxToken;
// const myOpenWeatherKey = config.openWeatherKey;

export default {

  data() {
    return {
      blogsArray: [{
        city: "",
        title: "",
        country: "",
        cityImage: "",
        visitingDate: "",
        author: "",
        authorsImage: "",
        authorsEmail: "",
        blog: ""
      }],
      OPEN_WEATHER_API_KEY: "3a42576b87aa5574c7be70803ff1f679",
      geoLoc: {
        lon: 0,
        lat: 0
      }
    }
  },
  
   async mounted() {
      //Fetching the data for the Dababase and the coordinates from the city: 
     const response = await fetch(`http://localhost:8888/detail/${this.$route.params.id}`);
     const result = await response.json();
     this.blogsArray = await result;
     const newResponse = await fetch(`http://api.openweathermap.org/geo/1.0/direct?q=${this.blogsArray[0].city}&limit=1&appid=${this.OPEN_WEATHER_API_KEY}`);
     const newResult = await newResponse.json();
     this.geoLoc.lon = await newResult[0].lon;
     this.geoLoc.lat = await newResult[0].lat;
     console.log(this.geoLoc);
  },
  methods: {
    cardDetails(id) {
      return ("You want to see the details from card id: " + id);
    }
  },

  components: {
    MapboxMap,
    MapboxMarker
  }
}

</script>


<style scoped>

.text-bottom {
  padding-bottom: 35px;
}

.back-home-button {

  padding: 14px;

}

.details-image img {
  border: solid white 1px;
  border-radius: 5px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  max-width: 380px;
}

.my-header {
  display: flex;
  align-items: flex-end;
}


  .details-container {
   margin-left: 20px;
   margin-right: 20px;
   color: black;

  }

  .author-info {

    display: flex;
    align-items: flex-end;
    gap: 5px;
 
  }
  .author-info img {

  border: solid black 1px; 
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

.blog-middle {

  width: 100%;
  padding-top: 30px;
  padding-bottom: 30px;
}

.map-text-container {
  display:flex;

}
.map-container {
  border: solid 1px black;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  width: 400px;
  float: right;
}
 
  




@media (max-width: 550px) {

  .details-image {
  
    max-width: 480px;
    margin: 0 auto;
    margin-top: 20px;
    padding-bottom: 20px;
  }



  .map-container {
    margin: 0 auto;
    /* border: none;
    box-shadow: none; */

  }
.map-text-container {
  display:block;

}
 
  .my-header {

    margin: 0 auto;
  }

  .author-info {
    display: none;
  }


}
@media (min-width: 551px) {

  .details-image {
  
    max-width: 600px;
    min-width: 300px;
    float: left;
    padding-right: 20px;
  }

   .map-container {
      width:60%;

  }
 


}

</style>