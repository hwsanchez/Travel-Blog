<template>
  <div class="my-card-container">
    <template v-for="blog in cities" :key="blog.id">
      <div class="card-wrapper" :data-id="blog.id" @click="$emit('cardClicked', blog.id)">
        
        
        <!-- New Bulma Card: -->

        <!-- <div class="card my-card" style="max-width: 350px">
          <div class="card-image">
            <figure class="image is-5by4">
              <img :src="blog.cityimage" alt="Placeholder image" />
            </figure>
          </div>
          <div class="card-content">
            <div class="media">
              <div class="media-left">
                <figure class="image is-48x48">
                  <img :src="blog.authorsimage" alt="Author's image" />
                </figure>
              </div>
              <div class="media-content" >
                <p style="font-size: 70%;"><strong>{{ blog.title }}</strong></p>
                <p style="font-size: 50%;">{{ blog.author }}</p>
                <p style="font-size: 50%; color:blue;">{{ blog.authorsemail }}</p>
              </div>
            </div>

            <div class="content">
              <time datetime="2016-1-1">{{ blog.visitingdate }}</time>
            </div>
          </div>
        </div> -->

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
            <p>{{ blog.author }}</p>
            <p>{{ blog.authorsemail }}</p>
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
  width: 200px; /* Set a fixed width for all cards */
  height: 150px; /* Set a fixed height for all cards */
  background-color: white;
  border-radius: 8px;
}
    .image {
      width: 100%;
      height: 100%;
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
      padding-right: 30px;
    }

    .card-title {
      margin: 0;
    }

.content-text {
  font-size: small;
  padding-right: 10px;
}

.my-card:hover {
  transform: translate3D(0, -1px, 0) scale(1.09);
  transition: 600ms;
  cursor: pointer;
  box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.9);
}

.my-card-container {
  display: flex;
}

.card-image img {
  float: left;
  width: 100px;
  height: 100px;
  object-fit: cover;
}

.card-image:first-child img {
  border-top-left-radius: unset !important;
  border-top-right-radius: unset !important;
}

.card-wrapper {
  padding: 20px;
}

.media-content {
  inline-size: 100px;
  overflow-wrap: break-all;
}
</style>
