<template>
	<div class="container">
		<div class="shadow"></div>
		<div class="shadow2"></div>
	</div>
</template>

<script>
export default {

}
</script>

<style lang="scss" scoped>
	.container{
		position: relative;
		background-image: url("https://cdn.discordapp.com/attachments/804903980030623806/805197383096991754/The-Promised-Neverland-Featured.png");
		background-repeat: no-repeat;
		background-size: cover;
		background-position: center;
		height: 850px;
		width: 100%;
		.shadow{
			position: absolute;
			width: 100%;
			height: 50%;
			background: linear-gradient(360deg, rgba(3, 22, 39, 0) 0%, rgba(3, 22, 39, 1) 100%);
		}
		.shadow2{
			position: absolute;
			width: 100%;
			bottom: 0;
			height: 50%;
			background: linear-gradient(0deg, #031627 0%, transparent 90%);
		}
	}

</style>