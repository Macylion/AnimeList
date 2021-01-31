<template>
	<div class="tile-container" >
		<div class="tile-content" :style="'background-image: url(' + img + ')'">
			<div class="tile-shadow"></div>
			<div class="tile-shadow2"></div>
			<span class="tile-title">{{name}}</span>
		</div>
	</div>
</template>

<script>
export default {
	props:['name','img']
}
</script>

<style lang="scss">
	.tile-container{
		text-align: left;
		display: inline-block;
		height: 282px;
		width: 198px;
		margin-right: 40px;
		.tile-content{
			position: relative;
			width: 100%;
			height: 100%;
			background-size: cover;
			background-position: center;
			.tile-title{
				width: 188px;
				padding: 5px;
				position: absolute;
				overflow: hidden;
				bottom: 0;
				font-family: 'Lato', sans-serif;
				color: white;
				white-space: nowrap;
				text-overflow: ellipsis;
			}
			.tile-shadow{
				position: absolute;
				background: linear-gradient(180deg, rgba(0,0,0,0) 0%, rgba(0,0,0,1) 100%);
				//background: linear-gradient(180deg, rgba(0,0,0,0) 0%, rgba(0,0,0,0.6110819327731092) 42%, rgba(0,0,0,1) 100%);
				width: 100%;
				height: 60%;
				bottom: 0;
			}
			.tile-shadow2{
				position: absolute;
				box-shadow: inset 0px 0px 80px 10px #031627;
				width: 100%;
				height: 100%;
			}
		}
	}
</style>