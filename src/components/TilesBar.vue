<template>
	<div id="tilesbar-container">
		<div id="tilesbar-selection" class="font-color-light rubik-bold">
			<span class="iconify" data-icon="dashicons:arrow-down-alt2"> </span>
			<div id="tilesbar-selection-choice">
				<span>Anime</span>
				<span>Manga</span>
			</div>
		</div>
	</div>
</template>

<script>
export default {

}
</script>

<style lang="scss">
	#tilesbar-container{
		margin-top: 2px;
		height: 330px;
		background-color: var(--primary);
		padding-top: 16px;
		#tilesbar-selection{
			padding-top: 7px;
			font-size: 20px;
			display: flex;
			justify-content: left;
			flex-direction: row;
			margin-left: 128px;
			width: 143px;
			height: 38px;
			background-color: var(--dark);
			padding-left: 13px;
			border-radius: 2px;
			overflow: hidden;
			&:hover{
					height: 76px;
					cursor: pointer;
			}
			.iconify{
				font-size: 22px;
				margin-top: 1px;
			}
			#tilesbar-selection-choice{
				display: flex;
				justify-content: left;
				align-items: center;
				flex-direction: column;
				margin-left: 15px;
				span{
					padding-bottom: 10px;
				}
			}
		}
	}
</style>