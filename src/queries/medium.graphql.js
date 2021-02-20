export default {
	query: `
	query ($id: Int, $search: String) {
		Media(id: $id, search: $search) {
		  id
		  title {
			romaji
			english
			native
		  }
		  description
		  startDate {
			year
			month
			day
		  }
		  endDate {
			year
			month
			day
		  }
		  meanScore
		  episodes
		  favourites
		  coverImage {
			extraLarge
			large
			medium
			color
		  }
		  bannerImage
		  format
		  status
		  genres
		  studios {
			edges {
			  id
			  isMain
			  node {
				id
				name
				isAnimationStudio
			  }
			}
		  }
		  characters {
			edges {
			  node {
				name {
				  full
				}
				image {
				  large
				  medium
				}
				description
			  }
			  role
			  voiceActors {
				name {
				  full
				}
				image {
				  large
				  medium
				}
				description
			  }
			}
		  }
		  trailer {
			site
			thumbnail
			id
		  }
		  relations {
			edges {
			  id
			  relationType
			  node {
				id
				format
				title {
				  romaji
				  english
				  native
				}
			  }
			}
		  }
		}
	  }
	  
	`,
	url: "https://graphql.anilist.co",
}