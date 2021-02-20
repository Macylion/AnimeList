<template>
	<div>
		<div v-if="this.medium" class="medium-container">
			medium.title.english
			<b-button type="is-primary is-light">Primary</b-button>
		</div>
		<div class="medium-error" v-else>
			Anime/Manga is not fetched
		</div>
	</div>
</template>

<script>
const axios = require('axios').default;
import mediumQuery from '../queries/medium.graphql'
export default {
	name: "medium",
	data() {
		return {
			medium: null,
		}
	},
	mounted() {
		axios.post(mediumQuery.url, {
			query: mediumQuery.query,
			variables: {
				id: this.$route.params.item
			}
		})
		.then(res => { console.log(res); return res.data.data.Media })
		.then(data => {
			this.medium = data
		})
	}
}
</script>

<style lang="scss">
	.medium-container {
		min-height: 100vh;
		background-color: wheat;
	}
</style>