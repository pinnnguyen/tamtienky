const teleport = $('.teleport')

const template = `<div>
<div v-if="toggle" class="bg-[#1d160e] p-3 transform-center text-white fixed border-2 border-[#dcc18d] z-[999] w-[90%] rounded sm:w-[640px] md:w-[640px] lg:w-[640px]">
    <button @click="close" class="flex items-center justify-center absolute top-[-10px] right-[-10px] bg-[#9C7A54] w-[28px] h-[28px] rounded-full text-[#F5ECE1]">
        <svg class="w-[14px] svg-inline--fa fa-times fa-w-10 center_div" aria-hidden="true" focusable="false" data-prefix="fal" data-icon="times" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg="">
            <path
                fill="currentColor"
                d="M193.94 256L296.5 153.44l21.15-21.15c3.12-3.12 3.12-8.19 0-11.31l-22.63-22.63c-3.12-3.12-8.19-3.12-11.31 0L160 222.06 36.29 98.34c-3.12-3.12-8.19-3.12-11.31 0L2.34 120.97c-3.12 3.12-3.12 8.19 0 11.31L126.06 256 2.34 379.71c-3.12 3.12-3.12 8.19 0 11.31l22.63 22.63c3.12 3.12 8.19 3.12 11.31 0L160 289.94 262.56 392.5l21.15 21.15c3.12 3.12 8.19 3.12 11.31 0l22.63-22.63c3.12-3.12 3.12-8.19 0-11.31L193.94 256z"
            ></path>
        </svg>
    </button>
    <div class="flex flex-col items-center justify-center mb-3"><p class="text-center text-[#dcc18d] text-sm font-bold mb-2 uppercase">Nhận tài nguyên rời mạng</p></div>
        <p v-if="!response.status" class="text-center">
            {{ response.message }}
    </p>
        <div v-else="response.status">
        <div class="flex items-center justify-center">
        <p class="text-2xl text-[#ffeb00] text-center font-bold mx-2">
        +
        <span>{{ response.exp }}</span>
        XP
        </p>
        <p class="text-2xl text-[#ffeb00] text-center font-bold flex items-center mx-2">
        <img class="w-[20px] pb-[2px] pr-[2px]" src="bag/images/00578.png" alt="">
        <span>{{ response.resource }} Linh thạch</span>
</p>
</div>
        
        <p class="text-sm text-white text-center font-bold mt-2">
            <span>{{ response.minNum }} Phút</span>
        </p>
<!--    <div class="text-center"><button class="button_yes">Đột phá</button></div>-->
</div>
</div>


</div>`

export const takeResource = async () => {
    return {
        template: template,
        setup(props, context) {

            const toggle = Vue.ref(false)
            const response = Vue.ref({})

            Vue.onMounted(() => {
                console.log('mounted')
                $('#take-resource').unbind('click').bind('click', async function () {
                    toggle.value = true
                    context.emit('overlayApp', true)
                    const sid = $(this).attr('sid')
                    axios.get(`/afk/takeresource.php?sid=${sid}`).then((res) => {
                        response.value = res.data
                    })
                })
            })

            const close = () => {
                toggle.value = false
                context.emit('overlayApp', false)
            }


            return {
                toggle,
                close,
                response
            };
        },
    };
};