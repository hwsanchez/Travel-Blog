
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
// import config from '../config.js'

import CitiesCards from '../components/CitiesCards.vue';
import BigMap from '../components/BigMap.vue';
import { createClient } from '@supabase/supabase-js';

import { ref, onMounted } from 'vue';

export default {
  setup() {
    const blogsArray = ref([]); // Define blogsArray as a ref

    const supabaseUrl = import.meta.env.VITE_APP_SUPABASE_URL;
    const supabaseKey = import.meta.env.VITE_APP_SUPABASE_KEY;

    onMounted(async () => {
      console.log('Supabase URL:', supabaseUrl);
      console.log('Supabase Key:', supabaseKey);

      // Initialize Supabase client
      const supabase = createClient(supabaseUrl, supabaseKey);

      try {
        // Fetch data from Supabase table

        const { data, error } = await supabase.from('blogs').select('*');
        if (error) {
          console.error(error);
        } else {
          
          blogsArray.value = data; // Assign fetched data to blogsArray using .value
          console.log('Fetched data:', blogsArray.value);
        }
      } catch (error) {
        console.error(error);
      }
    });

    return { blogsArray }; // Return blogsArray from setup
  },

  components: {
    CitiesCards,
    BigMap,
  },

  data: function () {
    return {
      id: 0,
    };
  },

  methods: {
    displayDetail(event) {
      this.id = event;
    },
  },
};


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
  /* height: 300px; */

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





