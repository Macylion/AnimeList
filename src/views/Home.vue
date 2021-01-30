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
	}
	.test {
		width: 100.8px;
		height: 142.8px;
	}
</style>
