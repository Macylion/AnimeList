<template>
	<div class="carousel-container">
		<img class="left-row" src="https://cdn.discordapp.com/attachments/804903980030623806/805235949041614928/Vector_1.png">
		<img class="left-right" src="https://cdn.discordapp.com/attachments/804903980030623806/805238221407649812/Vector_2.png">
		<div class="carousel-title">Top popular anime</div>
		<div class="carousel">
			<tile 
				v-for="anime in animes"
				:key="anime.mal_id"
				:name="anime.title" 
				:img="anime.image_url"
			/>
		</div>
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

<style lang="scss">
	.carousel-container{
		position: relative;
		text-align: center;
		margin-top: -14vh;
		width: calc(100% - 80px);
		padding-left: 40px;
		padding-right: 40px;
		.left-row{
			position: absolute;
			right: 10px;
			top: 50%;
			z-index: 10;
			opacity: .5;
		}
		.left-right{
			position: absolute;
			left: 10px;
			top: 50%;
			z-index: 10;
			opacity: .5;
		}
		.carousel-title{
			widows: 100%;
			padding-bottom: 10px;
			text-align: left !important;
			font-size: 30px;
			color: white;
			font-family: 'Lato', sans-serif;
		}
		.carousel{
			white-space: nowrap;
			overflow-x: scroll;
			overflow-y: hidden;
			&::-webkit-scrollbar{
				display: none;
			}
		}
	}
</style>