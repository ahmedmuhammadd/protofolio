class ProjectModel {
  final String title, description, sourceCode, groupList, technology;
  final List<String>? projectImages;

  ProjectModel({
    required this.title,
    required this.technology,
    required this.description,
    required this.sourceCode,
    required this.groupList,
    this.projectImages,
  });
}
