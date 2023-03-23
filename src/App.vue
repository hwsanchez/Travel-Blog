
<template>
  
<NavBar />
<RouterView />
<Footer />

</template>

<script>
import NavBar from "./components/NavBar.vue";

import BigMap from "./components/BigMap.vue"
import CitiesCards from "./components/CitiesCards.vue"
import Footer from "./components/Footer.vue";
export default {
  components: {
    NavBar,
    BigMap,
    CitiesCards,
    Footer
  }
}

</script>


