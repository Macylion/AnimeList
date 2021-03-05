<template>
	<div id="tiles-carousel-container">
		<flickity ref="flickity" :options="flickityOptions">
			<div class="carousel-cell">1</div>
			<div class="carousel-cell">2</div>
			<div class="carousel-cell">3</div>
			<div class="carousel-cell">4</div>
			<div class="carousel-cell">5</div>
		</flickity>
	</div>
</template>

<script>
import Flickity from 'vue-flickity';
export default {
  components: {
    Flickity
  },
  
  data() {
    return {
      flickityOptions: {
        initialIndex: 3,
        prevNextButtons: true,
        pageDots: true,
        wrapAround: true
        
        // any options from Flickity can be used
      }
    }
  },
  
  methods: {
    next() {
      this.$refs.flickity.next();
    },
    
    previous() {
      this.$refs.flickity.previous();
    }
  }
}
</script>

<style lang="scss">
	#tiles-carousel-container{
		margin-top: 38px;
		.carousel-cell{
			width: 362px;
			height: 238px;
			margin-right: 22px;
		}
	}

</style>