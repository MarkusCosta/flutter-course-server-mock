import 'package:aqueduct/aqueduct.dart';

class RankingController extends Controller {
  final _ranking = [
    {'id': 1, 'name': 'Marcus', 'points': 123},
    {'id': 2, 'name': 'Fabio', 'points': 537},
    {'id': 3, 'name': 'Renato', 'points': 348},
    {'id': 4, 'name': 'Vinicius', 'points': 854},
    {'id': 5, 'name': 'André', 'points': 637},
  ];

  @override
  Future<RequestOrResponse> handle(Request request) async {
    return Response.ok(_ranking);
  }
}