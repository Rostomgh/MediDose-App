part of 'nav_bar_bloc.dart';

@immutable
abstract class NavBarEvent {}
final class Changeindex extends NavBarEvent{
  final int tabindex;
  Changeindex(int i, {required this.tabindex});
}
