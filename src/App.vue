
<template>
  
<NavBar />
<RouterView />
<Footer />

</template>

<script>
import NavBar from "./components/NavBar.vue";

import MapWithVisitedLocations from "./components/MapWithVisitedLocations.vue"
import CitiesCards from "./components/CitiesCards.vue"
import Footer from "./components/Footer.vue";
export default {
  components: {
    NavBar,
    MapWithVisitedLocations,
    CitiesCards,
    Footer
  }
}

</script>


