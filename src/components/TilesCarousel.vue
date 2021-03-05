<template>
	<div id="tiles-carousel-container">
		<flickity ref="flickity" :options="flickityOptions">
			<div class="carousel-cell"><div class="tiles-carousel-shadow"></div></div>
			<div class="carousel-cell"><div class="tiles-carousel-shadow"></div></div>
			<div class="carousel-cell"><div class="tiles-carousel-shadow"></div></div>
			<div class="carousel-cell"><div class="tiles-carousel-shadow"></div></div>
			<div class="carousel-cell"><div class="tiles-carousel-shadow"></div></div>
			<div class="carousel-cell"><div class="tiles-carousel-shadow"></div></div>
			<div class="carousel-cell"><div class="tiles-carousel-shadow"></div></div>
			<div class="carousel-cell"><div class="tiles-carousel-shadow"></div></div>
			<div class="carousel-cell"><div class="tiles-carousel-shadow"></div></div>
			<div class="carousel-cell"><div class="tiles-carousel-shadow"></div></div>
			<div class="carousel-cell"><div class="tiles-carousel-shadow"></div></div>
			<div class="carousel-cell"><div class="tiles-carousel-shadow"></div></div>
			<div class="carousel-cell"><div class="tiles-carousel-shadow"></div></div>
			<div class="carousel-cell"><div class="tiles-carousel-shadow"></div></div>
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
		initialIndex: 1, //od którego się zaczyna
		autoPlay: 5000, //auto play w milisekundach
		prevNextButtons: false, //przyciski
		pageDots: false, //kropki
		wrapAround: true, // nieskończona karuzela
		groupCells: 4 //grupowanie po 4 kafelki
        
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
		margin-top: 53px;
		margin-left: 198px;
		width: 1514px; 
		//margin-right: 208px;
		.carousel-cell{
			width: 362px;
			height: 238px;
			margin-right: 22px;
			background-image: url("https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx99423-8MBxtwCeHf8B.png");
			border-radius: 2px;
			background-position: center;
			.tiles-carousel-shadow{
				width: 362px;
				height: 238px;
				background: rgba(38, 38, 38, 0.4);
			}
		}
	}

</style>