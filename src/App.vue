<template>
	<div id="app">
		<!-- <div id="nav"> -->
			<!-- <router-link to="/">Home</router-link> |
			<router-link to="/about">About</router-link> -->
		<!-- </div> -->
		<navigation />
		<router-view/>
	</div>
</template>

<script>
import Navigation from './components/navigation/Navigation'
export default {
	components: {
		Navigation,
	}
}
</script>

<style lang="scss">
	body {
		margin: 0;
		padding: 0;
		background: #031627;
		min-height: 100vh;
		font-family: 'Roboto', sans-serif;
		// font-family: 'Rubik', sans-serif;
	}
</style>
