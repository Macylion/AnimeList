<template>
  <div id="app">
    <div id="nav">
      <!-- <router-link to="/">Home</router-link> |
      <router-link to="/about">About</router-link> -->
    </div>
    <router-view/>
  </div>
</template>

<script>
export default {
}
</script>

<style lang="scss">
	body {
		margin: 0;
		padding: 0;
		background: #031627;
	}

	@import "~bulma/sass/utilities/_all";

	// Colors
	$primary: white;
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
</style>
