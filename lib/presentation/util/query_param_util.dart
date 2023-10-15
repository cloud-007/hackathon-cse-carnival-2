import 'package:reachout/domain/model/query_param.dart';

class QueryParamUtil {
  List<QueryParam> initialQueryParams = [];
  final List<QueryParam> _queryParams = [];
  final List<QueryParam> _previousQueryParams = [];

  QueryParamUtil({
    required this.initialQueryParams,
  }) {
    _initialize(initialQueryParams);
  }

  void _initialize(List<QueryParam> initialQueryParams) {
    _queryParams.addAll(initialQueryParams);
  }

  List<QueryParam> getQueryParams() {
    return _queryParams;
  }

  void resetQueryParams() {
    _queryParams.clear();
    _previousQueryParams.clear();
    _queryParams.addAll([
      QueryParam(key: 'page', value: 1),
      QueryParam(key: 'page_size', value: 10),
    ]);
  }

  void addQueryParam(QueryParam queryParam) {
    _queryParams.add(queryParam);
  }

  void removeQueryParamByKey(String key) {
    _queryParams.removeWhere((element) => element.key == key);
  }

  void updateQueryParam(QueryParam queryParam) {
    removeQueryParamByKey(queryParam.key);
    addQueryParam(queryParam);
  }

  int getCurrentPageNumber() {
    return _queryParams.firstWhere((element) => element.key == 'page').value;
  }

  bool checkQueryParametersAreSame() {
    bool isSameQueryParams = true;
    if (_queryParams.length != _previousQueryParams.length) {
      isSameQueryParams = false;
    } else {
      for (var element in _queryParams) {
        if (element.key == 'page') {
          continue;
        }
        if (!_previousQueryParams.contains(element)) {
          isSameQueryParams = false;
          break;
        }
      }
    }
    return isSameQueryParams;
  }

  void clearQueryParams() {
    _queryParams.clear();
  }

  void clearPreviousQueryParams() {
    _previousQueryParams.clear();
  }

  void addCurrentQueryParamsToPreviousQueryParams() {
    _previousQueryParams.addAll(_queryParams);
  }
}
