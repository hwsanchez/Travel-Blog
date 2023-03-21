

<template>
    
      <MapboxMap style="height: 400px" 
                  access-token="pk.eyJ1IjoiaHdzYW5jaGV6IiwiYSI6ImNsY29pdmxrazFqcHkzcHA4dXBnYmdiYWgifQ.9VHhEbISmVUsxq_GY8OsZA"   
                  map-style="mapbox://styles/mapbox/streets-v11" 
                  :center="[mapMarkersArray[mapMarkersArray.length - 1].lon, mapMarkersArray[mapMarkersArray.length - 1].lat]"
                  :zoom="3">
                  <template v-for="(ciudades, index) in mapMarkersArray">
                  
                    <MapboxMarker :lng-lat="[ciudades.lon, ciudades.lat]" popup>
                      <template v-slot:popup>
                        <p class="title is-6">{{ ciudades.blogName }}</p>
                        <p class="subtitle is-6">{{ ciudades.blogDate }}</p>
                        
                          
                        <div class="popUpImage">
                          <img :src="ciudades.authorPic" alt="pic">
                        </div>
                        
                     
                      <p class="subtitle is-6"> {{ ciudades.authorName }}</p>
                      </template>
                    </MapboxMarker>
                      
                    
                  </template>
                 
      </MapboxMap>
      <!-- <h1>Last city: {{ mapMarkersArray[mapMarkersArray.length - 1].cityName }}</h1> -->
  


</template>

<script>

import {MapboxMap, MapboxMarker} from '@studiometa/vue-mapbox-gl';

export default {
  data: function () {
    return {

      OPEN_WEATHER_API_KEY: "3a42576b87aa5574c7be70803ff1f679",
   
      mapMarkersArray: [{
        blogName: "",
        blogDate: "",
        authorPic: "",
        authorName: "",
        linkToDetailsPage: "link",
        lon: 0,
        lat: 0
      },]


    }
  },

  props: {
    cities: Array
  },

  components: {
    MapboxMap,
    MapboxMarker
  },

  watch: {
    cities() {
      // this.mapMarkersArray = [];
       console.log(this.cities);
      for (let a = 0; a < this.cities.length; a++) {
        console.log(a);
        console.log(this.cities[a].city)
        // this.cityOnMap.cityName = this.cities[a].city;
        console.log(this.cityOnMap)

      }
      console.log("This is coming from MapWithVisitedLocations!!!");
      for (let i = 0; i < this.cities.length; i++) {
        fetch(`http://api.openweathermap.org/geo/1.0/direct?q=${this.cities[i].city}&limit=1&appid=${this.OPEN_WEATHER_API_KEY}`)
          .then(r => r.json())
          .then((data) => {
            console.log("City: ");
            console.log(this.cities[i].city);
            console.log("Latitude and Longitude: ");
            console.log(data[0].lon);

            console.log(data[0].lat);

            console.log(i)

            this.mapMarkersArray.push({ blogName: this.cities[i].title, blogDate: this.cities[i].visitingDate, authorPic: this.cities[i].authorsImage, authorName: this.cities[i].author, linkToDetailsPage: "link", lon: data[0].lon, lat: data[0].lat });

          })


      }

    }
  },

  mounted() {
   
    console.log("This is mounted at Map");
  }
}
</script>


<style scoped>
.popUpImage {

  width: 80px;

  /* float: left; */
}

.popUpBottom {

margin-left: 0;
}
p {
  color: #333;
}
</style>


