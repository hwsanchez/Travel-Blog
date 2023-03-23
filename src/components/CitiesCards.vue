<template>
   
          <div class="my-card-container">
          
            <template v-for="(blog) in cities" :key="blog.id">
                

              <div class="card-wrapper" :data-id="blog.id" @click="$emit('cardClicked', blog.id)">
                
                <div class="card my-card" >
                    
                            <div class="card-image city-image">
                              <figure class="image is-4by3">
                                <img :src="blog.cityImage">
                              </figure>
                            </div>

                            <div class="card-content my-card-content">
                      
                      

                          
                                <p class="card-title">{{ blog.title }}</p>
                           
                                <time datetime="2016-1-1">{{ blog.visitingDate }}</time>
                        
                               
                           
                           

                              <div class="media">
                               
                                    <div class="media-left">
                                      <figure class="image is-48x48">
                                        <img :src="blog.authorsImage" alt="image">
                                      </figure>
                                    </div>
                                  <div class="media-content">

                                    <div class="content">
                                      <p class="title is-7">{{ blog.author }}</p>
                                      <a href="" class="author-email">{{ blog.authorsEmail }}</a>
                                 
                                
                                    </div>


                              


                                
                
                                  </div>

                                </div>

                            </div>
                           <!-- End of card-content container  -->

                        </div> 
                       <!-- End of card container -->
                
                
              </div>

            </template>
                 
          </div>          

</template>

<script>
export default {
  props: {

    cities: {
      type: Array,
      default: []
    }
  },

  methods: {
    displayId(event) {
      alert(`Card id: ${event}`);
    }
  }
}

</script>


<style scoped>

.card-title {
  font-size: small;
  font-weight: 800;
  color: black;
  
}


.my-card-content time {
  font-size:x-small;

}

.author-email {
  font-size: x-small;
}

.my-card {
  height: 100%;
}

.my-card:hover {
  transform: translate3D(0,-1px,0) scale(1.09);
  transition: 300ms;
  cursor: pointer;
}

.my-card-container {
  display: flex;
}

.card-image img {

  float: left;
  width: 100px;
  height:100px;
  object-fit: cover;

}

.card-wrapper {
  padding: 20px;
}

.media-content {

  inline-size: 100px;
  overflow-wrap: break-all;
  
}

</style>