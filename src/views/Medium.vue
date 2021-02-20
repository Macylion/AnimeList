<template>
	<div>
		<div v-if="this.medium" class="medium-container" :style="cssVars()">
			<section class="hero is-medium is-primary medium-banner">
				<div class="hero-body">
					<p class="title">
						{{ medium.title.english }}
					</p>
					<p class="subtitle">
						<span v-if="medium.title.english">
							{{ medium.title.english }} • 
						</span>
						<span v-if="medium.title.romanji">
							{{ medium.title.romanji }} • 
						</span>
						<span v-if="medium.title.native">
							{{ medium.title.native }}
						</span>
					</p>
				</div>
			</section>
			<section class="section">
			<div class="tile is-ancestor">
				<div class="tile is-4 is-parent is-vertical">
					<article class="tile is-child notification is-success">
						<div class="content">
							<p class="title">Statistics</p>
							<p class="subtitle">from anilist.co</p>
							<div class="content">
								<strong>Status</strong><br>{{ medium.status }}<br>
								<strong>Score</strong><br> {{ medium.meanScore/10 }}<br>
								<strong>Favourites</strong><br> {{ medium.favourites }}<br>
								<strong>Start Date</strong><br> {{ medium.startDate.day }}.{{ medium.startDate.month }}.{{ medium.startDate.year }}<br>
								<strong>End Date</strong><br> {{ medium.endDate.day }}.{{ medium.endDate.month }}. {{ medium.endDate.year }}<br>
								<strong>Episodes</strong><br>{{ medium.episodes }}<br>
								<strong>Format</strong><br>{{ medium.format }}<br>
								<strong>Genres</strong><br>
								<span v-for="(genre, index) in medium.genres" :key="index">
									{{ genre }},
								</span><br>
								<strong>Studios</strong><br>
								<span v-for="(studio, index) in medium.studios.edges" :key="'Studio-' + index" :class="{ 'medium-is-main': studio.isMain}">
									{{ (studio.node.isAnimationStudio)? studio.node.name + ',':'' }}
								</span><br>
								<strong>Producers</strong><br>
								<span v-for="(producer, index) in medium.studios.edges" :key="'Producer-' + index" :class="{ 'medium-is-main': producer.isMain}">
									{{ (!producer.node.isAnimationStudio)? producer.node.name + ',':'' }}
								</span><br>
								<span v-if="medium.title.english">
									<strong>English</strong><br>{{ medium.title.english }}<br>
								</span>
								<span v-if="medium.title.romanji">
									<strong>Romanji</strong><br>{{ medium.title.romanji }}<br>
								</span>
								<span v-if="medium.title.native">
									<strong>Native</strong><br>{{ medium.title.native }}<br>
								</span>
								<!-- <strong></strong><br>{{  }}<br> -->
							</div>
						</div>
					</article>
				</div>
				<div class="tile">
					<div class="tile is-vertical">
						<div class="tile is-parent is-vertical">
							<div class="tile">
								<article class="tile is-child notification is-success">
									<div class="content">
										<p class="title">Tall tile</p>
										<p class="subtitle">With even more content</p>
										<div class="content">
											<iframe :src="'https://www.youtube.com/embed/' + medium.trailer.id" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
										</div>
									</div>
								</article>
							</div>
							<div class="tile">
								<article class="tile is-child is-success">
									<div class="content">
										<div class="content">
											<iframe :src="'https://www.youtube.com/embed/' + medium.trailer.id" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
										</div>
									</div>
								</article>
							</div>
						</div>
					</div>
				</div>
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
				'--bannerImg': `url('${this.medium.bannerImage}')`,
				'--coverImg': `url('${this.medium.coverImage.large}')`
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
	.medium-banner {
		background-image: var(--bannerImg);
		background-size: cover;
		background-position: center;
	}
	.medium-cover {
		background-image: var(--coverImg);
		background-size: cover;
		background-position: center;
	}
	.block {
		display: inline-block;
	}
	.medium-is-main {
		text-transform: uppercase;
	}
</style>