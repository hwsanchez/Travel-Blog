<template>
  <div class="my-card-container">
    <template v-for="blog in cities" :key="blog.id">
      <div class="card-wrapper" :data-id="blog.id" @click="$emit('cardClicked', blog.id)">
        
        
       

        <!-- New Vanilla CSS Card: -->

        <div class="card">
        <img
          class="image"
          :src="blog.cityimage" alt="Card city image"
        />
        <div class="content">
          <img
            :src="blog.authorsimage" alt="Author's image"
          />
          <div class="content-text">
            <p class="card-title"><strong>{{ blog.title }}</strong></p>
            <div>{{ blog.author }}</div>
            <div style="color:rgb(2, 2, 161)">{{ blog.authorsemail }}</div>
            <p>{{ blog.visitingdate }}</p>
          </div>
        </div>
      </div>

      </div>
    </template>
  </div>
</template>

<script>
export default {
  props: {
    cities: {
      type: Array,
      default: [],
    },
  },

  methods: {
    displayId(event) {
      alert(`Card id: ${event}`);
    },
  },
};
</script>

<style scoped>

.card {
  min-width: 200px; /* Set a fixed width for all cards */
  min-height: 250px; /* Set a fixed height for all cards */
  background-color: white;
  border-radius: 8px;
  
}
    .image {
      width: 100%;
      height: 130px;
      object-fit: cover;
    }
    .content {
      display: flex;
      padding: 10px;
    }

    .content img {
      height: 100%;
      height: 75px;
      object-fit: cover;
      padding-right: 5px;
    }

    .card-title {
      margin: 0;
    }

.content-text {
  font-size: 70%;
 
}

.card:hover {
  transform: translate3D(0, -1px, 0) scale(1.09);
  transition: 600ms;
  cursor: pointer;
  box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.9);
}

.my-card-container {
  display: flex;
}




.card-wrapper {
  padding: 15px;
}


</style>
