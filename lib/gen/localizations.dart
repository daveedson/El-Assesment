import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'localizations_en.dart';

/// Callers can lookup localized strings with an instance of Localization
/// returned by `Localization.of(context)`.
///
/// Applications need to include `Localization.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: Localization.localizationsDelegates,
///   supportedLocales: Localization.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the Localization.supportedLocales
/// property.
abstract class Localization {
  Localization(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static Localization? of(BuildContext context) {
    return Localizations.of<Localization>(context, Localization);
  }

  static const LocalizationsDelegate<Localization> delegate = _LocalizationDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @calculate.
  ///
  /// In en, this message translates to:
  /// **'Calculate'**
  String get calculate;

  /// No description provided for @shipment.
  ///
  /// In en, this message translates to:
  /// **'Shipment'**
  String get shipment;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Your location'**
  String get location;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Wethwimer, Illinois'**
  String get address;

  /// No description provided for @receiptNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter the receipt number ...'**
  String get receiptNumber;

  /// No description provided for @tracking.
  ///
  /// In en, this message translates to:
  /// **'Tracking'**
  String get tracking;

  /// No description provided for @shipmentNumber.
  ///
  /// In en, this message translates to:
  /// **'Shipment Number'**
  String get shipmentNumber;

  /// No description provided for @sender.
  ///
  /// In en, this message translates to:
  /// **'Sender'**
  String get sender;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @receiver.
  ///
  /// In en, this message translates to:
  /// **'Receiver'**
  String get receiver;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @destination.
  ///
  /// In en, this message translates to:
  /// **'Destination'**
  String get destination;

  /// No description provided for @senderLocation.
  ///
  /// In en, this message translates to:
  /// **'Sender Location'**
  String get senderLocation;

  /// No description provided for @receiverLocation.
  ///
  /// In en, this message translates to:
  /// **'Receiver Location'**
  String get receiverLocation;

  /// No description provided for @approxweight.
  ///
  /// In en, this message translates to:
  /// **'Approx Weight'**
  String get approxweight;

  /// No description provided for @packaging.
  ///
  /// In en, this message translates to:
  /// **'Packaging'**
  String get packaging;

  /// No description provided for @whatareyousending.
  ///
  /// In en, this message translates to:
  /// **'What are you sending?'**
  String get whatareyousending;

  /// No description provided for @box.
  ///
  /// In en, this message translates to:
  /// **'Box'**
  String get box;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// No description provided for @documents.
  ///
  /// In en, this message translates to:
  /// **'Documents'**
  String get documents;

  /// No description provided for @glass.
  ///
  /// In en, this message translates to:
  /// **'Glasses'**
  String get glass;

  /// No description provided for @liquid.
  ///
  /// In en, this message translates to:
  /// **'liquid'**
  String get liquid;

  /// No description provided for @food.
  ///
  /// In en, this message translates to:
  /// **'Food'**
  String get food;

  /// No description provided for @electronic.
  ///
  /// In en, this message translates to:
  /// **'Electronic'**
  String get electronic;

  /// No description provided for @product.
  ///
  /// In en, this message translates to:
  /// **'Product'**
  String get product;

  /// No description provided for @others.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get others;

  /// No description provided for @address1.
  ///
  /// In en, this message translates to:
  /// **'Atlanta, 5234'**
  String get address1;

  /// No description provided for @address2.
  ///
  /// In en, this message translates to:
  /// **'Chicago, 5234'**
  String get address2;

  /// No description provided for @waitingToCollect.
  ///
  /// In en, this message translates to:
  /// **'Waiting to Collect'**
  String get waitingToCollect;

  /// No description provided for @availablevehicles.
  ///
  /// In en, this message translates to:
  /// **'Available Vehicles'**
  String get availablevehicles;

  /// No description provided for @oceanFreight.
  ///
  /// In en, this message translates to:
  /// **'Ocean Freight'**
  String get oceanFreight;

  /// No description provided for @cargoFreight.
  ///
  /// In en, this message translates to:
  /// **'Cargo Freight'**
  String get cargoFreight;

  /// No description provided for @airFreight.
  ///
  /// In en, this message translates to:
  /// **'Air Freight'**
  String get airFreight;

  /// No description provided for @international.
  ///
  /// In en, this message translates to:
  /// **'International'**
  String get international;

  /// No description provided for @reliable.
  ///
  /// In en, this message translates to:
  /// **'Reliable'**
  String get reliable;

  /// No description provided for @movemate.
  ///
  /// In en, this message translates to:
  /// **'MoveMate'**
  String get movemate;

  /// No description provided for @totalestimatedamount.
  ///
  /// In en, this message translates to:
  /// **'Total Estimated Amount'**
  String get totalestimatedamount;

  /// No description provided for @backtohome.
  ///
  /// In en, this message translates to:
  /// **'Back to home'**
  String get backtohome;

  /// No description provided for @thisamountisestimatedthiswill.
  ///
  /// In en, this message translates to:
  /// **'This amount is estimated, this will vary if you change your location or weight'**
  String get thisamountisestimatedthiswill;

  /// No description provided for @shipmenthistory.
  ///
  /// In en, this message translates to:
  /// **'Shipment History'**
  String get shipmenthistory;

  /// No description provided for @inProgress.
  ///
  /// In en, this message translates to:
  /// **'In Progess'**
  String get inProgress;

  /// No description provided for @pendingorder.
  ///
  /// In en, this message translates to:
  /// **'Pending Order'**
  String get pendingorder;

  /// No description provided for @cancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get cancelled;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @shipments.
  ///
  /// In en, this message translates to:
  /// **'Shipments'**
  String get shipments;

  /// No description provided for @arrivingtoday.
  ///
  /// In en, this message translates to:
  /// **'Arriving today!'**
  String get arrivingtoday;

  /// No description provided for @deliverydetails.
  ///
  /// In en, this message translates to:
  /// **'Your delivery, #NEJ09187271HU81231 from Atlanta, is arriving today!'**
  String get deliverydetails;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Sep 20,2023'**
  String get date;

  /// No description provided for @orderId.
  ///
  /// In en, this message translates to:
  /// **'Order ID'**
  String get orderId;

  /// No description provided for @orderDate.
  ///
  /// In en, this message translates to:
  /// **'Order Date'**
  String get orderDate;

  /// No description provided for @orderItem.
  ///
  /// In en, this message translates to:
  /// **'Order Item'**
  String get orderItem;

  /// No description provided for @orderQuantity.
  ///
  /// In en, this message translates to:
  /// **'Order Quantity'**
  String get orderQuantity;

  /// No description provided for @orderPrice.
  ///
  /// In en, this message translates to:
  /// **'Order Price'**
  String get orderPrice;
}

class _LocalizationDelegate extends LocalizationsDelegate<Localization> {
  const _LocalizationDelegate();

  @override
  Future<Localization> load(Locale locale) {
    return SynchronousFuture<Localization>(lookupLocalization(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_LocalizationDelegate old) => false;
}

Localization lookupLocalization(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return LocalizationEn();
  }

  throw FlutterError(
    'Localization.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
