const template = `<div @click="pickMid" class="fixed top-[30px] bg-[#009688d6] right-[16px] w-[35px] text-center text-white z-[999] text-xs font-bold">
Uỷ thác tại đây
</div>`

export const setMap = async () => {
    return {
        template: template,
        setup(props, context) {

            // const toggle = Vue.ref(false)

            // const close = () => {
            //     toggle.value = false
            //     context.emit('overlayApp', false)
            // }
            // Vue.onMounted(() => {
            // })

            const pickMid = () => {
                const sid = window.player.sid
                const nowmid = window.player.nowmid

                axios.post(`/afk/pickmid.php`, {
                    sid: sid,
                    nowmid: nowmid
                }).then((res) => {
                    $.notify(res.data.message, {
                        style: 'normal',
                        globalPosition: 'bottom right'
                    })
                })
            }


            return {
                // toggle,
                // close,
                pickMid
            };
        },
    };
};