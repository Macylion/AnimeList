<template>
	<div class="container">
		<div class="shadow"></div>
	</div>
</template>

<script>
export default {

}
</script>

<style lang="scss" scoped>
	.container{
		box-shadow: inset 0px 0px 0px 50px #031627;
		background-image: url("https://images.saymedia-content.com/.image/t_share/MTc0NDg4MjYyMzY5NDIwOTM0/reapers-reviews-the-promised-neverland.jpg");
		background-repeat: no-repeat;
		background-size: cover;
		background-position: center;
		height: 1000px;
		width: 100vw;
		.shadow{
			width: 100vw;
			height: 100%;
			box-shadow:inset 0px 0px 0px 0px #031627;
			background: linear-gradient(0deg, #031627 0%, transparent 90%);
		}
	}

</style>