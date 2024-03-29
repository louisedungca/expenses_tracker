const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        serif: ['Rubik', ...defaultTheme.fontFamily.serif],
        sans: ['Space Mono', ...defaultTheme.fontFamily.sans],
      },
      boxShadow: {
        "retro__dark": "5px 5px 0px 0px rgba(28, 25, 23, 0.85)",
        "retro__inset": "inset 5px 5px 0px 0px rgba(28, 25, 23, 0.85)",
        "retro__circle": "3px 3px 0px 0px rgba(28, 25, 23, 0.85)",
      },
      fontSize: {
        fSize__xl: "clamp(2.5rem, 1.969rem + 2.8319vw, 6.5rem)",
        fSize__lg: "clamp(0.85rem, 0.7173rem + 0.708vw, 1.85rem)",
        fSize__md: "clamp(0.75rem, 0.6903rem + 0.3186vw, 1.2rem)",
        fSize__sm: "clamp(0.7rem, 0.6735rem + 0.1416vw, 0.9rem)",
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}