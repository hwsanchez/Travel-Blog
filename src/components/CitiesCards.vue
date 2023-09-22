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
            <div>{{ niceDate(blog) }}</div>
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
  computed: {
    niceDate() {
      return (blog) => {
        const date = blog.visitingdate.split('-');
        let month = date[1]
        switch (month) {
          case '01':
            month = "Jan"
            break;
          case '02':
            month = "Feb"
            break;
          case '03':
            month = "Mar"
            break;
          case '04':
            month = "Apr"
            break;
          case '05':
            month = "May"
            break;
          case '06':
            month = "Jun"
            break;
          case '07':
            month = "Jul"
            break;
          case '08':
            month = "Aug"
            break;
          case '09':
            month = "Sep"
            break;
          case '10':
            month = "Oct"
            break;
          case '11':
            month = "Nov"
            break;
          case '12':
            month = "Dec"
            break;
          
        }
        return month + ' ' + date[2] +  ', ' + date[0];
      };
    }
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
