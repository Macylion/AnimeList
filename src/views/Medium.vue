<template>
	<div>
		<div v-if="this.medium" class="medium-container" :style="cssVars()">
			<!-- <div class="medium-header">
				<div class="medium-header-inner">
					<h1>{{ medium.title.english }}</h1>
				</div>
			</div> -->
			<section class="hero is-medium is-primary">
				<div class="hero-body">
					<p class="title">
						{{ medium.title.english }}
					</p>
					<p class="subtitle">
						{{ medium.title.english }}, {{ medium.title.romanji }}, {{ medium.title.native }}
					</p>
				</div>
			</section>
		</div>
		<div class="medium-error" v-else>
			Anime/Manga is not fetched
		</div>
	</div>
</template>

<script>
const axios = require('axios').default;
import mediumQuery from '../queries/medium.graphql'
export default {
	name: "medium",
	data() {
		return {
			medium: null,
		}
	},
	mounted() {
		axios.post(mediumQuery.url, {
			query: mediumQuery.query,
			variables: {
				id: this.$route.params.item
			}
		})
		.then(res => res.data.data.Media)
		.then(data => {
			this.medium = data
		})
	},
	methods: {
		cssVars() {
			return {
				'--bannerImg': `url('${this.medium.bannerImage}')`
			}
		}
	},
}
</script>

<style lang="scss">
	:root {
		--bgColor: white;
		--primary: #782FEF;
		--secondary: #18F045;
		--tertiary: #F0A348;
	}
	@import "~bulma/sass/utilities/_all";

	$bgColor: #F0A348;
	$primary: #782FEF;
	$primary-light: findLightColor($primary);
	$primary-dark: findDarkColor($primary);
	$primary-invert: findColorInvert($primary);

	$custom-colors: null !default;
	$custom-shades: null !default;

	$colors: mergeColorMaps(
		(
			"white": (
				$white,
				$black,
			),
			"black": (
				$black,
				$white,
			),
			"light": (
				$light,
				$light-invert,
			),
			"dark": (
				$dark,
				$dark-invert,
			),
			"primary": (
				$primary,
				$primary-invert,
				$primary-light,
				$primary-dark,
			),
			"link": (
				$link,
				$link-invert,
				$link-light,
				$link-dark,
			),
			"info": (
				$info,
				$info-invert,
				$info-light,
				$info-dark,
			),
			"success": (
				$success,
				$success-invert,
				$success-light,
				$success-dark,
			),
			"warning": (
				$warning,
				$warning-invert,
				$warning-light,
				$warning-dark,
			),
			"danger": (
				$danger,
				$danger-invert,
				$danger-light,
				$danger-dark,
			),
		),
		$custom-colors
	);

	$link: $primary;
	$link-invert: $primary-invert;
	$link-focus-border: $primary;

	@import "~bulma";
	@import "~buefy/src/scss/buefy";
	
	.medium-container {
		min-height: 100vh;
		background-color: $bgColor;
		font-size: 24px;
	}
</style>