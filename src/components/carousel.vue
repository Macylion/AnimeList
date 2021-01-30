<template>
	<div class="carousel">
		<tile name="horimiya" img="https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx124080-yXw5kfUubV8s.jpg"/>
	</div>
</template>

<script>
import tile from './tile';
export default {
	components:{
		tile
	},
	data(){
		return{
			anime:[]
		}
	},
	mounted(){
		
	}
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