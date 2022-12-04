import { marketComponent } from './market.js'
import { levelComponent } from './lvup.js'

const app = async () => {
    let template = await fetch("src/app.html");
    template = await template.text();
    return {
        template: template,
        components: {
            'market': await marketComponent(),
            'uplevel': await levelComponent()
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

//   index.use(routings);
    i.mount("#app");
};

init();
