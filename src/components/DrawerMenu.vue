<template>

            <div class="drawer" v-bind:class="active">
            
              <ul>
                <li> <RouterLink  to="/about">
                      <a @click="$emit('closeBurger')">Contact</a>
                    </RouterLink>
                </li>

                <li> <RouterLink  to="/add">
                      <a @click="$emit('closeBurger')">Add City</a>
                    </RouterLink>
                </li>

                <li> <RouterLink  to="/log">
                      <a @click="$emit('closeBurger')">Log in</a>
                    </RouterLink>
                </li>

                <li> <RouterLink  to="/">
                        <a @click="$emit('closeBurger')">Home</a>
                      </RouterLink>
                  </li>
              </ul>
            
            </div>

</template>

<script>

export default {
  emits: {
    closeBurger: true
  }
}
</script>

<style scoped >

.drawer {

  display:flex;
  justify-content: center;
  padding-bottom: 10px;
  background-color: #333;
}

.drawer li {
  margin-top: 10px;
}
.drawer a {
color: white;
  
}
.drawer a:hover {
color: grey;
}

</style>