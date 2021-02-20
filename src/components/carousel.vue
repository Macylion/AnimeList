<template>
	<div class="carousel-container">
		<!-- set -1 to scroll entire div width -->
		<img
			@click="move('right', -1, $event)" 
			class="left-row" 
			src="https://cdn.discordapp.com/attachments/804903980030623806/805235949041614928/Vector_1.png"
		>
		<!-- set 238 to scroll 238px -->
		<img 
			@click="move('left', 238, $event)" 
			class="left-right" 
			src="https://cdn.discordapp.com/attachments/804903980030623806/805238221407649812/Vector_2.png"
		>
		<div class="carousel-title">Top popular anime</div>
		<div ref="carousel" class="carousel">
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
		methods: {
			move(direction, power) {
				if(power == -1)
					power = this.$refs.carousel.offsetWidth

				if(direction === 'right')
					this.$refs.carousel.scrollLeft += power
				else if(direction === 'left')
					this.$refs.carousel.scrollLeft -= power
			}
		}
	}
</script>

<style lang="scss">
	.carousel-container{
		position: relative;
		text-align: center;
		margin-top: -14vh;
		// width: calc(100% - 80px);
		width: 100%;
		padding-left: 40px;
		padding-right: 40px;
		.left-row{
			position: absolute;
			right: 10px;
			top: 50%;
			z-index: 10;
			opacity: .5;
			cursor: pointer;
		}
		.left-right{
			position: absolute;
			left: 10px;
			top: 50%;
			z-index: 10;
			opacity: .5;
			cursor: pointer;
		}
		.carousel-title{
			width: 100%;
			padding-bottom: 10px;
			text-align: left !important;
			font-size: 30px;
			color: white;
			font-family: 'Lato', sans-serif;
		}
		.carousel{
			scroll-behavior: smooth;
			white-space: nowrap;
			overflow-x: scroll;
			overflow-y: hidden;
			&::-webkit-scrollbar{
				display: none;
			}
		}
	}
</style>