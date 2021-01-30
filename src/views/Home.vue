<template>
	<div class="home">
		<topBar />
		<banner />
		<tile :class="'test'" />
	</div>
</template>

<script>
	import banner from '../components/banner';
	import topBar from '../components/topBar';
	import tile from '../components/tile';
	export default{
		name: 'Home',
		components:{
			banner,
			topBar,
			tile
		}
	}
</script>

<style lang="scss" scoped>

</style>
