//TODO: Add your imports here.
import 'dart:convert' as json;

import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const bitcoinAverageURL =
    'https://apiv2.bitcoinaverage.com/indices/global/ticker/';

class CoinData {
  //TODO: Create your getCoinData() method here.

  Future<double> getCoinData(String currency, String cryptoType) async {
    String url = bitcoinAverageURL + cryptoType + currency;
    print("URL: $url");

    double lastPrice;
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse = json.jsonDecode(response.body);
      print("Response: $jsonResponse");
      lastPrice = jsonResponse['last'];
    }

    return lastPrice;
  }
}
