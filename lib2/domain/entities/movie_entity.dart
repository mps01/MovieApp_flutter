import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class MovieEntity extends Equatable {
  final String posterPath;
  final int id;
  final String backdropPath;
  final String title;
  final String releaseDate;
  final num voteAverage;
  final String overview;

  const MovieEntity(
      {@required this.posterPath,
      @required this.id,
      @required this.backdropPath,
      @required this.title,
      @required this.releaseDate,
      @required this.voteAverage,
      @required this.overview})
      : assert(id != null, 'Movie id must not be null');

  @override
  List<Object> get props => [id, title];

  @override
  bool get stringify => true;
}