<template>

  <nav class="my-navbar" role="navigation" aria-label="main navigation">

    <div class="navbar-left">
        <RouterLink  to="/">
          <a href="" class="my-icon">
            <i class="fa-solid fa-globe fa-3x"></i>
          </a>
        </RouterLink>

        <h1>Travel Blog</h1>
    </div>

    <div class="navbar-right">

        <div class="navbar-links" :class="{ responsive: burgerChecked }">
        
          <ul>
            <li> <RouterLink  to="/about">
                  <a>Contact</a>
                </RouterLink>
            </li>

            <li> <RouterLink  to="/add">
                  <a>Add City</a>
                </RouterLink>
            </li>

            <li> <RouterLink  to="/log">
                  <a>Log in</a>
                </RouterLink>
            </li>
          </ul>
      
        </div>

        <div class="burger">
                <input type="checkbox" :value="burgerChecked" id="hamburger-menu-checkbox" @change="handleBurgerClick" />
                  <label for="hamburger-menu-checkbox">
                      <span></span>
                  </label>
          </div>
    </div>
    
  </nav>

  <div v-if="burgerChecked">
  <!-- This is the side menu drawer! -->
      <Transition :duration="550">
        <DrawerMenu @closeBurger="handleBurgerClick"/>
      </Transition>

  </div>

  <!-- END NAVIGATION BAR -->


</template>

<script>

import DrawerMenu from '../components/DrawerMenu.vue';

export default {

  mounted() {
    window.addEventListener("resize", this.myScreenChangeEventHandler);
  },
  unmounted() {
    window.removeEventListener("resize", this.myScreenChangeEventHandler);
  },
  data: function () {
    return {
      burgerChecked: false,
      screenSize: 0
    }
  },
  methods: {
    handleBurgerClick() {
    
      
      if (this.burgerChecked) {

        this.burgerChecked = false;
       
        document.getElementById("hamburger-menu-checkbox").checked = false;

      }

      else {
        this.burgerChecked = true;
        document.getElementById("hamburger-menu-checkbox").checked = true;

      }
     
    },
     myScreenChangeEventHandler(e) {
      //code for handling screen resize:
        this.screenSize = window.innerWidth;
       if (this.screenSize > 500) {
         document.getElementById("hamburger-menu-checkbox").checked = false;
         this.burgerChecked = false;   
        }
    }
  },
  components: {
    DrawerMenu
  }
} 
</script>

<style scoped>

.my-navbar {
  display: flex;
  justify-content: space-between;
  background-color: #333;
  min-height: 80px;
}

.navbar-left {
  display: flex;
  padding-left: 10px;
  align-items: center;
  /* background-color: aqua; */
}

.navbar-left h1 {
  color: white;
  margin-left: 20px;
  font-size: 25px;
}

.navbar-left i {
  color: white;
}

.navbar-right {
  display: flex;
}

.navbar-links {
  display: flex;
}

.navbar-links ul {
  margin: 0;
  padding: 0;
  display: flex;
  align-items: center;
}
.navbar-links li a {
  color: white;
  padding-right: 10px;
  font-size: 17px;
}

.navbar-links li a:hover {
  color: grey;
  font-size: 18px;
  transition: 0,7s
}

.my-icon i:hover {
  color: grey;

}

/* Burger Menu Icon Starts HERE: */

.burger {
  display: none;

}



#hamburger-menu-checkbox~label {
  /* Show the 'hand' cursor when the user hovers over the icon */
  cursor: pointer;

  /* Increase the hit area of the icon */
  padding: 8px;
  display: flex;
  align-items: center;
  z-index: 99;
}

/* Hide the checkbox control */
#hamburger-menu-checkbox {
  display: none;
}

/* Set up the middle line of the hamburger icon */
#hamburger-menu-checkbox~label span {
  display: inline-block;
  width: 32px;
  height: 2px;
  background-color: white;
  border-radius: 3px;
  margin-left: var(--space-small);
}

/* Set up the top and bottom lines of the hamburger icon */
#hamburger-menu-checkbox~label span::after,
#hamburger-menu-checkbox~label span::before {
  content: '';
  position: absolute;
  width: 32px;
  height: 2px;
  background-color: white;
  border-radius: 3px;
}

/* Place the bottom line 8px below the middle */
#hamburger-menu-checkbox~label span::after {
  margin-top: 8px;
}

/* Place the top line 8px above the middle line */
#hamburger-menu-checkbox~label span::before {
  margin-top: -8px;
}

/* Set the middle line's transition to be instantaneous and to start */
/* 0.2 seconds after the transition is applied */
#hamburger-menu-checkbox~label span {
  transition-duration: 0s;
  transition-delay: 0.2s;
}

/* Apply styles to the top and bottom lines */
#hamburger-menu-checkbox~label span::after,
#hamburger-menu-checkbox~label span::before {
  /* Set the transition time for the top and bottom lines to 0.2s. */
  transition-duration: 0.2s;

  /* Set the transition properties as we need these lines to animate */
  /* upwards or downwards as applicable and then rotate */
  transition-property: margin, transform;

  /* These styles are applied in the unselected state of the */
  /* control, so we need to setup the reverse animation here. */
  /* This property animates the transform (rotation) immediately */
  /* and the margin 0.2s later, as is needed when going from the */
  /* cross to the hamburger icon */
  transition-delay: 0.2s, 0s;
}

/* Hide the middle line when the control is selected */
#hamburger-menu-checkbox:checked~label span {
  background-color: transparent;
}

/* Set up the forward animation for the top and bottom lines. */
#hamburger-menu-checkbox:checked~label span:before,
#hamburger-menu-checkbox:checked~label span:after {
  transition-delay: 0s, 0.2s;
  margin-top: 0;
}

/* Rotate the top line by 45 degrees */
#hamburger-menu-checkbox:checked~label span:before {
  transform: rotate(45deg);
}

/* Rotate the bottom line by 45 degrees in the opposite direction */
#hamburger-menu-checkbox:checked~label span:after {
  transform: rotate(-45deg);

}


@media  (max-width: 550px) {

  .navbar-links a {
    display: none;
  }

  .burger {
    display: flex; 
  } 
}

</style>
