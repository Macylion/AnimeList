<template>
	<p>test {{ $route.params.id }}</p>
</template>

<script>
import animeQuery from '../queries/anime.graphql'
export default {
	name: "profile",
	mounted() {
		console.log('test')
		console.log(animeQuery.body({test: 2}))
	}
}
</script>

<style lang="scss">

</style>