const template = `
<div v-show="show">
    <div class="bg-[#1d160e] p-3 transform-center text-white fixed border-2 border-[#dcc18d] z-[999] w-[90%] rounded sm:w-[640px] md:w-[640px] lg:w-[640px]">
        <button class="flex items-center justify-center absolute top-[-10px] right-[-10px] bg-[#9C7A54] w-[28px] h-[28px] rounded-full text-[#F5ECE1]" @click="close"><svg class="w-[14px] svg-inline--fa fa-times fa-w-10 center_div" aria-hidden="true" focusable="false" data-prefix="fal" data-icon="times" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M193.94 256L296.5 153.44l21.15-21.15c3.12-3.12 3.12-8.19 0-11.31l-22.63-22.63c-3.12-3.12-8.19-3.12-11.31 0L160 222.06 36.29 98.34c-3.12-3.12-8.19-3.12-11.31 0L2.34 120.97c-3.12 3.12-3.12 8.19 0 11.31L126.06 256 2.34 379.71c-3.12 3.12-3.12 8.19 0 11.31l22.63 22.63c3.12 3.12 8.19 3.12 11.31 0L160 289.94 262.56 392.5l21.15 21.15c3.12 3.12 8.19 3.12 11.31 0l22.63-22.63c3.12-3.12 3.12-8.19 0-11.31L193.94 256z"></path></svg></button>
        <div class="flex flex-col items-center justify-center mb-3">
            <p class="text-center text-[#dcc18d] text-sm font-bold mb-2 uppercase">Đột phá cảnh giới</p>
        </div>

        <div class="flex justify-between">
            <div class="w-[45%]">
                <p class="font-10 uppercase mb-1">Cảnh giới trước mắt</p>
                <div class="border border-[#dcc18d] bg-[#2d251d] rounded h-[35px] leading-[35px] text-center">
                    {{ levelInfo.nextLevel }} {{ levelInfo.levelNum }}
                </div>
            </div>
            <div class="w-[45%]">
                <p class="font-10 uppercase mb-1">Linh thạch cần</p>
                <div class="border border-[#dcc18d] bg-[#2d251d] rounded h-[35px] leading-[35px] text-center flex items-center justify-center">
                    <img class="w-[20px] pb-[2px] pr-[2px]" src="bag/images/00578.png" alt="">
                    {{ levelInfo.useLinhThach }} / {{ levelInfo.playerLinhThach }}
                </div>
            </div>
        </div>
        <div class="mt-4">
            <p class="font-10 uppercase mb-1" v-if="notify">{{ notify }}</p>
            <div v-if="attribute" class="border border-[#dcc18d] bg-[#2d251d] rounded text-center flex justify-between text-xs">
                <div class="p-2">
                    <div class="flex items-center p-1"><div class="mr-1">Sát thương vật lý</div> <div class="text-[#4caf50] text-sm">+{{ attribute.attach }}</div></div>
                    <div class="flex items-center p-1"><div class="mr-1">Phòng thủ vật lý</div > <div class="text-[#4caf50] text-sm">+{{ attribute.def }}</div></div>
                    <div class="flex items-center p-1"><div class="mr-1">Máu</div> <div class="text-[#4caf50] text-sm">+{{ attribute.hp }}</div></div>
                </div>
            </div>
        </div>
        <div class="text-center"><button @click="levelUp" class="button_yes">Đột phá</button></div>
    </div>
</div>
`
export const levelComponent = async () => {
    return {
        template: template,
        setup(prop, context) {
            const show = Vue.ref(false)
            const sid = Vue.ref('')
            const attribute = Vue.ref(null)
            const levelInfo = Vue.ref({})
            const notify = Vue.ref('')

            Vue.onMounted(() => {
                console.log('context', context)
                $('.upgrade-level').unbind('click').bind('click', function () {
                    show.value = !show.value
                    context.emit('overlayApp', show.value)
                    sid.value = $(this).attr('sid')
                    axios.get(`/upgrade/index.php?sid=${sid.value}`).then(res => {
                        levelInfo.value = res.data['playerLevelInfo']
                    })
                });
            });

            const levelUp = () => {
                axios.get(`/upgrade/index.php?sid=${sid.value}&canshu=tupo`).then(res => {
                    attribute.value = res.data['attribute']
                    notify.value = res.data['notify']
                })
            }

            const close = () => {
                show.value = false
                context.emit('overlayApp', false)
            }

            return {
                sid,
                close,
                show,
                levelUp,
                notify,
                levelInfo,
                attribute
            }
        }
    }
}