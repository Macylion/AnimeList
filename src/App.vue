<template>
	<div id="app">
		<!-- <div id="nav"> -->
			<!-- <router-link to="/">Home</router-link> |
			<router-link to="/about">About</router-link> -->
		<!-- </div> -->
		<top-bar />
		<router-view />
	</div>
</template>

<script>
import TopBar from './components/top-bar/TopBar';
export default {
	components: {
		TopBar,
	}

}
</script>

<style lang="scss">
	//rwd
	$mobileMaxWidth: 768px;

	//colors
	$primary: #F45B69;
	$accent: #456990;
	$dark: #114B5F;
	$light: #E4FDE1;
	$blue: #028090;

	$colors: (
		"primary": $primary,
		"accent": $accent,
		"dark": $dark,
		"light": $light,
		"blue": $blue
	);

	$white: #E5E5E5;
	$black: #222222;
	$darkgray: #414042;
	$lightgray: #D1D3D4;
	$decentdark: #2F3538;

	//topography
	$roboto: 'Roboto', sans-serif;
	$rubik: 'Rubik', sans-serif;
	$fontBold: 700;
	$fontLight: 300;

	:root{
		--mobileMaxWidth: #{$mobileMaxWidth};

		--primary: #{$primary};
		--accent: #{$accent};
		--dark: #{$dark};
		--light: #{$light};
		--blue: #{$blue};

		--white: #{$white};
		--black: #{$black};
		--darkgray: #{$darkgray};
		--lightgray: #{$lightgray};
		--decentdark: #{$decentdark};

		--roboto: #{$roboto};
		--rubik: #{$rubik};
		--fontBold: #{$fontBold};
		--fontLight: #{$fontLight};
	}

	//init
	html, body {
		padding: 0;
		margin: 0;
		background-color: var(--white);
		color: var(--dark);
		min-height: 100vh;
		font-family: var(--rubik);
		font-weight: var(--fontLight);
	}
	* {
		box-sizing: border-box;
	}

	//background
	@each $name, $color in $colors {
		.bg-#{$name} {
			background-color: $color;
		}
	}
	//font colors
	@each $name, $color in $colors {
		.font-color-#{$name} {
			color: $color;
		}
	}
	//background with colors
	@each $bgname, $bgcolor in $colors {
		@each $fname, $fcolor in $colors {
			.is-#{$bgname}-#{$fname} {
				background-color: $bgcolor;
				color: $fcolor;
			}
		}
	}
	//fonts
	.rubik-bold {
		font-family: $rubik;
		font-weight: $fontBold;
	}
	.rubik-light {
		font-family: $rubik;
		font-weight: $fontLight;
	}
	.roboto-bold {
		font-family: $roboto;
		font-weight: $fontBold;
	}
	.roboto-light {
		font-family: $roboto;
		font-weight: $fontLight;
	}
	//grid
	.grid-row {
		display: grid;
		grid-template-columns: repeat(12, 1fr);
		grid-gap: 0;
	}
	.grid-col-1 {
		grid-column: span 1;
		@media screen and (max-width: $mobileMaxWidth) { grid-column: span 12; }
	}
	.grid-col-2 {
		grid-column: span 2;
		@media screen and (max-width: $mobileMaxWidth) { grid-column: span 12; }
	}
	.grid-col-3 {
		grid-column: span 3;
		@media screen and (max-width: $mobileMaxWidth) { grid-column: span 12; }
	}
	.grid-col-4 {
		grid-column: span 4;
		@media screen and (max-width: $mobileMaxWidth) { grid-column: span 12; }
	}
	.grid-col-5 {
		grid-column: span 5;
		@media screen and (max-width: $mobileMaxWidth) { grid-column: span 12; }
	}
	.grid-col-6 {
		grid-column: span 6;
		@media screen and (max-width: $mobileMaxWidth) { grid-column: span 12; }
	}
	.grid-col-7 {
		grid-column: span 7;
		@media screen and (max-width: $mobileMaxWidth) { grid-column: span 12; }
	}
	.grid-col-8 {
		grid-column: span 8;
		@media screen and (max-width: $mobileMaxWidth) { grid-column: span 12; }
	}
	.grid-col-9 {
		grid-column: span 9;
		@media screen and (max-width: $mobileMaxWidth) { grid-column: span 12; }
	}
	.grid-col-10 {
		grid-column: span 10;
		@media screen and (max-width: $mobileMaxWidth) { grid-column: span 12; }
	}
	.grid-col-11 {
		grid-column: span 11;
		@media screen and (max-width: $mobileMaxWidth) { grid-column: span 12; }
	}
	.grid-col-12 {
		grid-column: span 12;
		@media screen and (max-width: $mobileMaxWidth) { grid-column: span 12; }
	}
	//additional classes
	.w-100 {
		width: 100%;
	}
	.w-75 {
		width: 75%;
	}
	.w-66 {
		width: 66.66%;
	}
	.w-50 {
		width: 50%;
	}
	.w-33 {
		width: 33.33%;
	}
	.w-25 {
		width: 25%;
	}
	.w-auto {
		width: auto;
	}
	
</style>
