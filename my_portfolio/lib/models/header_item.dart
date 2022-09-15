import 'dart:html';


class HeaderItem{
  final String title;
  final VoidCallback onTap;
  bool isButton;

  HeaderItem({required this.title, this.isButton=false, required this.onTap});
}