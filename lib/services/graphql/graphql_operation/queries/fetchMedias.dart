const String getListAnime = r'''
    query ($page: Int, $perPage: Int, $sort: [MediaSort]) {
      Page(page: $page, perPage: $perPage) {
        media(sort: $sort, type: ANIME) {
          title {
            english
          }
          description
          episodes
          favourites
          popularity
          coverImage {
            extraLarge
            large
            medium
            color
          }
          relations {
            nodes {
              id
              title {
                english
              }
              status
              type
              source
            }
          }
          characters {
            nodes {
              id
              name {
                first
                last
              }
              image {
                large
                medium
              }
            }
          }
          staff {
            nodes {
              id
              name {
                first
                last
              }
              image {
                large
                medium
              }
            }
          }
          trailer {
            id
            thumbnail
          
          }
        }
        pageInfo {
          total
          perPage
          currentPage
          lastPage
          hasNextPage
        }
      }
    }
''';

const String getMedia = r'''
    query ($id: Int) {
      Media (id: $id, type: ANIME) {
        id
        title {
          romaji
          english
          native
        }
      }
    }
''';
