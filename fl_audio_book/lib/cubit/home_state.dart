import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  final FetchStatus status;
  final List<dynamic>? popularList;
  final List<dynamic>? recommendedList;
  final List<dynamic>? newReleaseList;
  final List<dynamic>? categoryList;

  const HomeState({
    required this.status,
    this.popularList,
    this.recommendedList,
    this.newReleaseList,
    this.categoryList,
  });

  @override
  List<Object?> get props => throw UnimplementedError();
}

enum FetchStatus { initial, loading, success, error }




// class HomeInitial extends HomeState {}

// class HomeLoading extends HomeState {}

// class HomeSuccess extends HomeState {}

// class HomeError extends HomeState {}




