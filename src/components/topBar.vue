<template>
	<div class="bar">
		<div id="hamburger">
			<div class="hamburger_bar"></div>
			<div class="hamburger_bar"></div>
			<div class="hamburger_bar"></div>
		</div>
	</div>
</template>

<script>
export default {

}
</script>

<style lang="scss" scoped>
	.bar{
		overflow: hidden;
		background-color: #031627;
		width: 100%;
		height: 47px;
		#hamburger{
			margin-top: 13px;
			margin-left: 3.12%;
			overflow: hidden;
			width: 25px;
			height: 21px;
			.hamburger_bar{
				border-radius: 100px;
				width: 25px;
				height: 3.5px;
				margin-bottom: 5px;
				background-color: #3367A4;
			}
			&:hover{
				cursor: pointer;
			}
		}
	}
</style>