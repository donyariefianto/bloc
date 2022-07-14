// class Post {
//   final int id;
//   final String title;
//   final String body;
//   final int userId;
//   Post({
//     required this.id,
//     required this.title,
//     required this.body,
//     required this.userId,
//   });

//   factory Post.fromJson(Map<String, dynamic> map) {
//     return Post(
//       id: map['id'] as int,
//       title: map['title'] as String,
//       body: map['body'] as String,
//       userId: map['userId'] as int,
//     );
//   }
// }

class Covid {
  final String country, slug, iso2;
  Covid({
    required this.country,
    required this.slug,
    required this.iso2,
  });
  factory Covid.fromJson(Map<String, dynamic> map) {
    return Covid(
      country: map['Country'] as String,
      slug: map['Slug'] as String,
      iso2: map['ISO2'] as String,
    );
  }
}
