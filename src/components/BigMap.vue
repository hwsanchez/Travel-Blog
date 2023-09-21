<template>


<!-- Big World Map with blog locations: -->

  <MapboxMap
      style="height: 400px"
      access-token="pk.eyJ1IjoiaHdzYW5jaGV6IiwiYSI6ImNsY29pdmxrazFqcHkzcHA4dXBnYmdiYWgifQ.9VHhEbISmVUsxq_GY8OsZA"
      map-style="mapbox://styles/mapbox/streets-v11"
      :center="[MostRecentBlogLongitude, MostRecentBlogLatitude]"
      :zoom="3">
    <template v-for="(ciudades, index) in geoLocArray" :key="ciudades.id">
     
      <!-- <MapboxMarker :lng-lat="[ciudades.lon, ciudades.lat]" /> -->
      <MapboxMarker v-if="ciudades.id !== 0" :lng-lat="[ciudades.lon, ciudades.lat]" popup>
                        <template v-slot:popup>
                           
                            <p class="title is-6">{{ ciudades.blogName }}</p>
                            <p class="subtitle is-7">{{ ciudades.blogDate }}</p>
                        
                          
                          <div class="popUpImage">
                            <img :src="ciudades.authorPic" alt="pic">
                          </div>
                        
                     
                          <p class="my-subtitle"> {{ ciudades.authorName }}</p>
                          <RouterLink :to="'/post/' + ciudades.id" :data-id="ciudades.id" @click="$emit('popupClicked',ciudades.id)">link to blog</RouterLink>
                        </template>
        </MapboxMarker>
    </template>
       
  </MapboxMap>

</template>

<script>

import { MapboxMap, MapboxMarker } from '@studiometa/vue-mapbox-gl';
// import config from '../config.js';
// const myOpenWeatherKey = config.openWeatherKey;

export default {
  data: function () {
    return {
      OPEN_WEATHER_API_KEY: import.meta.env.VITE_APP_OPEN_WEATHER_API_KEY,
      geoLocArray: [{
        id: 0,
        blogName: "",
        blogDate: "",
        authorPic: "",
        authorName: "",
        lon: null,
        lat: null
      }]      
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

       for (let i = 0; i < this.cities.length; i++) {
        fetch(`https://api.openweathermap.org/geo/1.0/direct?q=${this.cities[i].city}&limit=1&appid=${this.OPEN_WEATHER_API_KEY}`)
          .then(res => res.json())
          .then(locations => {
            this.geoLocArray.push({ id: this.cities[i].id, blogName: this.cities[i].title, blogDate: this.cities[i].visitingdate, authorPic: this.cities[i].authorsimage, authorName: this.cities[i].author, lon: locations[0].lon, lat: locations[0].lat });
          })


      }
    }
  },
  computed: {

    MostRecentBlogLongitude() {
      //This is suppose to return the ccordinates for the city from the most recent post
      //return this.geoLocArray[this.geoLocArray.length - 1].lon
      //These are the coordinates for the center of Switzerland: looks nicer!
      return 8.23
    },
    MostRecentBlogLatitude() {
      //return this.geoLocArray[this.geoLocArray.length - 1].lat
      return 46.79
    }
  },

  methods: {
    alertCard(event) {
      alert(`Popup clicked! Id: ${event}`)
    }
  },

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

.my-subtitle {
  font-size: 14px;
  font-weight: 400;
}
</style>