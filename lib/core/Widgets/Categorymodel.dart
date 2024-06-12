class CategoryModel {
  final String image;
  final String title;
  final void Function()? navigate;


  CategoryModel( {required this.title, required this.image,required this.navigate,});
}
