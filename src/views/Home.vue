<template>
	<div class="home">
		<topBar />
		<banner />
		<carousel />
	</div>
</template>

<script>
	import banner from '../components/banner';
	import topBar from '../components/topBar';
	import carousel from '../components/carousel';
	export default{
		name: 'Home',
		components:{
			banner,
			topBar,
			carousel
		}
	}
</script>

<style lang="scss" scoped>

</style>
