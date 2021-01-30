<template>
	<div class="container" :style="'background-image: url(' + img + ')'">
		<div class="shadow"></div>
		<div class="title">{{name}}</div>
	</div>
</template>

<script>
export default {
	props:['name','img']
	}
</script>

<style lang="scss" scoped>
	.container {
		text-align: left;
		display: inline-block;
		height: 223px;
		width: 153.3px;
		// background-image: url("https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx124080-yXw5kfUubV8s.jpg");
		background-repeat: no-repeat;
		background-size: cover;
		background-position: center;
		position: relative;
		font-family: 'Lato', sans-serif;
		overflow: hidden;
		margin-right: 1%;
		.title{
			width: calc(153.3px - .8em - .2em);
			background: #031627;
			background: linear-gradient(0deg, #031627 0%, transparent 90%);
			position: absolute;
			bottom: 0;
			font-size: 10.8px;
			color: white;
			font-family: 'Lato', sans-serif;
			font-weight: 700;
			padding-bottom: .8em;
			padding-left: .8em;
			padding-right: .2em;
			padding-top: calc(223px - 69px);
			overflow: hidden;
			display: inline-block;
			white-space: nowrap;
			text-overflow: ellipsis;
			
		}
		.shadow {
			background: radial-gradient(121.71% 64.04% at 50% 45.24%, rgba(3, 22, 39, 0) 0%, rgba(3, 22, 39, 0.8) 100%);
			position: absolute;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
		}
	}
</style>