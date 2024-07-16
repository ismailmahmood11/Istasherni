@JS()
library stripe;

import 'package:js/js.dart';

void redirectToCheckout(String price, int quantity) {
  Stripe('pk_live_51MnnBFCTbXBN9LA1yhxMBV7FkCVZQvelJHpp7Sn0u5Z6JjpoMFi4tApiy9JNwbvWCUaSGxjUh3SGq7Ogy4WJE4dL00bMuYm6lW')
      .redirectToCheckout(CheckoutOptions(
    lineItems: [
      LineItem(
        price: price,
        quantity: quantity,
      )
    ],
    mode: 'payment',
    successUrl: 'https://ismailmahmood11.github.io/Istasherni/success',
    cancelUrl: 'https://ismailmahmood11.github.io/Istasherni/',
  ));
}

@JS()
class Stripe {
  external Stripe(String key);

  external redirectToCheckout(CheckoutOptions checkoutOptions);
}

@JS()
@anonymous
class CheckoutOptions {
  external List<LineItem> get lineItems;

  external String get mode;

  external String get successUrl;

  external String get cancelUrl;

  external String get sessionId;

  external factory CheckoutOptions({
    List<LineItem> lineItems,
    String mode,
    String successUrl,
    String cancelUrl,
    String sessionId,
  });
}

@JS()
@anonymous
class LineItem {
  external String get price;

  external int get quantity;

  external factory LineItem({String price, int quantity});
}
