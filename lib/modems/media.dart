class Entity {
	Data data;

	Entity({this.data});

	Entity.fromJson(Map<String, dynamic> json) {
		data = json['data'] != null ? new Data.fromJson(json['data']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		return data;
	}
}

class Data {
	DataPage page;

	Data({this.page});

	Data.fromJson(Map<String, dynamic> json) {
		page = json['Page'] != null ? new DataPage.fromJson(json['Page']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.page != null) {
      data['Page'] = this.page.toJson();
    }
		return data;
	}
}

class DataPage {
	DataPagePageinfo pageInfo;
	List<DataPageMedium> media;

	DataPage({this.pageInfo, this.media});

	DataPage.fromJson(Map<String, dynamic> json) {
		pageInfo = json['pageInfo'] != null ? new DataPagePageinfo.fromJson(json['pageInfo']) : null;
		if (json['media'] != null) {
			media = new List<DataPageMedium>();
			(json['media'] as List).forEach((v) { media.add(new DataPageMedium.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.pageInfo != null) {
      data['pageInfo'] = this.pageInfo.toJson();
    }
		if (this.media != null) {
      data['media'] = this.media.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class DataPagePageinfo {
	int total;
	int perPage;
	int lastPage;
	bool hasNextPage;
	int currentPage;

	DataPagePageinfo({this.total, this.perPage, this.lastPage, this.hasNextPage, this.currentPage});

	DataPagePageinfo.fromJson(Map<String, dynamic> json) {
		total = json['total'];
		perPage = json['perPage'];
		lastPage = json['lastPage'];
		hasNextPage = json['hasNextPage'];
		currentPage = json['currentPage'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['total'] = this.total;
		data['perPage'] = this.perPage;
		data['lastPage'] = this.lastPage;
		data['hasNextPage'] = this.hasNextPage;
		data['currentPage'] = this.currentPage;
		return data;
	}
}

class DataPageMedium {
	DataPageMediaTrailer trailer;
	DataPageMediaCharacters characters;
	int favourites;
	int popularity;
	DataPageMediaCoverimage coverImage;
	String description;
	DataPageMediaStaff staff;
	DataPageMediaTitle title;
	DataPageMediaRelations relations;
	int episodes;

	DataPageMedium({this.trailer, this.characters, this.favourites, this.popularity, this.coverImage, this.description, this.staff, this.title, this.relations, this.episodes});

	DataPageMedium.fromJson(Map<String, dynamic> json) {
		trailer = json['trailer'] != null ? new DataPageMediaTrailer.fromJson(json['trailer']) : null;
		characters = json['characters'] != null ? new DataPageMediaCharacters.fromJson(json['characters']) : null;
		favourites = json['favourites'];
		popularity = json['popularity'];
		coverImage = json['coverImage'] != null ? new DataPageMediaCoverimage.fromJson(json['coverImage']) : null;
		description = json['description'];
		staff = json['staff'] != null ? new DataPageMediaStaff.fromJson(json['staff']) : null;
		title = json['title'] != null ? new DataPageMediaTitle.fromJson(json['title']) : null;
		relations = json['relations'] != null ? new DataPageMediaRelations.fromJson(json['relations']) : null;
		episodes = json['episodes'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.trailer != null) {
      data['trailer'] = this.trailer.toJson();
    }
		if (this.characters != null) {
      data['characters'] = this.characters.toJson();
    }
		data['favourites'] = this.favourites;
		data['popularity'] = this.popularity;
		if (this.coverImage != null) {
      data['coverImage'] = this.coverImage.toJson();
    }
		data['description'] = this.description;
		if (this.staff != null) {
      data['staff'] = this.staff.toJson();
    }
		if (this.title != null) {
      data['title'] = this.title.toJson();
    }
		if (this.relations != null) {
      data['relations'] = this.relations.toJson();
    }
		data['episodes'] = this.episodes;
		return data;
	}
}

class DataPageMediaTrailer {
	String thumbnail;
	String site;
	String id;

	DataPageMediaTrailer({this.thumbnail, this.site, this.id});

	DataPageMediaTrailer.fromJson(Map<String, dynamic> json) {
		thumbnail = json['thumbnail'];
		site = json['site'];
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['thumbnail'] = this.thumbnail;
		data['site'] = this.site;
		data['id'] = this.id;
		return data;
	}
}

class DataPageMediaCharacters {
	List<DataPageMediaCharactersNode> nodes;

	DataPageMediaCharacters({this.nodes});

	DataPageMediaCharacters.fromJson(Map<String, dynamic> json) {
		if (json['nodes'] != null) {
			nodes = new List<DataPageMediaCharactersNode>();
			(json['nodes'] as List).forEach((v) { nodes.add(new DataPageMediaCharactersNode.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.nodes != null) {
      data['nodes'] = this.nodes.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class DataPageMediaCharactersNode {
	DataPageMediaCharactersNodesImage image;
	DataPageMediaCharactersNodesName name;
	int id;

	DataPageMediaCharactersNode({this.image, this.name, this.id});

	DataPageMediaCharactersNode.fromJson(Map<String, dynamic> json) {
		image = json['image'] != null ? new DataPageMediaCharactersNodesImage.fromJson(json['image']) : null;
		name = json['name'] != null ? new DataPageMediaCharactersNodesName.fromJson(json['name']) : null;
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.image != null) {
      data['image'] = this.image.toJson();
    }
		if (this.name != null) {
      data['name'] = this.name.toJson();
    }
		data['id'] = this.id;
		return data;
	}
}

class DataPageMediaCharactersNodesImage {
	String large;
	String medium;

	DataPageMediaCharactersNodesImage({this.large, this.medium});

	DataPageMediaCharactersNodesImage.fromJson(Map<String, dynamic> json) {
		large = json['large'];
		medium = json['medium'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['large'] = this.large;
		data['medium'] = this.medium;
		return data;
	}
}

class DataPageMediaCharactersNodesName {
	String last;
	String first;

	DataPageMediaCharactersNodesName({this.last, this.first});

	DataPageMediaCharactersNodesName.fromJson(Map<String, dynamic> json) {
		last = json['last'];
		first = json['first'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['last'] = this.last;
		data['first'] = this.first;
		return data;
	}
}

class DataPageMediaCoverimage {
	String extraLarge;
	String large;
	String color;
	String medium;

	DataPageMediaCoverimage({this.extraLarge, this.large, this.color, this.medium});

	DataPageMediaCoverimage.fromJson(Map<String, dynamic> json) {
		extraLarge = json['extraLarge'];
		large = json['large'];
		color = json['color'];
		medium = json['medium'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['extraLarge'] = this.extraLarge;
		data['large'] = this.large;
		data['color'] = this.color;
		data['medium'] = this.medium;
		return data;
	}
}

class DataPageMediaStaff {
	List<DataPageMediaStaffNode> nodes;

	DataPageMediaStaff({this.nodes});

	DataPageMediaStaff.fromJson(Map<String, dynamic> json) {
		if (json['nodes'] != null) {
			nodes = new List<DataPageMediaStaffNode>();
			(json['nodes'] as List).forEach((v) { nodes.add(new DataPageMediaStaffNode.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.nodes != null) {
      data['nodes'] = this.nodes.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class DataPageMediaStaffNode {
	DataPageMediaStaffNodesImage image;
	DataPageMediaStaffNodesName name;
	int id;

	DataPageMediaStaffNode({this.image, this.name, this.id});

	DataPageMediaStaffNode.fromJson(Map<String, dynamic> json) {
		image = json['image'] != null ? new DataPageMediaStaffNodesImage.fromJson(json['image']) : null;
		name = json['name'] != null ? new DataPageMediaStaffNodesName.fromJson(json['name']) : null;
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.image != null) {
      data['image'] = this.image.toJson();
    }
		if (this.name != null) {
      data['name'] = this.name.toJson();
    }
		data['id'] = this.id;
		return data;
	}
}

class DataPageMediaStaffNodesImage {
	String large;
	String medium;

	DataPageMediaStaffNodesImage({this.large, this.medium});

	DataPageMediaStaffNodesImage.fromJson(Map<String, dynamic> json) {
		large = json['large'];
		medium = json['medium'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['large'] = this.large;
		data['medium'] = this.medium;
		return data;
	}
}

class DataPageMediaStaffNodesName {
	String last;
	String first;

	DataPageMediaStaffNodesName({this.last, this.first});

	DataPageMediaStaffNodesName.fromJson(Map<String, dynamic> json) {
		last = json['last'];
		first = json['first'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['last'] = this.last;
		data['first'] = this.first;
		return data;
	}
}

class DataPageMediaTitle {
	String english;

	DataPageMediaTitle({this.english});

	DataPageMediaTitle.fromJson(Map<String, dynamic> json) {
		english = json['english'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['english'] = this.english;
		return data;
	}
}

class DataPageMediaRelations {
	List<DataPageMediaRelationsNode> nodes;

	DataPageMediaRelations({this.nodes});

	DataPageMediaRelations.fromJson(Map<String, dynamic> json) {
		if (json['nodes'] != null) {
			nodes = new List<DataPageMediaRelationsNode>();
			(json['nodes'] as List).forEach((v) { nodes.add(new DataPageMediaRelationsNode.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.nodes != null) {
      data['nodes'] = this.nodes.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class DataPageMediaRelationsNode {
	int id;
	String source;
	DataPageMediaRelationsNodesTitle title;
	String type;
	String status;

	DataPageMediaRelationsNode({this.id, this.source, this.title, this.type, this.status});

	DataPageMediaRelationsNode.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		source = json['source'];
		title = json['title'] != null ? new DataPageMediaRelationsNodesTitle.fromJson(json['title']) : null;
		type = json['type'];
		status = json['status'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['source'] = this.source;
		if (this.title != null) {
      data['title'] = this.title.toJson();
    }
		data['type'] = this.type;
		data['status'] = this.status;
		return data;
	}
}

class DataPageMediaRelationsNodesTitle {
	String english;

	DataPageMediaRelationsNodesTitle({this.english});

	DataPageMediaRelationsNodesTitle.fromJson(Map<String, dynamic> json) {
		english = json['english'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['english'] = this.english;
		return data;
	}
}
