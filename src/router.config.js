// import Home from './components/Home.vue'
// import Category from './components/Category.vue'
// import Cart from './components/Cart.vue'
// import GoodsDetail from './components/GoodsDetail.vue'
// import SearchPage from './components/SearchPage.vue'
// import Mine from './components/Mine.vue'
import Login from './components/Login.vue'
import Reg from './components/Reg.vue'
import SearchPage from './components/SearchPage.vue'
import SelectPage from './components/SelectPage.vue'
import Home from './components/HomePage.vue'
import HelloWorld from './components/HelloWorld.vue'
export default [
    {
    path: '/home',
    component: Home,
    // メタフィールド
    meta: { requiresAuth: true }
},
// {
//     path: '/catgory',
//     component: Category
// }, {
//     path: '/cart',
//     component: Cart
// }, {
//     path: '/search',
//     component: SearchPage
// }, {
//     path: '/mine',
//     component: Mine
// }, 
{
    path: '/login',
    component: Login
}, {
    path: '/register',
    component: Reg
}
// , {
//     path: '/helloWorld',
//     component: HelloWorld
// },{
//     path: '/search',
//     component: SearchPage
// },{
//     path: '/select',
//     component: SelectPage
// }
// ,{
//     path: '/catgory/:id',
//     component: Category
// }, {
//     path: '/detail/:id',
//     component: GoodsDetail
// }
, {
    path: '/',
    redirect: '/login'
}, {
    path: '*',
    redirect: '/login'
}
]
