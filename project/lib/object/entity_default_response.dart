
import 'package:json_annotation/json_annotation.dart';
part 'entity_default_response.g.dart';

@JsonSerializable()
class EntityDefaultResponse{
  // ignore: non_constant_identifier_names
  String Id;
  // ignore: non_constant_identifier_names
  String Nombre;

  EntityDefaultResponse(this.Id, this.Nombre);

  factory EntityDefaultResponse.fromJson(Map<String,dynamic> data) =>
      _$EntityDefaultResponseFromJson(data);

  Map<String,dynamic> toJson() => _$EntityDefaultResponseToJson(this);

  @override
  String toString() {
    return 'EntityDefaultResponse{Id: $Id, Nombre: $Nombre}';
  }
}