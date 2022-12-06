import { marketComponent } from './market.js'
import { levelComponent} from './lvup.js'
import { takeResource } from './afk/takeResource.js'
import { setMap } from './afk/setMap.js'

const template = `
<div :class="{'blocker': blocker}">
    <market />
    <setmap />
    <takeresource />
    <uplevel @overlayApp="onOverlayApp" />
</div>
`
const store = new Vuex.Store({
    state: {
        counter: 0
    },
    getters: {
        counter: state => state.counter
    },
    mutations: {
        increment: state => state.counter++,
        decrement: state => state.counter--
    }
})

const app = async () => {
    return {
        template: template,
        components: {
            'market': await marketComponent(),
            'uplevel': await levelComponent(),
            'takeresource': await takeResource(),
            'setmap': await setMap()
        },
        setup() {
            const blocker = Vue.ref(false)

            const onOverlayApp = (overlay) => {
                blocker.value = overlay
            }

            return {
                blocker,
                onOverlayApp,
            }
        },
    };
};

const init = async () => {
    const i = Vue.createApp(await app());
//   const routings = VueRouter.createRouter({
//     history: VueRouter.createWebHashHistory(),
//     routes: [
//       // {path:'/', component: await two()},
//     ],
//   });

    i.use(store);
    i.mount("#app");
};

init();
