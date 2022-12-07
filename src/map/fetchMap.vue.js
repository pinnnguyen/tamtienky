const template = `
<div>
    <div v-if="!toggle" @click="showMap" class="flex items-center justify-end fixed top-[65px] left-[10px] z-[9]">
     <div class="bg-[#ffeb3b] font-bold">{{ mName }}</div>
     </div>
     <div>
     <div v-if="toggle" class="bg-[#1d160e] p-3 transform-center text-white fixed border-2 border-[#dcc18d] z-[999] w-[90%] rounded sm:w-[640px] md:w-[640px] lg:w-[640px]">
    <button @click="close" class="flex items-center justify-center absolute top-[-10px] right-[-10px] bg-[#9C7A54] w-[28px] h-[28px] rounded-full text-[#F5ECE1]">
        <svg class="w-[14px] svg-inline--fa fa-times fa-w-10 center_div" aria-hidden="true" focusable="false" data-prefix="fal" data-icon="times" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg="">
            <path
                fill="currentColor"
                d="M193.94 256L296.5 153.44l21.15-21.15c3.12-3.12 3.12-8.19 0-11.31l-22.63-22.63c-3.12-3.12-8.19-3.12-11.31 0L160 222.06 36.29 98.34c-3.12-3.12-8.19-3.12-11.31 0L2.34 120.97c-3.12 3.12-3.12 8.19 0 11.31L126.06 256 2.34 379.71c-3.12 3.12-3.12 8.19 0 11.31l22.63 22.63c3.12 3.12 8.19 3.12 11.31 0L160 289.94 262.56 392.5l21.15 21.15c3.12 3.12 8.19 3.12 11.31 0l22.63-22.63c3.12-3.12 3.12-8.19 0-11.31L193.94 256z"
            ></path>
        </svg>
    </button>
    <div class="flex flex-col items-center justify-center mb-3">
    <p class="text-center text-[#dcc18d] text-sm font-bold mb-2 uppercase">Bản đồ thế giới</p></div>
    <div class="h-[calc(100vh_-_300px)] overflow-auto"> 
        <p @click="setPlayerMid(mid)" v-for="mid in prepareMids" class="p-2 m-2 bg-[#5b5151] cursor-pointer">
            <span>{{ mid.mname }}</span> <span v-if="mid.iPass">(Đã vượt qua)</span>
        </p>
    </div>
</div>

</div>
 </div>
`

export const allMap = async () => {
    return {
        template: template,
        setup(props, context) {

            const toggle = Vue.ref(false)
            const mids = Vue.ref([])
            const playerMids = Vue.ref([])
            const sid = Vue.ref(window.player.sid)

            const prepareMids = Vue.computed(() => {
                const result = [];
                for (let i = 0; i < mids.value.length; i++) {
                    const mid = mids.value[i].mid
                    let iPass = false

                    for (let j = 0; j < playerMids.value.length; j++) {
                        if (mid == playerMids.value[j].midid) {
                            iPass = true
                        }
                    }

                    result.push({
                        ...mids.value[i],
                        iPass: iPass
                    })
                }

                return result
            })

            const showMap = () => {
                axios.post(`/src/map/allmap.php`, {
                    sid: sid.value,
                }).then((res) => {
                    toggle.value = true
                    context.emit('overlayApp', true)
                    console.log('res', res)
                    mids.value = res.data?.mids
                    playerMids.value = res.data?.playermids
                })
            }

            const setPlayerMid = (midInfo) => {
                axios.post(`/src/map/setplayermid.php`, {
                    sid: sid.value,
                    mid: midInfo.mid
                }).then((res) => {
                    if (res.data?.success) {
                        const urlParams = new URLSearchParams(window.location.search);
                        urlParams.set('go', midInfo.mid);
                        window.location.search = urlParams;

                        // window.location.reload()
                    }
                })
            }

            const close = () => {
                toggle.value = false
                context.emit('overlayApp', false)
            }

            const mName = Vue.computed(() => window.currentMid.mname)
            Vue.onMounted(() => {
                console.log("currentMid", window.currentMid)
            })


            return {
                mName,
                showMap,
                toggle,
                prepareMids,
                setPlayerMid,
                close
            };
        },
    };
};