import 'package:flutter_boiler/locator.dart';
import 'package:flutter_boiler/models/result.dart';
import 'package:flutter_boiler/services/share_preferences/secure_storage.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:graphql/client.dart';

class GraphQLFlutter {
  GraphQLClient _client;
  String gqlApiKey;
  String gqlURL = FlavorConfig.instance.variables["endpointGQL"];
  var secureStorage = locator<SecureStorage>();
  @override
  dynamic getGraphQLClient() async {
    //if (_client != null) return _client;
    return (await initGraphQL()).data;
  }

  @override
  Future<ResultStatus> initGraphQL() async {
    try {
      //get token from shared preferences then add to authorization
      var token = await secureStorage.read(key: 'access_token');
      HttpLink httpLink =
          HttpLink(uri: gqlURL, headers: {'Authorization': "Bearer " + token});

      _client = GraphQLClient(
        cache: InMemoryCache(),
        link: httpLink,
      );

      return ResultStatus(isSuccess: true, data: _client);
    } catch (e) {
      return ResultStatus(isSuccess: false);
    }
  }
}
