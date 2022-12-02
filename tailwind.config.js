tailwind.config = {
    shortcuts: {
        'light-img': 'block dark:hidden',
        'dark-img': 'hidden dark:block',
        'btn': 'font-medium focus:outline-none disabled:cursor-not-allowed disabled:opacity-75 focus:ring-offset-white dark:focus:ring-offset-black text-xs px-2.5 py-1.5 border border-transparent text-gray-700 bg-gray-100 hover:bg-gray-200 disabled:bg-gray-100 focus:ring-2 focus:ring-offset-2 focus:ring-gray-900 inline-flex items-center rounded-lg'
    },
    theme: {
        fontSize: {
            "font-size-1": '1px',
            "font-size-2": '2px',
            "font-size-3": '3px',
            "font-size-4": '4px',
            "font-size-5": '5px',
            "font-size-5": '6px',
            "font-size-7": '7px',
            "font-size-8": '8px',
            "font-size-9": '9px',
            span: '10px',
            paragraph: `1.2rem;`
        },
        extend: {
            colors: {
                clifford: '#da373d',
            }
        }
    }
}