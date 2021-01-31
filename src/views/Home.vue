<template>
	<div class="home">
		<top-bar />
		<banner />
		<carousel />
	</div>
</template>

<script>
	import topBar from '../components/topBar'
	import banner from '../components/banner'
	import carousel from '../components/carousel'
	export default{
		name: 'Home',
		components:{
			topBar,
			banner,
			carousel
		}
	}
</script>

<style lang="scss" scoped>

</style>
