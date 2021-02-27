<template>
	<div class="topbar is-blue-light w-100 rubik-bold">
		<div class="topbar-left">
			<div class="topbar-logo">
				<div class="topbar-logo-part font-color-light">Ani</div>
				<div class="topbar-logo-part font-color-primary">My</div>
			</div>
			<div class="topbar-items">
				<div class="topbar-item">Home</div>
				<div class="topbar-item">List</div>
				<div class="topbar-item">Groups</div>
				<div class="topbar-item">Forum</div>
				<div class="topbar-item">Browse</div>
			</div>
		</div>
		<div class="topbar-right">
			<div class="topbar-sub-items">
				<div class="topbar-sub-item">
					<span class="iconify" data-icon="bx:bx-search"> </span>
				</div>
				<div class="topbar-sub-item">
					<span class="iconify" data-icon="bx:bx-bell"> </span>
				</div>
				<div class="topbar-sub-item">
					<span class="iconify" data-icon="dashicons:arrow-down-alt2"> </span>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
export default {

}
</script>

<style lang="scss">
	$marginRight: 32px;

	.topbar {
		position: sticky;
		top: 0;
		height: 64px;
		padding: 0 128px;
		z-index: 2;

		.topbar-left { 
			display: inline-block;
			width: 80%;
		}
		.topbar-right {
			display: inline-block;
			width: 20%;
		}

		@media screen and (max-width: 768px) {
			display: none;
		}
	}
	.topbar-logo {
		display: inline-block;
		font-size: 32px;
		margin-right: $marginRight;
		.topbar-logo-part {
			display: inline-block;
		}
	}
	.topbar-items {
		display: inline-block;
		.topbar-item {
			display: inline-block;
			height: 64px;
			line-height: 64px;
			font-size: 24px;
			margin-right: $marginRight;
		}
	}
	.topbar-sub-items {
		display: flex;
		flex-direction: row;
		justify-content: flex-end;
		.topbar-sub-item {
			display: inline-block;
			font-size: 24px;
			margin-right: 24px;
		}
	}
</style>