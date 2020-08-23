
const env = process.env
const GRAHPQL_HOST = env.GRAHPQL_HOST ? env.GRAHPQL_HOST : "localhost";
const GRAPHQL_PORT = env.GRAPHQL_PORT ? env.GRAPHQL_PORT : "8080";


export default {
  mode: 'universal',
  /*
  ** Headers of the page
  */
  head: {
    title: process.env.npm_package_name || '',
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: process.env.npm_package_description || '' }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }
    ]
  },
  /*
  ** Customize the progress-bar color
  */
  loading: { color: '#fff' },
  /*
  ** Global CSS
  */
  css: [
  ],
  /*
  ** Plugins to load before mounting the App
  */
  plugins: [
  ],
  /*
  ** Nuxt.js dev-modules
  */
  buildModules: [
  ],
  /*
  ** Nuxt.js modules
  */
  modules: [
    '@nuxtjs/apollo',
    '@nuxtjs/vuetify'
  ],
  apollo: {
    clientConfigs: {
      default: {
        // GraphQLサーバーのエンドポイント
        httpEndpoint: 'http://' + GRAHPQL_HOST + ':' + GRAPHQL_PORT + '/query',
        browserHttpEndpoint: 'http://' + GRAHPQL_HOST + ':' + GRAPHQL_PORT + '/query'
      }
    },
  },
  /*
  ** Build configuration
  */
  build: {
    /*
    ** You can extend webpack config here
    */
    extend(config, ctx) {
    }
  }
}
