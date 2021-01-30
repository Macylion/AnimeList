<template>
	<div class="container">
		<div class="shadow"></div>
		<h1>Polecane</h1>
		<img src="https://media.vgm.io/products/13/6931/6931-1593941077.png" >
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
		background-image: url("https://images.saymedia-content.com/.image/t_share/MTc0NDg4MjYyMzY5NDIwOTM0/reapers-reviews-the-promised-neverland.jpg");
		background-repeat: no-repeat;
		background-size: cover;
		background-position: center;
		height: 850px;
		width: 100%;
		.shadow{
			position: absolute;
			width: 100%;
			height: 50%;
			background: linear-gradient(360deg, rgba(0,0,0,0) 0%, rgba(0,0,0,1) 100%);
		}
		h1{
			position: absolute;
			font-family: 'Lato', sans-serif;
			top: 25%;
			left: 4%;
			font-weight: 700;
			letter-spacing: 5px;
			font-size: 88px;
			color: white;
		}
		img{
			width: 37%;
			position: absolute;
			top: 44%;
			left: 4%;
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