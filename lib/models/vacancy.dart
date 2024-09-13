class Vacancy {
  final String id;
  final String title;
  final String company;
  final String location;
  final String description;
  final String longDescription;
  final String salary;
  final String datePosted;
  final String imageUrl;

  Vacancy({
    required this.id,
    required this.title,
    required this.company,
    required this.location,
    required this.description,
    required this.longDescription,
    required this.salary,
    required this.datePosted,
    required this.imageUrl,
  });

  factory Vacancy.fromJson(Map<String, dynamic> json) {
    return Vacancy(
      id: json['id'] ?? 'N/A', // Provide fallback values if null
      title: json['title'] ?? 'No title available',
      company: json['company'] ?? 'Unknown company',
      location: json['location'] ?? 'Location not provided',
      description: json['description'] ?? 'No description available',
      longDescription: json['long_description'] ?? 'No long description available',
      salary: json['salary'] ?? 'Salary not disclosed',
      datePosted: json['date_posted'] ?? 'Unknown date',
      imageUrl: json['image_url'] ?? 'https://via.placeholder.com/150', // Placeholder image if null
    );
  }
}
