let template = await fetch("src/uplevel.htm");
const $_Teleport = $('.teleport')

export const levelComponent = async () => {
    template = await template.text();

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