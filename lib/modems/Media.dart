class SSSEntity {
	SSSData data;

	SSSEntity({this.data});

	SSSEntity.fromJson(Map<String, dynamic> json) {
		data = json['data'] != null ? new SSSData.fromJson(json['data']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		return data;
	}
}

class SSSData {
	SSSDataPage page;

	SSSData({this.page});

	SSSData.fromJson(Map<String, dynamic> json) {
		page = json['Page'] != null ? new SSSDataPage.fromJson(json['Page']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.page != null) {
      data['Page'] = this.page.toJson();
    }
		return data;
	}
}

class SSSDataPage {
	SSSDataPagePageinfo pageInfo;
	List<SSSDataPageMedium> media;

	SSSDataPage({this.pageInfo, this.media});

	SSSDataPage.fromJson(Map<String, dynamic> json) {
		pageInfo = json['pageInfo'] != null ? new SSSDataPagePageinfo.fromJson(json['pageInfo']) : null;
		if (json['media'] != null) {
			media = new List<SSSDataPageMedium>();
			(json['media'] as List).forEach((v) { media.add(new SSSDataPageMedium.fromJson(v)); });
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

class SSSDataPagePageinfo {
	int total;
	int perPage;
	int lastPage;
	bool hasNextPage;
	int currentPage;

	SSSDataPagePageinfo({this.total, this.perPage, this.lastPage, this.hasNextPage, this.currentPage});

	SSSDataPagePageinfo.fromJson(Map<String, dynamic> json) {
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

class SSSDataPageMedium {
	SSSDataPageMediaTrailer trailer;
	SSSDataPageMediaCharacters characters;
	int favourites;
	int popularity;
	SSSDataPageMediaCoverimage coverImage;
	String description;
	SSSDataPageMediaStaff staff;
	SSSDataPageMediaTitle title;
	SSSDataPageMediaRelations relations;
	int episodes;

	SSSDataPageMedium({this.trailer, this.characters, this.favourites, this.popularity, this.coverImage, this.description, this.staff, this.title, this.relations, this.episodes});

	SSSDataPageMedium.fromJson(Map<String, dynamic> json) {
		trailer = json['trailer'] != null ? new SSSDataPageMediaTrailer.fromJson(json['trailer']) : null;
		characters = json['characters'] != null ? new SSSDataPageMediaCharacters.fromJson(json['characters']) : null;
		favourites = json['favourites'];
		popularity = json['popularity'];
		coverImage = json['coverImage'] != null ? new SSSDataPageMediaCoverimage.fromJson(json['coverImage']) : null;
		description = json['description'];
		staff = json['staff'] != null ? new SSSDataPageMediaStaff.fromJson(json['staff']) : null;
		title = json['title'] != null ? new SSSDataPageMediaTitle.fromJson(json['title']) : null;
		relations = json['relations'] != null ? new SSSDataPageMediaRelations.fromJson(json['relations']) : null;
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

class SSSDataPageMediaTrailer {
	String thumbnail;
	String site;
	String id;

	SSSDataPageMediaTrailer({this.thumbnail, this.site, this.id});

	SSSDataPageMediaTrailer.fromJson(Map<String, dynamic> json) {
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

class SSSDataPageMediaCharacters {
	List<SSSDataPageMediaCharactersNode> nodes;

	SSSDataPageMediaCharacters({this.nodes});

	SSSDataPageMediaCharacters.fromJson(Map<String, dynamic> json) {
		if (json['nodes'] != null) {
			nodes = new List<SSSDataPageMediaCharactersNode>();
			(json['nodes'] as List).forEach((v) { nodes.add(new SSSDataPageMediaCharactersNode.fromJson(v)); });
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

class SSSDataPageMediaCharactersNode {
	SSSDataPageMediaCharactersNodesImage image;
	SSSDataPageMediaCharactersNodesName name;
	int id;

	SSSDataPageMediaCharactersNode({this.image, this.name, this.id});

	SSSDataPageMediaCharactersNode.fromJson(Map<String, dynamic> json) {
		image = json['image'] != null ? new SSSDataPageMediaCharactersNodesImage.fromJson(json['image']) : null;
		name = json['name'] != null ? new SSSDataPageMediaCharactersNodesName.fromJson(json['name']) : null;
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

class SSSDataPageMediaCharactersNodesImage {
	String large;
	String medium;

	SSSDataPageMediaCharactersNodesImage({this.large, this.medium});

	SSSDataPageMediaCharactersNodesImage.fromJson(Map<String, dynamic> json) {
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

class SSSDataPageMediaCharactersNodesName {
	String last;
	String first;

	SSSDataPageMediaCharactersNodesName({this.last, this.first});

	SSSDataPageMediaCharactersNodesName.fromJson(Map<String, dynamic> json) {
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

class SSSDataPageMediaCoverimage {
	String extraLarge;
	String large;
	String color;
	String medium;

	SSSDataPageMediaCoverimage({this.extraLarge, this.large, this.color, this.medium});

	SSSDataPageMediaCoverimage.fromJson(Map<String, dynamic> json) {
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

class SSSDataPageMediaStaff {
	List<SSSDataPageMediaStaffNode> nodes;

	SSSDataPageMediaStaff({this.nodes});

	SSSDataPageMediaStaff.fromJson(Map<String, dynamic> json) {
		if (json['nodes'] != null) {
			nodes = new List<SSSDataPageMediaStaffNode>();
			(json['nodes'] as List).forEach((v) { nodes.add(new SSSDataPageMediaStaffNode.fromJson(v)); });
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

class SSSDataPageMediaStaffNode {
	SSSDataPageMediaStaffNodesImage image;
	SSSDataPageMediaStaffNodesName name;
	int id;

	SSSDataPageMediaStaffNode({this.image, this.name, this.id});

	SSSDataPageMediaStaffNode.fromJson(Map<String, dynamic> json) {
		image = json['image'] != null ? new SSSDataPageMediaStaffNodesImage.fromJson(json['image']) : null;
		name = json['name'] != null ? new SSSDataPageMediaStaffNodesName.fromJson(json['name']) : null;
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

class SSSDataPageMediaStaffNodesImage {
	String large;
	String medium;

	SSSDataPageMediaStaffNodesImage({this.large, this.medium});

	SSSDataPageMediaStaffNodesImage.fromJson(Map<String, dynamic> json) {
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

class SSSDataPageMediaStaffNodesName {
	String last;
	String first;

	SSSDataPageMediaStaffNodesName({this.last, this.first});

	SSSDataPageMediaStaffNodesName.fromJson(Map<String, dynamic> json) {
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

class SSSDataPageMediaTitle {
	String english;

	SSSDataPageMediaTitle({this.english});

	SSSDataPageMediaTitle.fromJson(Map<String, dynamic> json) {
		english = json['english'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['english'] = this.english;
		return data;
	}
}

class SSSDataPageMediaRelations {
	List<SSSDataPageMediaRelationsNode> nodes;

	SSSDataPageMediaRelations({this.nodes});

	SSSDataPageMediaRelations.fromJson(Map<String, dynamic> json) {
		if (json['nodes'] != null) {
			nodes = new List<SSSDataPageMediaRelationsNode>();
			(json['nodes'] as List).forEach((v) { nodes.add(new SSSDataPageMediaRelationsNode.fromJson(v)); });
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

class SSSDataPageMediaRelationsNode {
	int id;
	String source;
	SSSDataPageMediaRelationsNodesTitle title;
	String type;
	String status;

	SSSDataPageMediaRelationsNode({this.id, this.source, this.title, this.type, this.status});

	SSSDataPageMediaRelationsNode.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		source = json['source'];
		title = json['title'] != null ? new SSSDataPageMediaRelationsNodesTitle.fromJson(json['title']) : null;
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

class SSSDataPageMediaRelationsNodesTitle {
	String english;

	SSSDataPageMediaRelationsNodesTitle({this.english});

	SSSDataPageMediaRelationsNodesTitle.fromJson(Map<String, dynamic> json) {
		english = json['english'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['english'] = this.english;
		return data;
	}
}
