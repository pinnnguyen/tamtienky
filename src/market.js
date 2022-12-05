import {formatCash} from "./helper.js";
const teleport = $('.teleport')

const template = `<div id="market" v-show="show" class="bg-[#04528e] w-full h-[100vh]">
    <div class="bg-[#083461] h-[70px] flex items-center justify-around">
        <img @click="closeMarket" src="bag/images/back.png" class="w-[35px] h-[35px] z-[99] top-[2px] left-0">
        <div class="rounded-[150px] h-[25px] bg-white w-[100px] flex items-center justify-center relative">
            <p class="font-bold">{{ player.linhthach }}</p>
            <img class="absolute right-0 w-[25px] right-[2px] top-[-1px]" src="bag/images/00578.png" alt="">
        </div>
        <div class="rounded-[150px] h-[25px] bg-white w-[100px] flex items-center justify-center relative">
            <p class="font-bold">{{ player.cucphamlinhthach }}</p>
            <img class="absolute right-0 w-[25px] right-[2px] top-[-1px]" src="bag/images/00725.png" alt="">
        </div>
    </div>
    <div class="h-[35px] market-menu flex items-center justify-center h-[80px]">
        <ul class="w-full flex justify-center">
            <li :class="{ active: tab == 'equipment' }" @click="tab = 'equipment' ">
                Trang bị
            </li>
            <li :class="{ active: tab == 'tools' }" @click="tab = 'tools' ">
                Đạo cụ
            </li>
        </ul>
    </div>
    <p v-if="items.error?.look" class="text-center text-white">{{ items.error?.message }}</p>
    <div class="market px-2 py-2">
            <div v-for="item in itemsTab" class="li w-full bg-[url('/market/images/bg-item.png')]" @click="equipmentInfo(item)">
                <div class="item">
                    <p class="w-full text-xs absolute top-0 line-clamp-2 p-1">
                        {{ item.name }} {{ item?.zbqh }}
                    </p>
                    <div class="image flex items-center justify-center">
                        <img class="w-[50%]" :src="item.preview_url" alt="">
                    </div>
                    <p class="price absolute bottom-0 bg-[#e78f00] left-[2px] border-none rounded-b-lg flex items-center justify-center">
                        <img class="w-[15px]" src="bag/images/00578.png" alt="">
                        {{ formatCurrency(Number(item?.pay)) }}
                    </p>
                </div>
            </div>
    </div>
</div>`

export const marketComponent = async () => {
    return {
        template: template,
        setup() {
            const show = Vue.ref(false)
            const items = Vue.ref({})
            const tab = Vue.ref('equipment')

            const formatCurrency = (n , currency = '') => {
                return currency + n.toFixed(1).replace(/(\d)(?=(\d{3})+\.)/g, '$1,');
            }

            const itemsTab = Vue.computed(() => {
                if (tab.value === 'equipment') {
                    return items.value?.equipments?.map(e => {
                        return {
                            ...e,
                            // pay: formatCurrency(Number(e.pay), '')
                        }
                    })
                }

                return items.value.tools
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
                if (!$_Bag) return;
                $_Bag.addEventListener("click", function () {
                    show.value = true
                    $('#the-main').addClass('hidden')

                    const fangshi = $_Bag.getAttribute("fangshi")
                    const sid = $_Bag.getAttribute("sid")
                    loadBag(fangshi, sid)

                });
            }

            const equipmentInfo = (item) => {
                if (tab.value === 'equipment') {
                    loadEquipment({
                        ...item,
                        pay: formatCurrency(Number(item.pay))
                    })
                } else {
                    loadTools({
                        ...item,
                        pay: formatCurrency(Number(item.pay))
                    })
                }

                teleport.modal({
                    fadeDuration: 100
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


            const loadEquipment = (item) => {
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
            }

            const loadTools = (item) => {
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
                                    ${item.pay}
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

            return {
                show,
                items,
                tab,
                itemsTab,
                player,
                closeMarket,
                equipmentInfo,
                formatCurrency
            };
        },
    };
};