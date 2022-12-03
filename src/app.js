import {formatCash} from '../src/helper.js'

const theBag = async () => {
    let template = await fetch("src/thebag.html");
    template = await template.text();

    return {
        template: template,
        setup() {
            const show = Vue.ref(false)
            const items = Vue.ref({})
            const tab = Vue.ref('equipment')

            const itemsTab = Vue.computed(() => {
                return tab.value === 'equipment' ? items.value.equipments : items.value.tools;
            })

            const player = Vue.computed(() => {
                return {
                    'sid': items.value.player?.sid,
                    'linhthach': formatCash(items.value.player?.linhthach),
                    'cucphamlinhthach': formatCash(items.value.player?.cucphamlinhthach)
                }
            })

            Vue.onMounted(() => {
                handleShowBag()
            });

            const closeMarket = () => {
                show.value = false
                $('#the-main').removeClass('hidden')
            }

            const handleShowBag = () => {
                const $_Bag = document.getElementById("thebag")
                $_Bag.addEventListener("click", function () {
                    show.value = true
                    $('#the-main').addClass('hidden')

                    const fangshi = $_Bag.getAttribute("fangshi")
                    const sid = $_Bag.getAttribute("sid")
                    loadBag(fangshi, sid)

                });
            }

            const loadBag = (fangshi, sid) => {
                axios
                    .get(`/market/market.php`, {
                        params: {
                            fangshi: fangshi,
                            sid: sid,
                        }
                    })
                    .then((response) => {
                        console.log("response", response);
                        items.value = response.data
                    })
                    .catch((error) => {
                        console.error(error);
                    });
            }

            const equipmentInfo = (item) => {
                const teleport = $('.teleport')

                if (tab.value === 'equipment') {
                    teleport.html(`
                <div class="p-3">
                    <div class="flex flex-col items-center justify-center mb-3">
                        <p class="text-center text-[#dcc18d] text-sm font-bold mb-2">${item.name} ${item.zbqh}</p>
                        <img class="w-[85px]" src="${item.preview_url}" alt="">
                    </div>
                    
                    <div class="flex justify-between">
                        <div class="w-[45%]">
                            <p class="font-10 uppercase mb-1">Số lượng</p>
                            <div class="border border-[#dcc18d] bg-[#2d251d] rounded h-[35px] leading-[35px] text-center">1</div>
                        </div>
                         <div class="w-[45%]">
                            <p class="font-10 uppercase mb-1">Thành tiền</p>
                            <div class="border border-[#dcc18d] bg-[#2d251d] rounded h-[35px] leading-[35px] text-center flex items-center justify-center">
                                <img class="w-[20px] pb-[2px] pr-[2px]" src="bag/images/00578.png" alt="">
                                ${item.pay}
                            </div>
                        </div>
                    </div>
                    <div class="mt-4">
                        <p class="font-10 uppercase mb-1">Thông tin</p>
                         <div class="border border-[#dcc18d] bg-[#2d251d] rounded text-center flex justify-between text-xs">
                            <div class="p-2">
                                <div class="flex items-center p-1"><div class="mr-1">Sát thương vật lý</div> <div>${item.attach}</div></div>
                                <div class="flex items-center p-1"><div class="mr-1">Phòng thủ vật lý</div> <div>${item.def}</div></div>
                                <div class="flex items-center p-1"><div class="mr-1">Chí mạng</div> <div>${item.baokich}</div></div>
                            </div>
                            <div class="p-2">
                              <div class="flex items-center p-1"><div class="mr-1">Máu</div> <div>${item.hp}</div></div>
                              <div class="flex items-center p-1"><div class="mr-1">Hút máu</div> <div>${item.hutmau}</div></div>
                            </div>
                         </div>
                    </div>
                    <div class="text-center"><button id="buy-now" class="button_yes">Xác nhận</button></div>
                </div>
        `)
                    teleport.find('#buy-now').unbind('click').bind('click', function () {
                        axios
                            .get(`/market/market.php`, {
                                params: {
                                    sid: player.value.sid,
                                    fangshi: 'zhuangbei',
                                    buycount: 1,
                                    payid: item.payid,
                                    canshu: 'buy'
                                }
                            })
                            .then((response) => {
                                $.modal.close()

                                $.notify(response.data, {
                                    style: 'normal',
                                    globalPosition: 'bottom right',

                                })
                                loadBag('zhuangbei', player.value.sid)
                            })
                            .catch((error) => {
                                console.error(error);
                            });
                    })
                } else {
                    teleport.html(`<div class="p-3">
                        <div class="flex flex-col items-center justify-center mb-3">
                            <p class="text-center text-[#dcc18d] text-sm font-bold mb-2">${item.name}</p>
                            <img class="w-[85px]" src="undefined" alt="">
                        </div>
                        
                        <div class="flex justify-between">
                            <div class="w-[45%]">
                                <p class="font-10 uppercase mb-1">Số lượng</p>
                                <div class="border border-[#dcc18d] bg-[#2d251d] rounded h-[35px] leading-[35px] text-center">${item.count}</div>
                            </div>
                             <div class="w-[45%]">
                                <p class="font-10 uppercase mb-1">Thành tiền</p>
                                <div class="border border-[#dcc18d] bg-[#2d251d] rounded h-[35px] leading-[35px] text-center flex items-center justify-center">
                                    <img class="w-[20px] pb-[2px] pr-[2px]" src="bag/images/00578.png" alt="">
                                    2
                                </div>
                            </div>
                        </div>
                        <div class="mt-4">
                            <p class="font-10 uppercase mb-1">Thông tin</p>
                             <div class="border border-[#dcc18d] bg-[#2d251d] rounded text-center flex justify-between text-xs">
                                <div class="text-center leading-[40px] w-full">${item.djinfo}</div>
                             </div>
                        </div>
                        <div class="text-center"><button id="buy-now" class="button_yes">Xác nhận</button></div>
                    </div>`)

                    teleport.find('#buy-now').unbind('click').bind('click', function () {
                        axios
                            .get(`/market/market.php`, {
                                params: {
                                    sid: player.value.sid,
                                    fangshi: 'daoju',
                                    buycount: item.count,
                                    payid: item.payid,
                                    canshu: 'buy'
                                }
                            })
                            .then((response) => {
                                $.modal.close()

                                $.notify(response.data, {
                                    style: 'normal',
                                    globalPosition: 'bottom right',

                                })
                                loadBag('zhuangbei', player.value.sid)
                            })
                            .catch((error) => {
                                console.error(error);
                            });
                    })
                }

                teleport.modal({
                    fadeDuration: 100
                });
            }

            return {
                show,
                items,
                tab,
                itemsTab,
                player,
                closeMarket,
                equipmentInfo,
            };
        },
    };
};

const app = async () => {
    let template = await fetch("src/app.html");
    template = await template.text();
    return {
        template: template,
        components: {
            'thebag': await theBag(),
        },
        setup() {
            /*...*/
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
