<template>
	<div class="carousel">
		<tile />
		<tile />
		<tile />
		<tile />
		<tile />
		<tile />
		<tile />
		<tile />
		<tile />
		<tile />
	</div>
</template>

<script>
import tile from './tile';
export default {
	components:{
		tile
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