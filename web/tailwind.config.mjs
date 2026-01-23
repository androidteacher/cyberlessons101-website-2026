/** @type {import('tailwindcss').Config} */
export default {
    content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
    theme: {
        extend: {
            colors: {
                cyber: {
                    primary: '#0ea5e9', // Sky blue
                    secondary: '#d946ef', // Fuchsia
                    dark: '#0f172a', // Slate 900
                    darker: '#020617', // Slate 950
                    surface: '#1e293b', // Slate 800
                    text: '#f8fafc', // Slate 50
                }
            },
            fontFamily: {
                sans: ['Inter', 'sans-serif'],
                mono: ['Fira Code', 'monospace'],
            }
        },
    },
    plugins: [],
}
