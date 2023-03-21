import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'


const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  // linkActiveClass: 'my-awesome-active-link', 
  routes: [
    {
      path: '/',
      name: 'home',
      component: HomeView,
    },
    {
      path: '/about',
      name: 'about',
      component: () => import('../views/AboutView.vue')
    },
    {
      path: '/add',
      name: 'add',
      component: () => import('../views/AddBlog.vue')
    },
    {
      path: '/log',
      name: 'log',
      component: () => import('../views/LogView.vue')
    },
    {
      path: '/post/:id',
      name: 'post.show',
      component: () => import('../views/DetailsBlog.vue')
    }
  ]
})

export default router
