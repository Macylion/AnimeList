<template>
	<div class="home">
		<tile :class="'test'" />
	</div>
</template>

<script>
	import tile from '../components/tile';
	export default{
		name: 'Home',
		components:{
			tile
		}
	}
</script>

<style lang="scss">
	.home {
		width: 100vw;
	}
	.test {
		width: 30%;
		opacity: .5;
	}
</style>
