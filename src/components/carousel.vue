<template>
	<div class="carousel">
		<tile 
			v-for="anime in animes"
			:key="anime.mal_id"
			:name="anime.title" 
			:img="anime.image_url"
		/>
	</div>
</template>

<script>
import tile from './tile';
const axios = require('axios').default;

export default {
	components: {
		tile
	},
	data() {
		return{
			animes: [],
		}
	},
	mounted(){
		axios.get('https://api.jikan.moe/v3/top/anime/1/airing')
		.then(res => res.data.top)
		.then(topAnime => {
			this.animes = [...this.animes, ...topAnime.filter(el => el.type === "TV")]
		})
	},
}
</script>

<style lang="scss" scoped>
	.carousel{
		overflow: hidden;
		margin-top: -7%;
		width: 99%;
		padding-left: 1%;
		text-align: center;
	}

</style>