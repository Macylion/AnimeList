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
		}
	  }	  
	`,
	url: "https://graphql.anilist.co",
}