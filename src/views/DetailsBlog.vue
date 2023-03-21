<template>
  <div class="hero is-fullheight has-background-grey">

    <h1> {{ cardDetails(blogId) }}</h1>    
  </div>  
</template>

<script>

export default {

  computed: {

    blogId() {
      return Number(this.$route.params.id)
    }
  },
  mounted() {



  },
  methods: {

    cardDetails(id) {
      return ("You want to see the details from card id: " + id);
    }


  }

}

</script>