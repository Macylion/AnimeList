<template>
	<div id="nav" class="navigation">
		<div class="nav-inner-wrapper">
			<div class="nav-profile-menu" @click="toggleMenuOpen">
				<div class="nav-profile-visible">
					<div class="nav-profile-icon">
						<img :src="iconUrl" alt="">
					</div>
					<span class="" v-if="menuOpen">
						<font-awesome-icon icon="chevron-up" />
					</span>
					<span class="" v-else>
						<font-awesome-icon icon="chevron-down" />
					</span>
				</div>
				<div class="nav-submenu" v-if="menuOpen">
					<div class="nav-submenu-item">
						<font-awesome-icon icon="user" /> Profile
					</div>
					<div class="nav-submenu-item">
						<font-awesome-icon icon="cog" /> Settings
					</div>
					<div class="nav-submenu-item">
						<font-awesome-icon icon="sign-out-alt" /> Logout
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
export default {
	data() {
		return {
			iconUrl: 'https://cdn.akamai.steamstatic.com/steamcommunity/public/images/avatars/fb/fb04cab094b04df7988631bc5625d3d2fe6edb3b_full.jpg',
			menuOpen: null,
		}
	},
	mounted() {
		this.menuOpen = false;
	},
	methods: {
		toggleMenuOpen() {
			this.menuOpen = !this.menuOpen
		}
	}
}
</script>

<style lang="scss">
	.navigation {
		font-family: 'Rubik', sans-serif;
		width: 100%;
		background-color: #031627;
		color: #3367A4;
		height: 48px;
		position: sticky;
		top: 0;
		left: 0;
		@media screen and (min-width: 720px) {
			display: flex;
			align-items: center;
			justify-content: center;
			.nav-inner-wrapper {
				width: 80%;
				height: 100%;
			}
		}
		.nav-inner-wrapper {
			padding-left: 12px;
			padding-right: 12px;
			display: flex;
			justify-content: flex-end;
			align-items: center;
		}
	}
	.nav-profile-menu {
		display: flex;
		flex-direction: column;
		.nav-profile-visible {
			height: 48px;
			cursor: pointer;
			display: flex;
			flex-direction: row;
			align-items: center;
			&:hover {
				.nav-profile-icon {
					border-radius: 100%;
				}
			}
		}
	}
	.nav-profile-icon {
		width: 32px;
		height: 32px;
		margin-right: 12px;
		border-radius: 8px;
		overflow: hidden;
		transition: all .4s;
		img {
			width: 100%;
			height: 100%;
		}
	}
	.nav-submenu {
		background-color:#3367A4;
		color:  #031627;
		position: absolute;
		top: 48px;
		border-top-left-radius: 24px;
		border-bottom-right-radius: 24px;
		font-weight: 700px;
	}
</style>