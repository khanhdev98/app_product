import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'localizations_en.dart';
import 'localizations_vi.dart';

/// Callers can lookup localized strings with an instance of StringApp
/// returned by `StringApp.of(context)`.
///
/// Applications need to include `StringApp.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generate/localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: StringApp.localizationsDelegates,
///   supportedLocales: StringApp.supportedLocales,
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
/// be consistent with the languages listed in the StringApp.supportedLocales
/// property.
abstract class StringApp {
  StringApp(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static StringApp of(BuildContext context) {
    return Localizations.of<StringApp>(context, StringApp)!;
  }

  static const LocalizationsDelegate<StringApp> delegate = _StringAppDelegate();

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
    Locale('en'),
    Locale('vi')
  ];

  /// No description provided for @common_try_again.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get common_try_again;

  /// No description provided for @common_see_more.
  ///
  /// In en, this message translates to:
  /// **'See more'**
  String get common_see_more;

  /// No description provided for @common_see_less.
  ///
  /// In en, this message translates to:
  /// **'See less'**
  String get common_see_less;

  /// No description provided for @common_search_hint.
  ///
  /// In en, this message translates to:
  /// **'Search …'**
  String get common_search_hint;

  /// No description provided for @common_loading.
  ///
  /// In en, this message translates to:
  /// **'Loading…'**
  String get common_loading;

  /// No description provided for @common_retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get common_retry;

  /// No description provided for @common_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get common_cancel;

  /// No description provided for @common_ok.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get common_ok;

  /// No description provided for @common_save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get common_save;

  /// No description provided for @common_decline.
  ///
  /// In en, this message translates to:
  /// **'Decline'**
  String get common_decline;

  /// No description provided for @common_done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get common_done;

  /// No description provided for @common_confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get common_confirm;

  /// No description provided for @common_close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get common_close;

  /// No description provided for @common_detail.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get common_detail;

  /// No description provided for @common_continue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get common_continue;

  /// No description provided for @common_use_payment_or_contact_info.
  ///
  /// In en, this message translates to:
  /// **'Using payer information or contact information'**
  String get common_use_payment_or_contact_info;

  /// No description provided for @common_person_payment.
  ///
  /// In en, this message translates to:
  /// **'Payer'**
  String get common_person_payment;

  /// No description provided for @common_chose_country_calling_code.
  ///
  /// In en, this message translates to:
  /// **'Choose country calling code'**
  String get common_chose_country_calling_code;

  /// No description provided for @using_payer_or_contact_information.
  ///
  /// In en, this message translates to:
  /// **'Using payer or contact information'**
  String get using_payer_or_contact_information;

  /// No description provided for @common_enter_discount_code.
  ///
  /// In en, this message translates to:
  /// **'enter discount code'**
  String get common_enter_discount_code;

  /// No description provided for @see_more.
  ///
  /// In en, this message translates to:
  /// **'See more'**
  String get see_more;

  /// No description provided for @see_less.
  ///
  /// In en, this message translates to:
  /// **'See less'**
  String get see_less;

  /// No description provided for @common_adult.
  ///
  /// In en, this message translates to:
  /// **'Adult'**
  String get common_adult;

  /// No description provided for @common_child.
  ///
  /// In en, this message translates to:
  /// **'Child'**
  String get common_child;

  /// No description provided for @common_infant.
  ///
  /// In en, this message translates to:
  /// **'Infant'**
  String get common_infant;

  /// No description provided for @common_other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get common_other;

  /// No description provided for @common_male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get common_male;

  /// No description provided for @common_female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get common_female;

  /// No description provided for @common_canceled.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get common_canceled;

  /// No description provided for @common_tickets_issued.
  ///
  /// In en, this message translates to:
  /// **'Issued'**
  String get common_tickets_issued;

  /// No description provided for @common_booked.
  ///
  /// In en, this message translates to:
  /// **'Booked (Not yet issued)'**
  String get common_booked;

  /// No description provided for @common_ticket_issue_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to issue ticket'**
  String get common_ticket_issue_failed;

  /// No description provided for @common_no_reservation_yet.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get common_no_reservation_yet;

  /// No description provided for @common_prepay.
  ///
  /// In en, this message translates to:
  /// **'Prepayment'**
  String get common_prepay;

  /// No description provided for @common_postpaid.
  ///
  /// In en, this message translates to:
  /// **'Postpaid'**
  String get common_postpaid;

  /// No description provided for @message_title_bad_request.
  ///
  /// In en, this message translates to:
  /// **'Has error occurred'**
  String get message_title_bad_request;

  /// No description provided for @message_bad_request.
  ///
  /// In en, this message translates to:
  /// **'The connection is being interrupted. Please check the connection again'**
  String get message_bad_request;

  /// No description provided for @message_title_fetch_data_exception.
  ///
  /// In en, this message translates to:
  /// **'Has error occurred'**
  String get message_title_fetch_data_exception;

  /// No description provided for @message_fetch_data_exception.
  ///
  /// In en, this message translates to:
  /// **'Sorry, the execution failed. Please check the connection again or try again.'**
  String get message_fetch_data_exception;

  /// No description provided for @message_title_author.
  ///
  /// In en, this message translates to:
  /// **'Has error occurred'**
  String get message_title_author;

  /// No description provided for @message_author.
  ///
  /// In en, this message translates to:
  /// **'Login session has expired. Please login again.'**
  String get message_author;

  /// No description provided for @message_title_common.
  ///
  /// In en, this message translates to:
  /// **'Has error occurred'**
  String get message_title_common;

  /// No description provided for @message_app_exception_common.
  ///
  /// In en, this message translates to:
  /// **'Sorry, the execution failed. Please check the connection again or try again.'**
  String get message_app_exception_common;

  /// No description provided for @no_results_found.
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get no_results_found;

  /// No description provided for @no_messages.
  ///
  /// In en, this message translates to:
  /// **'No messages, No comment'**
  String get no_messages;

  /// No description provided for @no_documents.
  ///
  /// In en, this message translates to:
  /// **'No documents'**
  String get no_documents;

  /// No description provided for @no_gps_connection.
  ///
  /// In en, this message translates to:
  /// **'No GPS connection'**
  String get no_gps_connection;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong,\nplease try again'**
  String get error;

  /// No description provided for @no_internet_connection.
  ///
  /// In en, this message translates to:
  /// **'No internet connection'**
  String get no_internet_connection;

  /// No description provided for @empty_inbox.
  ///
  /// In en, this message translates to:
  /// **'Your inbox is empty'**
  String get empty_inbox;

  /// No description provided for @no_images.
  ///
  /// In en, this message translates to:
  /// **'No images'**
  String get no_images;

  /// No description provided for @no_credit_card.
  ///
  /// In en, this message translates to:
  /// **'No Credit Cards'**
  String get no_credit_card;

  /// No description provided for @no_items_cart.
  ///
  /// In en, this message translates to:
  /// **'Your bag is empty'**
  String get no_items_cart;

  /// No description provided for @no_tasks.
  ///
  /// In en, this message translates to:
  /// **'You’re all caught up!'**
  String get no_tasks;

  /// No description provided for @show_case_description_click_here_to_see_price_detail.
  ///
  /// In en, this message translates to:
  /// **'Click here to see price detail'**
  String get show_case_description_click_here_to_see_price_detail;

  /// No description provided for @widget_radio_text_gender.
  ///
  /// In en, this message translates to:
  /// **'Gender:'**
  String get widget_radio_text_gender;

  /// No description provided for @widget_text_field_input_custom.
  ///
  /// In en, this message translates to:
  /// **'Enter reservation code'**
  String get widget_text_field_input_custom;

  /// Name toolbar
  ///
  /// In en, this message translates to:
  /// **'Time picker'**
  String get car_time_picker;

  /// No description provided for @car_input_title_pick_up_place.
  ///
  /// In en, this message translates to:
  /// **'Enter pick-up place'**
  String get car_input_title_pick_up_place;

  /// No description provided for @car_input_title_pick_up_location.
  ///
  /// In en, this message translates to:
  /// **'Pick-up location'**
  String get car_input_title_pick_up_location;

  /// No description provided for @car_title_return_to_different_location.
  ///
  /// In en, this message translates to:
  /// **'Return to different location'**
  String get car_title_return_to_different_location;

  /// No description provided for @car_input_title_start_time.
  ///
  /// In en, this message translates to:
  /// **'Start time'**
  String get car_input_title_start_time;

  /// No description provided for @car_input_title_end_time.
  ///
  /// In en, this message translates to:
  /// **'End time'**
  String get car_input_title_end_time;

  /// No description provided for @car_input_title_start_date.
  ///
  /// In en, this message translates to:
  /// **'Start date'**
  String get car_input_title_start_date;

  /// No description provided for @car_input_title_end_date.
  ///
  /// In en, this message translates to:
  /// **'End date'**
  String get car_input_title_end_date;

  /// No description provided for @car_input_title_enter_drop_off_place.
  ///
  /// In en, this message translates to:
  /// **'Enter drop-off place'**
  String get car_input_title_enter_drop_off_place;

  /// No description provided for @car_input_title_enter_drop_off_location.
  ///
  /// In en, this message translates to:
  /// **'Drop-off location'**
  String get car_input_title_enter_drop_off_location;

  /// No description provided for @car_title_advanced_search.
  ///
  /// In en, this message translates to:
  /// **'Advanced search'**
  String get car_title_advanced_search;

  /// No description provided for @car_title_look_up_booking_number.
  ///
  /// In en, this message translates to:
  /// **'Look up booking number'**
  String get car_title_look_up_booking_number;

  /// No description provided for @car_header_title_look_up_booking_number.
  ///
  /// In en, this message translates to:
  /// **'Enter booking number or order code to find your booking information'**
  String get car_header_title_look_up_booking_number;

  /// No description provided for @car_title_search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get car_title_search;

  /// No description provided for @car_notice_empty_pick_up_location.
  ///
  /// In en, this message translates to:
  /// **'Select a pick-up location and start date to search'**
  String get car_notice_empty_pick_up_location;

  /// No description provided for @car_title_ascending_price.
  ///
  /// In en, this message translates to:
  /// **'Ascending price'**
  String get car_title_ascending_price;

  /// No description provided for @car_title_descending_price.
  ///
  /// In en, this message translates to:
  /// **'Descending price'**
  String get car_title_descending_price;

  /// No description provided for @car_title_car_type.
  ///
  /// In en, this message translates to:
  /// **'Car type'**
  String get car_title_car_type;

  /// No description provided for @car_title_transmission.
  ///
  /// In en, this message translates to:
  /// **'Transmission'**
  String get car_title_transmission;

  /// No description provided for @car_title_segment.
  ///
  /// In en, this message translates to:
  /// **'Segment'**
  String get car_title_segment;

  /// No description provided for @car_title_fuel_type.
  ///
  /// In en, this message translates to:
  /// **'Fuel type'**
  String get car_title_fuel_type;

  /// No description provided for @car_title_supplier.
  ///
  /// In en, this message translates to:
  /// **'Supplier'**
  String get car_title_supplier;

  /// No description provided for @car_title_price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get car_title_price;

  /// No description provided for @car_title_view_on_map.
  ///
  /// In en, this message translates to:
  /// **'View on map'**
  String get car_title_view_on_map;

  /// No description provided for @car_title_deals.
  ///
  /// In en, this message translates to:
  /// **'Deals'**
  String get car_title_deals;

  /// No description provided for @car_title_seats.
  ///
  /// In en, this message translates to:
  /// **'Seats'**
  String get car_title_seats;

  /// No description provided for @car_title_filter_by.
  ///
  /// In en, this message translates to:
  /// **'Filter by'**
  String get car_title_filter_by;

  /// No description provided for @car_title_un_filter.
  ///
  /// In en, this message translates to:
  /// **'Unfilter'**
  String get car_title_un_filter;

  /// No description provided for @car_title_choose_this_car.
  ///
  /// In en, this message translates to:
  /// **'Choose this car'**
  String get car_title_choose_this_car;

  /// No description provided for @car_title_rental_terms.
  ///
  /// In en, this message translates to:
  /// **'Rental terms'**
  String get car_title_rental_terms;

  /// No description provided for @car_title_search_location.
  ///
  /// In en, this message translates to:
  /// **'Search location'**
  String get car_title_search_location;

  /// No description provided for @car_title_select_btn.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get car_title_select_btn;

  /// No description provided for @car_title_select_date.
  ///
  /// In en, this message translates to:
  /// **'Select date'**
  String get car_title_select_date;

  /// No description provided for @car_title_select_time.
  ///
  /// In en, this message translates to:
  /// **'Select time'**
  String get car_title_select_time;

  /// No description provided for @car_title_reset_btn.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get car_title_reset_btn;

  /// No description provided for @car_title_location_type.
  ///
  /// In en, this message translates to:
  /// **'Location type'**
  String get car_title_location_type;

  /// No description provided for @car_title_number_of_seats.
  ///
  /// In en, this message translates to:
  /// **'Number of seats'**
  String get car_title_number_of_seats;

  /// No description provided for @car_title_days.
  ///
  /// In en, this message translates to:
  /// **'Days'**
  String get car_title_days;

  /// No description provided for @car_title_unlimited_mileage.
  ///
  /// In en, this message translates to:
  /// **'Unlimited mileage'**
  String get car_title_unlimited_mileage;

  /// No description provided for @car_title_instant_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Instant confirmation'**
  String get car_title_instant_confirmation;

  /// No description provided for @car_title_time_pick_up.
  ///
  /// In en, this message translates to:
  /// **'Pick-up date'**
  String get car_title_time_pick_up;

  /// No description provided for @car_title_time_drop_off.
  ///
  /// In en, this message translates to:
  /// **'Drop-off date'**
  String get car_title_time_drop_off;

  /// No description provided for @car_title_air_conditioning.
  ///
  /// In en, this message translates to:
  /// **'Air conditioning'**
  String get car_title_air_conditioning;

  /// No description provided for @car_title_number_of_bag.
  ///
  /// In en, this message translates to:
  /// **'Number of suitcases'**
  String get car_title_number_of_bag;

  /// No description provided for @car_hand_note_title_booking_order_code.
  ///
  /// In en, this message translates to:
  /// **'Order code'**
  String get car_hand_note_title_booking_order_code;

  /// No description provided for @car_hand_note_title_booking_code.
  ///
  /// In en, this message translates to:
  /// **'Booking number'**
  String get car_hand_note_title_booking_code;

  /// No description provided for @car_hand_note_title_total_rental_car.
  ///
  /// In en, this message translates to:
  /// **'Total rental days'**
  String get car_hand_note_title_total_rental_car;

  /// No description provided for @car_hand_note_title_status_order.
  ///
  /// In en, this message translates to:
  /// **'Order status'**
  String get car_hand_note_title_status_order;

  /// No description provided for @car_hand_note_title_total_price.
  ///
  /// In en, this message translates to:
  /// **'Total payment'**
  String get car_hand_note_title_total_price;

  /// No description provided for @car_hand_note_title_status_payment.
  ///
  /// In en, this message translates to:
  /// **'Payment status'**
  String get car_hand_note_title_status_payment;

  /// No description provided for @car_hand_note_title_reason_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancelation reasons'**
  String get car_hand_note_title_reason_cancel;

  /// No description provided for @car_hand_note_title_view_details_btn.
  ///
  /// In en, this message translates to:
  /// **'View details'**
  String get car_hand_note_title_view_details_btn;

  /// No description provided for @car_hand_note_notice_cancel_order.
  ///
  /// In en, this message translates to:
  /// **'The refund amount (if any) of the canceled order will be transferred to the customer\'s bank account within the period specified by the supplier.'**
  String get car_hand_note_notice_cancel_order;

  /// No description provided for @car_hand_note_title_tab_all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get car_hand_note_title_tab_all;

  /// No description provided for @car_hand_note_title_tab_awaiting_fulfillment.
  ///
  /// In en, this message translates to:
  /// **'Awaiting fulfillment'**
  String get car_hand_note_title_tab_awaiting_fulfillment;

  /// No description provided for @car_hand_note_title_tab_awaiting_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Awaiting Confirmation'**
  String get car_hand_note_title_tab_awaiting_confirmation;

  /// No description provided for @car_hand_note_title_tab_ongoing.
  ///
  /// In en, this message translates to:
  /// **'Ongoing'**
  String get car_hand_note_title_tab_ongoing;

  /// No description provided for @car_hand_note_title_tab_completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get car_hand_note_title_tab_completed;

  /// No description provided for @car_hand_note_title_tab_canceled.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get car_hand_note_title_tab_canceled;

  /// No description provided for @car_hand_note_title_order_manager.
  ///
  /// In en, this message translates to:
  /// **'Order management '**
  String get car_hand_note_title_order_manager;

  /// No description provided for @car_hand_note_title_create_date.
  ///
  /// In en, this message translates to:
  /// **'Date created'**
  String get car_hand_note_title_create_date;

  /// No description provided for @car_hand_note_title_view_more_btn.
  ///
  /// In en, this message translates to:
  /// **'View more'**
  String get car_hand_note_title_view_more_btn;

  /// No description provided for @car_hand_note_title_status_order_completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get car_hand_note_title_status_order_completed;

  /// No description provided for @car_hand_note_title_status_payment_successful.
  ///
  /// In en, this message translates to:
  /// **'Successful'**
  String get car_hand_note_title_status_payment_successful;

  /// No description provided for @car_hand_note_title_details_order.
  ///
  /// In en, this message translates to:
  /// **'Order details'**
  String get car_hand_note_title_details_order;

  /// No description provided for @car_hand_note_title_contact_info.
  ///
  /// In en, this message translates to:
  /// **'Contact\'s details'**
  String get car_hand_note_title_contact_info;

  /// No description provided for @car_hand_note_title_info_rental_car.
  ///
  /// In en, this message translates to:
  /// **'Booking information'**
  String get car_hand_note_title_info_rental_car;

  /// No description provided for @car_hand_note_title_driver_info.
  ///
  /// In en, this message translates to:
  /// **'Driver details'**
  String get car_hand_note_title_driver_info;

  /// No description provided for @car_hand_note_title_pirce_details.
  ///
  /// In en, this message translates to:
  /// **'Price details'**
  String get car_hand_note_title_pirce_details;

  /// No description provided for @car_hand_note_title_creator.
  ///
  /// In en, this message translates to:
  /// **'Created by'**
  String get car_hand_note_title_creator;

  /// No description provided for @car_hand_note_title_person_contact.
  ///
  /// In en, this message translates to:
  /// **'Contact person'**
  String get car_hand_note_title_person_contact;

  /// No description provided for @car_hand_note_title_phone.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get car_hand_note_title_phone;

  /// No description provided for @car_hand_note_title_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get car_hand_note_title_email;

  /// No description provided for @car_hand_note_title_country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get car_hand_note_title_country;

  /// No description provided for @car_hand_note_title_address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get car_hand_note_title_address;

  /// No description provided for @car_hand_note_title_price_of_car_rental.
  ///
  /// In en, this message translates to:
  /// **'Car rental price'**
  String get car_hand_note_title_price_of_car_rental;

  /// No description provided for @car_hand_note_title_price_payment_fee.
  ///
  /// In en, this message translates to:
  /// **'Payment fee'**
  String get car_hand_note_title_price_payment_fee;

  /// No description provided for @car_hand_note_title_info_extra_services.
  ///
  /// In en, this message translates to:
  /// **'Extra services'**
  String get car_hand_note_title_info_extra_services;

  /// No description provided for @car_hand_note_title_type_insurance.
  ///
  /// In en, this message translates to:
  /// **'Type of insurances'**
  String get car_hand_note_title_type_insurance;

  /// No description provided for @car_hand_note_title_info_insurance.
  ///
  /// In en, this message translates to:
  /// **'Insurance information'**
  String get car_hand_note_title_info_insurance;

  /// No description provided for @car_hand_note_title_car_info.
  ///
  /// In en, this message translates to:
  /// **'Car details'**
  String get car_hand_note_title_car_info;

  /// No description provided for @car_search_result_not_found_title.
  ///
  /// In en, this message translates to:
  /// **'Sorry, the vehicle you are looking for could not be found.'**
  String get car_search_result_not_found_title;

  /// No description provided for @car_search_result_not_found_sub_title.
  ///
  /// In en, this message translates to:
  /// **'We cannot find the suitable match for your request.\nPlease try again.'**
  String get car_search_result_not_found_sub_title;

  /// No description provided for @car_search_result_first_title_rental_car.
  ///
  /// In en, this message translates to:
  /// **'Car rental in'**
  String get car_search_result_first_title_rental_car;

  /// No description provided for @car_search_info_booking.
  ///
  /// In en, this message translates to:
  /// **'Car booking information'**
  String get car_search_info_booking;

  /// No description provided for @car_search_total_price.
  ///
  /// In en, this message translates to:
  /// **'Total price'**
  String get car_search_total_price;

  /// No description provided for @car_search_total_date.
  ///
  /// In en, this message translates to:
  /// **'date'**
  String get car_search_total_date;

  /// No description provided for @car_search_validate.
  ///
  /// In en, this message translates to:
  /// **'Please enter your booking code or order number to continue searching'**
  String get car_search_validate;

  /// No description provided for @car_detail_btn_rent_now.
  ///
  /// In en, this message translates to:
  /// **'Book now'**
  String get car_detail_btn_rent_now;

  /// No description provided for @car_notice_title_check_connection.
  ///
  /// In en, this message translates to:
  /// **'Please check your connection and try again!'**
  String get car_notice_title_check_connection;

  /// No description provided for @car_rent_input_title_details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get car_rent_input_title_details;

  /// No description provided for @car_rent_input_title_total_payment.
  ///
  /// In en, this message translates to:
  /// **'Total payment'**
  String get car_rent_input_title_total_payment;

  /// No description provided for @car_rent_input_title_payment.
  ///
  /// In en, this message translates to:
  /// **'Pay'**
  String get car_rent_input_title_payment;

  /// No description provided for @car_rent_form_input_last_name.
  ///
  /// In en, this message translates to:
  /// **'Last name (Without tone marks)'**
  String get car_rent_form_input_last_name;

  /// No description provided for @car_rent_form_input_first_name.
  ///
  /// In en, this message translates to:
  /// **'Middle & First/Given name (Without tone marks)'**
  String get car_rent_form_input_first_name;

  /// No description provided for @car_rent_input_content_cb_use_contact_details.
  ///
  /// In en, this message translates to:
  /// **'Use contact\'s details'**
  String get car_rent_input_content_cb_use_contact_details;

  /// No description provided for @car_rent_input_title_method_payment.
  ///
  /// In en, this message translates to:
  /// **'Pay'**
  String get car_rent_input_title_method_payment;

  /// No description provided for @car_rent_input_title_method_pay.
  ///
  /// In en, this message translates to:
  /// **'Payment option'**
  String get car_rent_input_title_method_pay;

  /// No description provided for @car_rent_input_title_late_payment.
  ///
  /// In en, this message translates to:
  /// **'Pay later'**
  String get car_rent_input_title_late_payment;

  /// No description provided for @car_rent_input_title_now_payment.
  ///
  /// In en, this message translates to:
  /// **'Pay now'**
  String get car_rent_input_title_now_payment;

  /// No description provided for @car_rent_input_title_information_card.
  ///
  /// In en, this message translates to:
  /// **'Card details'**
  String get car_rent_input_title_information_card;

  /// No description provided for @car_rent_input_title_driver_age.
  ///
  /// In en, this message translates to:
  /// **'Driver\'s age'**
  String get car_rent_input_title_driver_age;

  /// No description provided for @car_rent_input_title_Do_you_need_anything_else.
  ///
  /// In en, this message translates to:
  /// **'Do you need anything else?'**
  String get car_rent_input_title_Do_you_need_anything_else;

  /// No description provided for @car_rent_input_title_accept_policy.
  ///
  /// In en, this message translates to:
  /// **'By proceeding with the next step, I confirm that I have read and agreed to Hahalolo’s Terms - Policies and Privacy Policy'**
  String get car_rent_input_title_accept_policy;

  /// No description provided for @car_rent_input_title_card_must_be_valid.
  ///
  /// In en, this message translates to:
  /// **'Your card must be valid to secure the rental with the supplier.'**
  String get car_rent_input_title_card_must_be_valid;

  /// No description provided for @car_rent_input_title_accept_card_pay.
  ///
  /// In en, this message translates to:
  /// **'Accepted payment cards'**
  String get car_rent_input_title_accept_card_pay;

  /// No description provided for @car_rent_input_title_content_notice_later_pay.
  ///
  /// In en, this message translates to:
  /// **'The car supplier will process your payment. Depending on booking conditions, you can pay in full or in part.'**
  String get car_rent_input_title_content_notice_later_pay;

  /// No description provided for @car_rent_input_title_select_type_card.
  ///
  /// In en, this message translates to:
  /// **'Select Credit Card type'**
  String get car_rent_input_title_select_type_card;

  /// No description provided for @car_rent_input_title_number_card.
  ///
  /// In en, this message translates to:
  /// **'Card number'**
  String get car_rent_input_title_number_card;

  /// No description provided for @car_rent_input_title_enter_number_card.
  ///
  /// In en, this message translates to:
  /// **'Enter card number'**
  String get car_rent_input_title_enter_number_card;

  /// No description provided for @car_rent_input_title_name_card.
  ///
  /// In en, this message translates to:
  /// **'Cardholder name'**
  String get car_rent_input_title_name_card;

  /// No description provided for @car_rent_input_title_enter_name_card.
  ///
  /// In en, this message translates to:
  /// **'Enter cardholder name'**
  String get car_rent_input_title_enter_name_card;

  /// No description provided for @car_rent_input_title_select_expiry_date.
  ///
  /// In en, this message translates to:
  /// **'Select expiry date'**
  String get car_rent_input_title_select_expiry_date;

  /// No description provided for @car_rent_input_title_expiry_date.
  ///
  /// In en, this message translates to:
  /// **'Expiry date'**
  String get car_rent_input_title_expiry_date;

  /// No description provided for @car_rent_input_title_gate_ways.
  ///
  /// In en, this message translates to:
  /// **'Payment gateway'**
  String get car_rent_input_title_gate_ways;

  /// No description provided for @car_rent_input_title_ccv_code.
  ///
  /// In en, this message translates to:
  /// **'CVC code'**
  String get car_rent_input_title_ccv_code;

  /// No description provided for @car_rent_input_title_enter_ccv_code.
  ///
  /// In en, this message translates to:
  /// **'Enter CVC code'**
  String get car_rent_input_title_enter_ccv_code;

  /// No description provided for @car_rent_input_title_first_notice_need_anything_else.
  ///
  /// In en, this message translates to:
  /// **'We will inform the supplier that you\'re interested in these services, so they can provide you with detailed information.\n\n Your request cannot be guaranteed. Don\'t worry! The supplier will try to fulfill your needs.'**
  String get car_rent_input_title_first_notice_need_anything_else;

  /// No description provided for @car_rent_input_title_sub_notice_need_anything_else.
  ///
  /// In en, this message translates to:
  /// **'Your request cannot be guaranteed. Don\'t worry! The supplier will try to fulfill your needs.'**
  String get car_rent_input_title_sub_notice_need_anything_else;

  /// No description provided for @car_rent_input_hint_enter_maximum_fifteen_character.
  ///
  /// In en, this message translates to:
  /// **'Enter a maximum of 55 characters'**
  String get car_rent_input_hint_enter_maximum_fifteen_character;

  /// No description provided for @car_rent_input_noti_invalid_last_name.
  ///
  /// In en, this message translates to:
  /// **'Invalid last name'**
  String get car_rent_input_noti_invalid_last_name;

  /// No description provided for @car_rent_input_noti_invalid_first_name.
  ///
  /// In en, this message translates to:
  /// **'Invalid Middle & First/Given name'**
  String get car_rent_input_noti_invalid_first_name;

  /// No description provided for @car_rent_input_noti_required_last_name.
  ///
  /// In en, this message translates to:
  /// **'Last name is required'**
  String get car_rent_input_noti_required_last_name;

  /// No description provided for @car_rent_input_noti_required_first_name.
  ///
  /// In en, this message translates to:
  /// **'Middle & First/Given name is required'**
  String get car_rent_input_noti_required_first_name;

  /// No description provided for @car_rent_input_noti_invalid_email.
  ///
  /// In en, this message translates to:
  /// **'Invalid email'**
  String get car_rent_input_noti_invalid_email;

  /// No description provided for @car_rent_input_noti_invalid_phone.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number'**
  String get car_rent_input_noti_invalid_phone;

  /// No description provided for @car_rent_input_noti_required_email.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get car_rent_input_noti_required_email;

  /// No description provided for @car_rent_input_noti_required_phone.
  ///
  /// In en, this message translates to:
  /// **'Phone number is required'**
  String get car_rent_input_noti_required_phone;

  /// No description provided for @car_rent_input_noti_requried_address.
  ///
  /// In en, this message translates to:
  /// **'Address is required'**
  String get car_rent_input_noti_requried_address;

  /// No description provided for @car_rent_input_noti_requried_country.
  ///
  /// In en, this message translates to:
  /// **'Country is required'**
  String get car_rent_input_noti_requried_country;

  /// No description provided for @car_rent_input_noti_requried_number_card.
  ///
  /// In en, this message translates to:
  /// **'Card number is required'**
  String get car_rent_input_noti_requried_number_card;

  /// No description provided for @car_rent_input_noti_requried_card_holder_name.
  ///
  /// In en, this message translates to:
  /// **'Cardholder name is required'**
  String get car_rent_input_noti_requried_card_holder_name;

  /// No description provided for @car_rent_input_noti_requried_type_card.
  ///
  /// In en, this message translates to:
  /// **'Credit card is required'**
  String get car_rent_input_noti_requried_type_card;

  /// No description provided for @car_rent_input_noti_requried_expiry.
  ///
  /// In en, this message translates to:
  /// **'Expiry date is required'**
  String get car_rent_input_noti_requried_expiry;

  /// No description provided for @car_rent_input_title_type_card_credit.
  ///
  /// In en, this message translates to:
  /// **'Credit Card type'**
  String get car_rent_input_title_type_card_credit;

  /// No description provided for @car_rent_input_title_currency_at_rental_car_place.
  ///
  /// In en, this message translates to:
  /// **'Currency on pick-up location'**
  String get car_rent_input_title_currency_at_rental_car_place;

  /// No description provided for @car_rent_input_title_rule_age.
  ///
  /// In en, this message translates to:
  /// **'Age rules'**
  String get car_rent_input_title_rule_age;

  /// No description provided for @car_rent_input_notice_term_and_policy_first_string.
  ///
  /// In en, this message translates to:
  /// **'By proceeding with the next step, I confirm that I have read and agreed to Hahalolo’s '**
  String get car_rent_input_notice_term_and_policy_first_string;

  /// No description provided for @car_rent_input_notice_term_and_policy_append__string.
  ///
  /// In en, this message translates to:
  /// **'Terms - Policies'**
  String get car_rent_input_notice_term_and_policy_append__string;

  /// No description provided for @car_rent_input_notice_term_and_policy_between_string.
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get car_rent_input_notice_term_and_policy_between_string;

  /// No description provided for @car_rent_input_notice_term_and_policy_append___string.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get car_rent_input_notice_term_and_policy_append___string;

  /// No description provided for @car_rent_input_notice_term_and_policy_append____string.
  ///
  /// In en, this message translates to:
  /// **''**
  String get car_rent_input_notice_term_and_policy_append____string;

  /// No description provided for @car_cart_title_pick_up.
  ///
  /// In en, this message translates to:
  /// **'Pick-up'**
  String get car_cart_title_pick_up;

  /// No description provided for @car_cart_title_drop_off.
  ///
  /// In en, this message translates to:
  /// **'Drop-off'**
  String get car_cart_title_drop_off;

  /// No description provided for @car_cart_title_included_texas_fee.
  ///
  /// In en, this message translates to:
  /// **'Taxes and fees included'**
  String get car_cart_title_included_texas_fee;

  /// No description provided for @car_cart_title_btn_delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get car_cart_title_btn_delete;

  /// No description provided for @car_cart_title_btn_edit.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get car_cart_title_btn_edit;

  /// No description provided for @car_cart_title_sub_total.
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get car_cart_title_sub_total;

  /// No description provided for @car_cart_title_car_types.
  ///
  /// In en, this message translates to:
  /// **'Car type:'**
  String get car_cart_title_car_types;

  /// No description provided for @car_title_select_country.
  ///
  /// In en, this message translates to:
  /// **'Choose country'**
  String get car_title_select_country;

  /// No description provided for @car_title_select_city_or_state.
  ///
  /// In en, this message translates to:
  /// **'Choose city/state'**
  String get car_title_select_city_or_state;

  /// No description provided for @car_title_car_cart.
  ///
  /// In en, this message translates to:
  /// **'Car Booking'**
  String get car_title_car_cart;

  /// No description provided for @car_hint_text_country.
  ///
  /// In en, this message translates to:
  /// **'Country...'**
  String get car_hint_text_country;

  /// No description provided for @car_feed_input_hint_pick_up_place.
  ///
  /// In en, this message translates to:
  /// **'Your pick-up place'**
  String get car_feed_input_hint_pick_up_place;

  /// No description provided for @car_feed_input_hint_drop_off_place.
  ///
  /// In en, this message translates to:
  /// **'Your drop-off place'**
  String get car_feed_input_hint_drop_off_place;

  /// No description provided for @car_feed_notice_empty_location_pick_up.
  ///
  /// In en, this message translates to:
  /// **'Please select a pick-up place to search'**
  String get car_feed_notice_empty_location_pick_up;

  /// No description provided for @car_result_notice_no_data_found.
  ///
  /// In en, this message translates to:
  /// **'Sorry, no data found'**
  String get car_result_notice_no_data_found;

  /// No description provided for @car_result_notice_no_flight_found_description.
  ///
  /// In en, this message translates to:
  /// **'We could not find any results that match your search query.Please try searching again.'**
  String get car_result_notice_no_flight_found_description;

  /// No description provided for @car_title_search_enter_drop_off_place.
  ///
  /// In en, this message translates to:
  /// **'Enter drop-off place'**
  String get car_title_search_enter_drop_off_place;

  /// No description provided for @notify_error_occurred.
  ///
  /// In en, this message translates to:
  /// **'Has error occurred. Please try again'**
  String get notify_error_occurred;

  /// No description provided for @car_hand_note_detail_order_full_name.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get car_hand_note_detail_order_full_name;

  /// No description provided for @car_hand_note_detail_order_promotion.
  ///
  /// In en, this message translates to:
  /// **'Promotion'**
  String get car_hand_note_detail_order_promotion;

  /// No description provided for @car_hand_note_detail_order_act_history.
  ///
  /// In en, this message translates to:
  /// **'Activity history'**
  String get car_hand_note_detail_order_act_history;

  /// No description provided for @car_hand_note_detail_order_request_other.
  ///
  /// In en, this message translates to:
  /// **'Yêu cầu khác'**
  String get car_hand_note_detail_order_request_other;

  /// No description provided for @car_hand_note_detail_order_order_payment.
  ///
  /// In en, this message translates to:
  /// **'Order payment'**
  String get car_hand_note_detail_order_order_payment;

  /// No description provided for @car_hand_note_detail_order_cancel_info.
  ///
  /// In en, this message translates to:
  /// **'Order cancel information'**
  String get car_hand_note_detail_order_cancel_info;

  /// No description provided for @car_hand_note_detail_order_payment_info.
  ///
  /// In en, this message translates to:
  /// **'Payment information'**
  String get car_hand_note_detail_order_payment_info;

  /// No description provided for @car_hand_note_detail_order_paid.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get car_hand_note_detail_order_paid;

  /// No description provided for @car_hand_note_detail_order_unpaid.
  ///
  /// In en, this message translates to:
  /// **'Unpaid'**
  String get car_hand_note_detail_order_unpaid;

  /// No description provided for @car_hand_note_title_days_ago.
  ///
  /// In en, this message translates to:
  /// **'days ago'**
  String get car_hand_note_title_days_ago;

  /// No description provided for @car_hand_note_detail_order_cancel_fee.
  ///
  /// In en, this message translates to:
  /// **'Cancelation fee'**
  String get car_hand_note_detail_order_cancel_fee;

  /// No description provided for @car_hand_note_detail_order_amount_ongoing_return.
  ///
  /// In en, this message translates to:
  /// **'Estimated refund amount'**
  String get car_hand_note_detail_order_amount_ongoing_return;

  /// No description provided for @car_hand_note_detail_order_time_ongoing_return.
  ///
  /// In en, this message translates to:
  /// **'Estimated refund time'**
  String get car_hand_note_detail_order_time_ongoing_return;

  /// No description provided for @car_hand_note_detail_order_info_transaction.
  ///
  /// In en, this message translates to:
  /// **'Transaction information'**
  String get car_hand_note_detail_order_info_transaction;

  /// No description provided for @car_hand_note_detail_order_amount_payment.
  ///
  /// In en, this message translates to:
  /// **'Total amount'**
  String get car_hand_note_detail_order_amount_payment;

  /// No description provided for @car_hand_note_detail_order_total_order.
  ///
  /// In en, this message translates to:
  /// **'Order total'**
  String get car_hand_note_detail_order_total_order;

  /// No description provided for @car_hand_note_detail_content_define_vat.
  ///
  /// In en, this message translates to:
  /// **'VAT is the tax and fee that you\'re required to pay the car provider under their regulations when using the car rental service.'**
  String get car_hand_note_detail_content_define_vat;

  /// No description provided for @car_title_search_result_first_character.
  ///
  /// In en, this message translates to:
  /// **'Car rental in'**
  String get car_title_search_result_first_character;

  /// No description provided for @car_title_tool_bar_pick_up_location.
  ///
  /// In en, this message translates to:
  /// **'Where you want to pick-up'**
  String get car_title_tool_bar_pick_up_location;

  /// No description provided for @car_title_tool_bar_drop_off_location.
  ///
  /// In en, this message translates to:
  /// **'Where you want to drop-off'**
  String get car_title_tool_bar_drop_off_location;

  /// No description provided for @car_hand_note_detail_content_define_currency_on_pick_location.
  ///
  /// In en, this message translates to:
  /// **'The car rental price is converted based on the current currency used by the Car supplier.\nNote:\n- The exchange rate is subject to change before you pay.\n- Your card issuer may charge you a foreign transaction fee.'**
  String get car_hand_note_detail_content_define_currency_on_pick_location;

  /// No description provided for @car_hand_note_detail_content_define_payment_fee.
  ///
  /// In en, this message translates to:
  /// **'The transaction fee corresponding to each car rental request that you need to pay the online payment gateway service provider.'**
  String get car_hand_note_detail_content_define_payment_fee;

  /// No description provided for @car_hand_note_detail_content_notice_insurance.
  ///
  /// In en, this message translates to:
  /// **'Note: If you\'d like to apply for these insurance packages, please contact the car provider\'s front desk directly.'**
  String get car_hand_note_detail_content_notice_insurance;

  /// No description provided for @car_hand_note_detail_title_header_insurance.
  ///
  /// In en, this message translates to:
  /// **'Many car insurance and rental contracts cover exclusions that may be expensive associated with rental car damage or theft. However, having insurance below will help protect and offer you financial support by a considerable amount of money.'**
  String get car_hand_note_detail_title_header_insurance;

  /// No description provided for @car_result_booking_title_header_rental_car_success.
  ///
  /// In en, this message translates to:
  /// **'BOOKING SUCCESSFUL'**
  String get car_result_booking_title_header_rental_car_success;

  /// No description provided for @car_result_booking_title_btn_continue_rental_car.
  ///
  /// In en, this message translates to:
  /// **'Continue to book'**
  String get car_result_booking_title_btn_continue_rental_car;

  /// No description provided for @car_result_booking_title_btn_view_order_details.
  ///
  /// In en, this message translates to:
  /// **'View details'**
  String get car_result_booking_title_btn_view_order_details;

  /// No description provided for @car_result_booking_title_header_first_char.
  ///
  /// In en, this message translates to:
  /// **'Your booking request has been successfully made '**
  String get car_result_booking_title_header_first_char;

  /// No description provided for @car_result_booking_title_header_second_char.
  ///
  /// In en, this message translates to:
  /// **'(Paid)'**
  String get car_result_booking_title_header_second_char;

  /// No description provided for @car_result_booking_title_header_third_char.
  ///
  /// In en, this message translates to:
  /// **'. You can check the car rental details below.'**
  String get car_result_booking_title_header_third_char;

  /// No description provided for @car_result_booking_title_header__char.
  ///
  /// In en, this message translates to:
  /// **'Thank you for your trust in '**
  String get car_result_booking_title_header__char;

  /// No description provided for @car_result_booking_title_header____char.
  ///
  /// In en, this message translates to:
  /// **'service. If you have any questions or need further assistance, please contact our Help Center at '**
  String get car_result_booking_title_header____char;

  /// No description provided for @car_result_booking_title_header_____char.
  ///
  /// In en, this message translates to:
  /// **' for instructions.'**
  String get car_result_booking_title_header_____char;

  /// No description provided for @car_result_booking_title_header______char.
  ///
  /// In en, this message translates to:
  /// **'. You can check the car rental details below.'**
  String get car_result_booking_title_header______char;

  /// No description provided for @car_result_booking_title_order.
  ///
  /// In en, this message translates to:
  /// **'Order'**
  String get car_result_booking_title_order;

  /// No description provided for @car_result_booking_title_billing_info.
  ///
  /// In en, this message translates to:
  /// **'Billing information'**
  String get car_result_booking_title_billing_info;

  /// No description provided for @car_result_booking_title_time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get car_result_booking_title_time;

  /// No description provided for @car_result_booking_title_name_car.
  ///
  /// In en, this message translates to:
  /// **'Car name'**
  String get car_result_booking_title_name_car;

  /// No description provided for @car_you_dont_have_any_car_rental_orders.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any car rental orders yet.'**
  String get car_you_dont_have_any_car_rental_orders;

  /// No description provided for @car_picker_time_from_the_date.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get car_picker_time_from_the_date;

  /// No description provided for @car_picker_time_to_the_date.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get car_picker_time_to_the_date;

  /// No description provided for @car_picker_time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get car_picker_time;

  /// No description provided for @car_extra_service.
  ///
  /// In en, this message translates to:
  /// **'Some additional services below may be offered to you by the car provider. If you want to apply for them, please contact the provider\'s front desk directly.'**
  String get car_extra_service;

  /// No description provided for @car_extra_charges.
  ///
  /// In en, this message translates to:
  /// **'Extra charges will apply to drivers under or over the age specified by the car supplier'**
  String get car_extra_charges;

  /// No description provided for @car_note_driver_age.
  ///
  /// In en, this message translates to:
  /// **'Note: This feed will be collected at the reception upon your arrival to pick up car.'**
  String get car_note_driver_age;

  /// No description provided for @car_details_title_penalty_fee_regulations_return_car_late.
  ///
  /// In en, this message translates to:
  /// **'Penalty fee regulations for late car rental return:'**
  String get car_details_title_penalty_fee_regulations_return_car_late;

  /// No description provided for @car_rental_details.
  ///
  /// In en, this message translates to:
  /// **'Car rental details'**
  String get car_rental_details;

  /// No description provided for @car_gearbox.
  ///
  /// In en, this message translates to:
  /// **'Gearbox'**
  String get car_gearbox;

  /// No description provided for @car_search_code_no_information.
  ///
  /// In en, this message translates to:
  /// **'No booking information found.\nPlease check and try again'**
  String get car_search_code_no_information;

  /// No description provided for @car_input_code_message_empty.
  ///
  /// In en, this message translates to:
  /// **'Please enter your booking number'**
  String get car_input_code_message_empty;

  /// No description provided for @car_no_location_pick_up.
  ///
  /// In en, this message translates to:
  /// **'The selected location could not be found.\nPlease check again'**
  String get car_no_location_pick_up;

  /// No description provided for @car_card_must_valid.
  ///
  /// In en, this message translates to:
  /// **'Your card must be valid to guarantee a car rental with the same provider'**
  String get car_card_must_valid;

  /// No description provided for @car_i_agree.
  ///
  /// In en, this message translates to:
  /// **'I agree with '**
  String get car_i_agree;

  /// No description provided for @aff_action_accept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get aff_action_accept;

  /// No description provided for @aff_chart_day_ago.
  ///
  /// In en, this message translates to:
  /// **'{number} days ago'**
  String aff_chart_day_ago(Object number);

  /// No description provided for @aff_date_from_to.
  ///
  /// In en, this message translates to:
  /// **'From {from} to {to}'**
  String aff_date_from_to(Object from, Object to);

  /// No description provided for @aff_cookie_duration.
  ///
  /// In en, this message translates to:
  /// **'Cookie duration: {duration} {type}'**
  String aff_cookie_duration(Object duration, Object type);

  /// No description provided for @aff_hotel.
  ///
  /// In en, this message translates to:
  /// **'Hotel'**
  String get aff_hotel;

  /// No description provided for @aff_tour.
  ///
  /// In en, this message translates to:
  /// **'Tour'**
  String get aff_tour;

  /// No description provided for @aff_product_name.
  ///
  /// In en, this message translates to:
  /// **'Product name'**
  String get aff_product_name;

  /// No description provided for @aff_anonymous_user.
  ///
  /// In en, this message translates to:
  /// **'Anonymous user'**
  String get aff_anonymous_user;

  /// No description provided for @aff_unknown.
  ///
  /// In en, this message translates to:
  /// **' Unknown'**
  String get aff_unknown;

  /// No description provided for @aff_product_unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown product type'**
  String get aff_product_unknown;

  /// No description provided for @aff_share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get aff_share;

  /// No description provided for @aff_fetch_data_failure.
  ///
  /// In en, this message translates to:
  /// **'Failed to get data'**
  String get aff_fetch_data_failure;

  /// No description provided for @aff_fetch_data_failure_try_later.
  ///
  /// In en, this message translates to:
  /// **'Failed to get data. Please try again later.'**
  String get aff_fetch_data_failure_try_later;

  /// No description provided for @aff_detail.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get aff_detail;

  /// No description provided for @aff_no_data.
  ///
  /// In en, this message translates to:
  /// **'No data found'**
  String get aff_no_data;

  /// No description provided for @aff_all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get aff_all;

  /// No description provided for @aff_country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get aff_country;

  /// No description provided for @aff_summary.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get aff_summary;

  /// No description provided for @aff_link_management.
  ///
  /// In en, this message translates to:
  /// **'Link Management'**
  String get aff_link_management;

  /// No description provided for @aff_promotion_tool.
  ///
  /// In en, this message translates to:
  /// **'Marketing Tools'**
  String get aff_promotion_tool;

  /// No description provided for @aff_help.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get aff_help;

  /// No description provided for @aff_notification.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get aff_notification;

  /// No description provided for @aff_notification_no_data.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any notifications'**
  String get aff_notification_no_data;

  /// No description provided for @aff_revenue.
  ///
  /// In en, this message translates to:
  /// **'Revenue'**
  String get aff_revenue;

  /// No description provided for @aff_revenue_total.
  ///
  /// In en, this message translates to:
  /// **'Total revenue'**
  String get aff_revenue_total;

  /// No description provided for @aff_customer_id.
  ///
  /// In en, this message translates to:
  /// **'Customer ID'**
  String get aff_customer_id;

  /// No description provided for @aff_payment_total.
  ///
  /// In en, this message translates to:
  /// **'Total amount'**
  String get aff_payment_total;

  /// No description provided for @aff_commission_receive.
  ///
  /// In en, this message translates to:
  /// **'Total commissions received'**
  String get aff_commission_receive;

  /// No description provided for @aff_search_by_order.
  ///
  /// In en, this message translates to:
  /// **'Search by order code'**
  String get aff_search_by_order;

  /// No description provided for @aff_reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get aff_reset;

  /// No description provided for @aff_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get aff_cancel;

  /// No description provided for @aff_save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get aff_save;

  /// No description provided for @aff_search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get aff_search;

  /// No description provided for @aff_continue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get aff_continue;

  /// No description provided for @aff_payment_account.
  ///
  /// In en, this message translates to:
  /// **'Payment account'**
  String get aff_payment_account;

  /// No description provided for @aff_profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get aff_profile;

  /// No description provided for @aff_edit_profile.
  ///
  /// In en, this message translates to:
  /// **'Edit information'**
  String get aff_edit_profile;

  /// No description provided for @aff_affiliate.
  ///
  /// In en, this message translates to:
  /// **'Affiliate'**
  String get aff_affiliate;

  /// No description provided for @aff_setting.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get aff_setting;

  /// No description provided for @aff_resend.
  ///
  /// In en, this message translates to:
  /// **'Resend'**
  String get aff_resend;

  /// No description provided for @aff_verify_failure.
  ///
  /// In en, this message translates to:
  /// **'Verification failed'**
  String get aff_verify_failure;

  /// No description provided for @aff_show_code.
  ///
  /// In en, this message translates to:
  /// **'Show code'**
  String get aff_show_code;

  /// No description provided for @aff_sms_block_forever.
  ///
  /// In en, this message translates to:
  /// **'The verification function has been temporarily locked. Please try again later.'**
  String get aff_sms_block_forever;

  /// No description provided for @aff_sms_wrong_code.
  ///
  /// In en, this message translates to:
  /// **'Incorrect verification code. Please check it again.'**
  String get aff_sms_wrong_code;

  /// No description provided for @aff_sms_expired_code.
  ///
  /// In en, this message translates to:
  /// **'The verification code has expired. Please get another code'**
  String get aff_sms_expired_code;

  /// No description provided for @aff_sms_verify_failure.
  ///
  /// In en, this message translates to:
  /// **'Verification failed. Please try again later.'**
  String get aff_sms_verify_failure;

  /// No description provided for @aff_enter_verify_code.
  ///
  /// In en, this message translates to:
  /// **'Enter verification code'**
  String get aff_enter_verify_code;

  /// No description provided for @aff_we_send_code_to_phone.
  ///
  /// In en, this message translates to:
  /// **'We sent a verification code to {phone}.\nEnter the code you received to complete this step.'**
  String aff_we_send_code_to_phone(Object phone);

  /// No description provided for @aff_code_expired_in.
  ///
  /// In en, this message translates to:
  /// **'The code will expire in:'**
  String get aff_code_expired_in;

  /// No description provided for @aff_sms_block.
  ///
  /// In en, this message translates to:
  /// **'The code sending function via SMS is temporarily locked.'**
  String get aff_sms_block;

  /// No description provided for @aff_sms_resend_in.
  ///
  /// In en, this message translates to:
  /// **'You can choose to resend the code in:'**
  String get aff_sms_resend_in;

  /// No description provided for @aff_account_information.
  ///
  /// In en, this message translates to:
  /// **'ACCOUNT INFORMATION'**
  String get aff_account_information;

  /// No description provided for @aff_account_information_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Please update your phone number in your payment account to be able to continue using services on Hahalolo.'**
  String get aff_account_information_subtitle;

  /// No description provided for @aff_account_name.
  ///
  /// In en, this message translates to:
  /// **'Account name'**
  String get aff_account_name;

  /// No description provided for @aff_search_county.
  ///
  /// In en, this message translates to:
  /// **'Search country'**
  String get aff_search_county;

  /// No description provided for @aff_wallet_create_failure.
  ///
  /// In en, this message translates to:
  /// **'Payment account creation failed'**
  String get aff_wallet_create_failure;

  /// No description provided for @aff_wallet_create_failure_try_again.
  ///
  /// In en, this message translates to:
  /// **'Payment account creation failed. Please try again later.'**
  String get aff_wallet_create_failure_try_again;

  /// No description provided for @aff_information_general.
  ///
  /// In en, this message translates to:
  /// **'General Information'**
  String get aff_information_general;

  /// No description provided for @aff_information_unknown.
  ///
  /// In en, this message translates to:
  /// **'(Unknown)'**
  String get aff_information_unknown;

  /// No description provided for @aff_information_full_name.
  ///
  /// In en, this message translates to:
  /// **'Full Name{char}'**
  String aff_information_full_name(Object char);

  /// No description provided for @aff_information_email.
  ///
  /// In en, this message translates to:
  /// **'Email{char}'**
  String aff_information_email(Object char);

  /// No description provided for @aff_information_phone.
  ///
  /// In en, this message translates to:
  /// **'Phone Number{char}'**
  String aff_information_phone(Object char);

  /// No description provided for @aff_information_birthday.
  ///
  /// In en, this message translates to:
  /// **'Date of Birth{char}'**
  String aff_information_birthday(Object char);

  /// No description provided for @aff_information_gender.
  ///
  /// In en, this message translates to:
  /// **'Gender{char}'**
  String aff_information_gender(Object char);

  /// No description provided for @aff_information_address.
  ///
  /// In en, this message translates to:
  /// **'Address{char}'**
  String aff_information_address(Object char);

  /// No description provided for @aff_information_country.
  ///
  /// In en, this message translates to:
  /// **' Country{char}'**
  String aff_information_country(Object char);

  /// No description provided for @aff_information_additional.
  ///
  /// In en, this message translates to:
  /// **'More Information'**
  String get aff_information_additional;

  /// No description provided for @aff_information_city.
  ///
  /// In en, this message translates to:
  /// **'Province/City{char}'**
  String aff_information_city(Object char);

  /// No description provided for @aff_information_post_code.
  ///
  /// In en, this message translates to:
  /// **'Postal Code{char}'**
  String aff_information_post_code(Object char);

  /// No description provided for @aff_information_id_code.
  ///
  /// In en, this message translates to:
  /// **'ID Card/Passport{char}'**
  String aff_information_id_code(Object char);

  /// No description provided for @aff_information_expired_date.
  ///
  /// In en, this message translates to:
  /// **'Expiration Date{char}'**
  String aff_information_expired_date(Object char);

  /// No description provided for @aff_information_country_of_issue.
  ///
  /// In en, this message translates to:
  /// **'Country of Issue{char}'**
  String aff_information_country_of_issue(Object char);

  /// No description provided for @aff_information_nationality.
  ///
  /// In en, this message translates to:
  /// **'Nationality{char}'**
  String aff_information_nationality(Object char);

  /// No description provided for @aff_information_place_of_birth.
  ///
  /// In en, this message translates to:
  /// **'Place of Birth{char}'**
  String aff_information_place_of_birth(Object char);

  /// No description provided for @aff_information_phone_code.
  ///
  /// In en, this message translates to:
  /// **'Phone code'**
  String get aff_information_phone_code;

  /// No description provided for @aff_gender_male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get aff_gender_male;

  /// No description provided for @aff_gender_female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get aff_gender_female;

  /// No description provided for @aff_gender_other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get aff_gender_other;

  /// No description provided for @aff_validate_full_name.
  ///
  /// In en, this message translates to:
  /// **'Full name must be at least 3 characters'**
  String get aff_validate_full_name;

  /// No description provided for @aff_validate_email.
  ///
  /// In en, this message translates to:
  /// **'Invalid email'**
  String get aff_validate_email;

  /// No description provided for @aff_validate_phone.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number'**
  String get aff_validate_phone;

  /// No description provided for @aff_validate_post_code.
  ///
  /// In en, this message translates to:
  /// **'Invalid postal code'**
  String get aff_validate_post_code;

  /// No description provided for @aff_validate_id_code.
  ///
  /// In en, this message translates to:
  /// **'Invalid ID card/Passport'**
  String get aff_validate_id_code;

  /// No description provided for @aff_validate_invalid_field.
  ///
  /// In en, this message translates to:
  /// **'Invalid format'**
  String get aff_validate_invalid_field;

  /// No description provided for @aff_validate_phone_existed.
  ///
  /// In en, this message translates to:
  /// **'The phone number has been registered for another payment account.'**
  String get aff_validate_phone_existed;

  /// No description provided for @aff_validate_unknown_country.
  ///
  /// In en, this message translates to:
  /// **'Unknown country'**
  String get aff_validate_unknown_country;

  /// No description provided for @aff_date_time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get aff_date_time;

  /// No description provided for @aff_date_yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get aff_date_yesterday;

  /// No description provided for @aff_date_today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get aff_date_today;

  /// No description provided for @aff_date_unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown date'**
  String get aff_date_unknown;

  /// No description provided for @aff_date_month.
  ///
  /// In en, this message translates to:
  /// **'month'**
  String get aff_date_month;

  /// No description provided for @aff_date_day.
  ///
  /// In en, this message translates to:
  /// **'day'**
  String get aff_date_day;

  /// No description provided for @aff_date_hour.
  ///
  /// In en, this message translates to:
  /// **'hour'**
  String get aff_date_hour;

  /// No description provided for @aff_date_minute.
  ///
  /// In en, this message translates to:
  /// **'minute'**
  String get aff_date_minute;

  /// No description provided for @aff_date_second.
  ///
  /// In en, this message translates to:
  /// **'second'**
  String get aff_date_second;

  /// No description provided for @aff_date_range.
  ///
  /// In en, this message translates to:
  /// **'Date range'**
  String get aff_date_range;

  /// No description provided for @aff_report.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get aff_report;

  /// No description provided for @aff_report_summary.
  ///
  /// In en, this message translates to:
  /// **'Report overview'**
  String get aff_report_summary;

  /// No description provided for @aff_report_click.
  ///
  /// In en, this message translates to:
  /// **'Clicks'**
  String get aff_report_click;

  /// No description provided for @aff_report_click_number.
  ///
  /// In en, this message translates to:
  /// **'Clicks'**
  String get aff_report_click_number;

  /// No description provided for @aff_report_performance.
  ///
  /// In en, this message translates to:
  /// **'Performance'**
  String get aff_report_performance;

  /// No description provided for @aff_report_customer.
  ///
  /// In en, this message translates to:
  /// **'Customer'**
  String get aff_report_customer;

  /// No description provided for @aff_report_payment.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get aff_report_payment;

  /// No description provided for @aff_report_product_performance.
  ///
  /// In en, this message translates to:
  /// **'Product performance'**
  String get aff_report_product_performance;

  /// No description provided for @aff_report_product_type.
  ///
  /// In en, this message translates to:
  /// **'Product type'**
  String get aff_report_product_type;

  /// No description provided for @aff_report_customer_detail.
  ///
  /// In en, this message translates to:
  /// **'Customer details'**
  String get aff_report_customer_detail;

  /// No description provided for @aff_report_commission_by_product.
  ///
  /// In en, this message translates to:
  /// **'Commission by item'**
  String get aff_report_commission_by_product;

  /// No description provided for @aff_report_customer_total.
  ///
  /// In en, this message translates to:
  /// **'Total customers purchasing'**
  String get aff_report_customer_total;

  /// No description provided for @aff_report_customer_serving.
  ///
  /// In en, this message translates to:
  /// **'Total customers in service'**
  String get aff_report_customer_serving;

  /// No description provided for @aff_report_customer_served.
  ///
  /// In en, this message translates to:
  /// **'Total customers served'**
  String get aff_report_customer_served;

  /// No description provided for @aff_report_payment_waiting.
  ///
  /// In en, this message translates to:
  /// **'Total commissions in process'**
  String get aff_report_payment_waiting;

  /// No description provided for @aff_report_payment_pending.
  ///
  /// In en, this message translates to:
  /// **'Total pending commissions'**
  String get aff_report_payment_pending;

  /// No description provided for @aff_report_payment_available.
  ///
  /// In en, this message translates to:
  /// **'Total available commissions'**
  String get aff_report_payment_available;

  /// No description provided for @aff_report_payment_status_waiting.
  ///
  /// In en, this message translates to:
  /// **'Processing'**
  String get aff_report_payment_status_waiting;

  /// No description provided for @aff_report_payment_status_pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get aff_report_payment_status_pending;

  /// No description provided for @aff_report_payment_status_available.
  ///
  /// In en, this message translates to:
  /// **'Available'**
  String get aff_report_payment_status_available;

  /// No description provided for @aff_report_payment_status_cancel.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get aff_report_payment_status_cancel;

  /// No description provided for @aff_report_payment_status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get aff_report_payment_status;

  /// No description provided for @aff_report_description_click.
  ///
  /// In en, this message translates to:
  /// **'Statistical chart of affiliate link clicks'**
  String get aff_report_description_click;

  /// No description provided for @aff_report_description_customer.
  ///
  /// In en, this message translates to:
  /// **'Statistical chart of customer information'**
  String get aff_report_description_customer;

  /// No description provided for @aff_report_description_commission.
  ///
  /// In en, this message translates to:
  /// **'Statistical chart of commissions'**
  String get aff_report_description_commission;

  /// No description provided for @aff_link.
  ///
  /// In en, this message translates to:
  /// **'Link:'**
  String get aff_link;

  /// No description provided for @aff_link_copied.
  ///
  /// In en, this message translates to:
  /// **'Link copied'**
  String get aff_link_copied;

  /// No description provided for @aff_link_path.
  ///
  /// In en, this message translates to:
  /// **'Affiliate link'**
  String get aff_link_path;

  /// No description provided for @aff_link_paste_here.
  ///
  /// In en, this message translates to:
  /// **'Paste your link here'**
  String get aff_link_paste_here;

  /// No description provided for @aff_flight_commission_itinerary.
  ///
  /// In en, this message translates to:
  /// **'Itinerary'**
  String get aff_flight_commission_itinerary;

  /// No description provided for @aff_flight_commission_itinerary_domestic.
  ///
  /// In en, this message translates to:
  /// **'Domestic'**
  String get aff_flight_commission_itinerary_domestic;

  /// No description provided for @aff_flight_commission_itinerary_international.
  ///
  /// In en, this message translates to:
  /// **'International'**
  String get aff_flight_commission_itinerary_international;

  /// No description provided for @aff_flight_commission_itinerary_unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown itinerary'**
  String get aff_flight_commission_itinerary_unknown;

  /// No description provided for @aff_flight_commission_seat_class.
  ///
  /// In en, this message translates to:
  /// **'Seat class'**
  String get aff_flight_commission_seat_class;

  /// No description provided for @aff_flight_commission_seat_class_plus.
  ///
  /// In en, this message translates to:
  /// **'Plus'**
  String get aff_flight_commission_seat_class_plus;

  /// No description provided for @aff_flight_commission_seat_class_business.
  ///
  /// In en, this message translates to:
  /// **'Business'**
  String get aff_flight_commission_seat_class_business;

  /// No description provided for @aff_flight_commission_seat_class_unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown seat class'**
  String get aff_flight_commission_seat_class_unknown;

  /// No description provided for @aff_flight_ticket.
  ///
  /// In en, this message translates to:
  /// **'Flight Ticket'**
  String get aff_flight_ticket;

  /// No description provided for @aff_flight_all_airlines.
  ///
  /// In en, this message translates to:
  /// **'All airlines'**
  String get aff_flight_all_airlines;

  /// No description provided for @aff_tooltip_flight_domestic.
  ///
  /// In en, this message translates to:
  /// **'Flights with destinations and departures within the territory of Vietnam'**
  String get aff_tooltip_flight_domestic;

  /// No description provided for @aff_tooltip_flight_international.
  ///
  /// In en, this message translates to:
  /// **'Flights with destinations or departures outside the territory of Vietnam'**
  String get aff_tooltip_flight_international;

  /// No description provided for @aff_tooltip_seller.
  ///
  /// In en, this message translates to:
  /// **'You can use this code to append to the end of each affiliate marketing link. '**
  String get aff_tooltip_seller;

  /// No description provided for @aff_commission.
  ///
  /// In en, this message translates to:
  /// **'Commission'**
  String get aff_commission;

  /// No description provided for @aff_commission_by_country.
  ///
  /// In en, this message translates to:
  /// **'Hotel commissions by country'**
  String get aff_commission_by_country;

  /// No description provided for @aff_commission_flight_list.
  ///
  /// In en, this message translates to:
  /// **'Hotel commissions by country'**
  String get aff_commission_flight_list;

  /// No description provided for @aff_commission_max.
  ///
  /// In en, this message translates to:
  /// **'Highest Commission:'**
  String get aff_commission_max;

  /// No description provided for @aff_commission_of_product.
  ///
  /// In en, this message translates to:
  /// **'{order}\'s commissions'**
  String aff_commission_of_product(Object order);

  /// No description provided for @aff_order_id.
  ///
  /// In en, this message translates to:
  /// **'Order code'**
  String get aff_order_id;

  /// No description provided for @aff_order_total.
  ///
  /// In en, this message translates to:
  /// **'Total orders'**
  String get aff_order_total;

  /// No description provided for @aff_order_tooltip_click.
  ///
  /// In en, this message translates to:
  /// **'The number of times users click on your affiliate link.'**
  String get aff_order_tooltip_click;

  /// No description provided for @aff_order_conversion_rate.
  ///
  /// In en, this message translates to:
  /// **'Conversion rate'**
  String get aff_order_conversion_rate;

  /// No description provided for @aff_order_tooltip_conversion_rate.
  ///
  /// In en, this message translates to:
  /// **'A measure for you to analyze the performance of your product promotion.'**
  String get aff_order_tooltip_conversion_rate;

  /// No description provided for @aff_order_product_total.
  ///
  /// In en, this message translates to:
  /// **'Total products'**
  String get aff_order_product_total;

  /// No description provided for @aff_order_click_total.
  ///
  /// In en, this message translates to:
  /// **' Total clicks'**
  String get aff_order_click_total;

  /// No description provided for @aff_order_earnings_total.
  ///
  /// In en, this message translates to:
  /// **'Total earnings'**
  String get aff_order_earnings_total;

  /// No description provided for @aff_order_id_unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown order code'**
  String get aff_order_id_unknown;

  /// No description provided for @aff_order_added.
  ///
  /// In en, this message translates to:
  /// **'added to the payment account'**
  String get aff_order_added;

  /// No description provided for @aff_order_type_waiting.
  ///
  /// In en, this message translates to:
  /// **'Processing'**
  String get aff_order_type_waiting;

  /// No description provided for @aff_order_type_pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get aff_order_type_pending;

  /// No description provided for @aff_order_type_available.
  ///
  /// In en, this message translates to:
  /// **'Available'**
  String get aff_order_type_available;

  /// No description provided for @aff_order_type_cancel.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get aff_order_type_cancel;

  /// No description provided for @aff_ordered_total.
  ///
  /// In en, this message translates to:
  /// **'Total products ordered'**
  String get aff_ordered_total;

  /// No description provided for @aff_order_receive_commission.
  ///
  /// In en, this message translates to:
  /// **'Total orders received commissions'**
  String get aff_order_receive_commission;

  /// No description provided for @aff_verify_do_not_have_account.
  ///
  /// In en, this message translates to:
  /// **'YOU DON\'T\n HAVE A PAYMENT ACCOUNT YET'**
  String get aff_verify_do_not_have_account;

  /// No description provided for @aff_guild.
  ///
  /// In en, this message translates to:
  /// **'Instructions'**
  String get aff_guild;

  /// No description provided for @aff_seller_code.
  ///
  /// In en, this message translates to:
  /// **'Seller code: {seller}'**
  String aff_seller_code(Object seller);

  /// No description provided for @aff_seller_code_text.
  ///
  /// In en, this message translates to:
  /// **'Seller code'**
  String get aff_seller_code_text;

  /// No description provided for @aff_view_detail.
  ///
  /// In en, this message translates to:
  /// **'View details'**
  String get aff_view_detail;

  /// No description provided for @aff_notification_turn_off_link_1.
  ///
  /// In en, this message translates to:
  /// **'The affiliate marketing feature of\n'**
  String get aff_notification_turn_off_link_1;

  /// No description provided for @aff_notification_turn_off_link_2.
  ///
  /// In en, this message translates to:
  /// **' is disabled, which means affiliate links you shared will be invalid!'**
  String get aff_notification_turn_off_link_2;

  /// No description provided for @aff_notification_turn_on_link_success.
  ///
  /// In en, this message translates to:
  /// **'The affiliate marketing feature for {type} is enabled successfully'**
  String aff_notification_turn_on_link_success(Object type);

  /// No description provided for @aff_commission_list_flight.
  ///
  /// In en, this message translates to:
  /// **'Flight commissions '**
  String get aff_commission_list_flight;

  /// No description provided for @aff_commission_list_hotel.
  ///
  /// In en, this message translates to:
  /// **'Hotel commissions by country'**
  String get aff_commission_list_hotel;

  /// No description provided for @aff_tooltip_menu.
  ///
  /// In en, this message translates to:
  /// **'Open menu'**
  String get aff_tooltip_menu;

  /// No description provided for @aff_tooltip_dash_board.
  ///
  /// In en, this message translates to:
  /// **'Quick access to the dashboard'**
  String get aff_tooltip_dash_board;

  /// No description provided for @aff_tooltip_guild.
  ///
  /// In en, this message translates to:
  /// **'Drop down for instructions'**
  String get aff_tooltip_guild;

  /// No description provided for @aff_action_done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get aff_action_done;

  /// No description provided for @aff_check_user_failed.
  ///
  /// In en, this message translates to:
  /// **'Unable to check user. Please try again later.'**
  String get aff_check_user_failed;

  /// No description provided for @aff_something_went_wrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong.'**
  String get aff_something_went_wrong;

  /// No description provided for @aff_page_not_found.
  ///
  /// In en, this message translates to:
  /// **'Page not found.'**
  String get aff_page_not_found;

  /// No description provided for @aff_and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get aff_and;

  /// No description provided for @aff_month_summary.
  ///
  /// In en, this message translates to:
  /// **'Summary for this month'**
  String get aff_month_summary;

  /// No description provided for @aff_see_more.
  ///
  /// In en, this message translates to:
  /// **'See more'**
  String get aff_see_more;

  /// No description provided for @aff_try_again.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get aff_try_again;

  /// No description provided for @aff_error_try_again.
  ///
  /// In en, this message translates to:
  /// **'An error occurred. Please try again later.'**
  String get aff_error_try_again;

  /// No description provided for @aff_pick_a_date.
  ///
  /// In en, this message translates to:
  /// **'Pick a date'**
  String get aff_pick_a_date;

  /// No description provided for @aff_area_code.
  ///
  /// In en, this message translates to:
  /// **'Phone code'**
  String get aff_area_code;

  /// No description provided for @aff_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get aff_phone_number;

  /// No description provided for @aff_validate_sms_required.
  ///
  /// In en, this message translates to:
  /// **'Please enter verification code'**
  String get aff_validate_sms_required;

  /// No description provided for @aff_validate_sms_min_length.
  ///
  /// In en, this message translates to:
  /// **'Please enter the full verification code'**
  String get aff_validate_sms_min_length;

  /// No description provided for @aff_welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get aff_welcome;

  /// No description provided for @aff_verify_update.
  ///
  /// In en, this message translates to:
  /// **'Update payment account'**
  String get aff_verify_update;

  /// No description provided for @aff_verify_create_account.
  ///
  /// In en, this message translates to:
  /// **'Create payment account'**
  String get aff_verify_create_account;

  /// No description provided for @aff_verify_invalid_wallet.
  ///
  /// In en, this message translates to:
  /// **'Update Payment Account'**
  String get aff_verify_invalid_wallet;

  /// No description provided for @aff_verify_do_not_have_account_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Please create a payment account to use the sales function on Hahalolo!'**
  String get aff_verify_do_not_have_account_subtitle;

  /// No description provided for @aff_verify_invalid_wallet_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Please update your phone number in your payment account to be able to continue using services on Hahalolo'**
  String get aff_verify_invalid_wallet_subtitle;

  /// No description provided for @aff_guild_1.
  ///
  /// In en, this message translates to:
  /// **'You can now quickly enable the affiliate marketing feature by clicking'**
  String get aff_guild_1;

  /// No description provided for @aff_guild_2.
  ///
  /// In en, this message translates to:
  /// **'in the Hotel/Flight section '**
  String get aff_guild_2;

  /// No description provided for @aff_guild_3.
  ///
  /// In en, this message translates to:
  /// **'After turning on the affiliate marketing, you can promote your products through:'**
  String get aff_guild_3;

  /// No description provided for @aff_guild_4.
  ///
  /// In en, this message translates to:
  /// **'The link set by default by Hahalolo in'**
  String get aff_guild_4;

  /// No description provided for @aff_guild_5.
  ///
  /// In en, this message translates to:
  /// **'Any link related to the section whose affiliate marketing is enabled, provided that your seller code is attached to the corresponding link to the product.'**
  String get aff_guild_5;

  /// No description provided for @aff_seller.
  ///
  /// In en, this message translates to:
  /// **'Seller'**
  String get aff_seller;

  /// No description provided for @aff_menu.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get aff_menu;

  /// No description provided for @aff_dash_chart_title.
  ///
  /// In en, this message translates to:
  /// **'Statistical chart of your earnings and clicks for this month'**
  String get aff_dash_chart_title;

  /// No description provided for @aff_dash_click.
  ///
  /// In en, this message translates to:
  /// **'Clicks'**
  String get aff_dash_click;

  /// No description provided for @aff_dash_commission.
  ///
  /// In en, this message translates to:
  /// **'Earnings'**
  String get aff_dash_commission;

  /// No description provided for @aff_flight_commission_detail_customer_way.
  ///
  /// In en, this message translates to:
  /// **'/ passenger / segment'**
  String get aff_flight_commission_detail_customer_way;

  /// No description provided for @aff_flight_commission_detail_order_total.
  ///
  /// In en, this message translates to:
  /// **'/ total orders'**
  String get aff_flight_commission_detail_order_total;

  /// No description provided for @aff_performance_chart_title.
  ///
  /// In en, this message translates to:
  /// **'Statistical chart of affiliate link clicks, total orders received commission and revenue'**
  String get aff_performance_chart_title;

  /// No description provided for @aff_customer_chart_title.
  ///
  /// In en, this message translates to:
  /// **'Statistical chart of customer information'**
  String get aff_customer_chart_title;

  /// No description provided for @aff_payment_chart_title.
  ///
  /// In en, this message translates to:
  /// **'Statistical chart of commissions'**
  String get aff_payment_chart_title;

  /// No description provided for @aff_action_exit.
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get aff_action_exit;

  /// No description provided for @aff_action_update.
  ///
  /// In en, this message translates to:
  /// **'update'**
  String get aff_action_update;

  /// No description provided for @aff_action_create.
  ///
  /// In en, this message translates to:
  /// **'create'**
  String get aff_action_create;

  /// No description provided for @aff_dialog_check_invalid_user.
  ///
  /// In en, this message translates to:
  /// **'Please {action} your payment account to be able to use affiliate marketing services on Hahalolo'**
  String aff_dialog_check_invalid_user(Object action);

  /// No description provided for @aff_date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get aff_date;

  /// No description provided for @aff_action_register.
  ///
  /// In en, this message translates to:
  /// **'register'**
  String get aff_action_register;

  /// No description provided for @aff_otp_time_left.
  ///
  /// In en, this message translates to:
  /// **'{number} times left'**
  String aff_otp_time_left(Object number);

  /// No description provided for @wallet_create_payment_title.
  ///
  /// In en, this message translates to:
  /// **'CREATE PAYMENT ACCOUNT'**
  String get wallet_create_payment_title;

  /// No description provided for @wallet_create_payment_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Setting up a payment account is determined to be the primary payment account, including money receiving, withdrawal and payment after it is assigned.'**
  String get wallet_create_payment_subtitle;

  /// No description provided for @wallet_verify_otp_title.
  ///
  /// In en, this message translates to:
  /// **'Enter confirmation code'**
  String get wallet_verify_otp_title;

  /// No description provided for @wallet_verify_otp_subtitle.
  ///
  /// In en, this message translates to:
  /// **'We sent a confirmation code to {phone}. \nEnter the code you received to complete this step.'**
  String wallet_verify_otp_subtitle(Object phone);

  /// No description provided for @wallet_start_title.
  ///
  /// In en, this message translates to:
  /// **'Payment Account Management'**
  String get wallet_start_title;

  /// No description provided for @wallet_start_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Hahalolo payment account is the payment solution on Hahalolo that helps you have amazing and convenient experiences with us.'**
  String get wallet_start_subtitle;

  /// No description provided for @wallet_label_choose_business.
  ///
  /// In en, this message translates to:
  /// **'Choose business'**
  String get wallet_label_choose_business;

  /// No description provided for @wallet_label_account_name.
  ///
  /// In en, this message translates to:
  /// **'Account name'**
  String get wallet_label_account_name;

  /// No description provided for @wallet_label_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get wallet_label_email;

  /// No description provided for @wallet_label_phone.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get wallet_label_phone;

  /// No description provided for @wallet_label_choose_currency.
  ///
  /// In en, this message translates to:
  /// **'Choose currency'**
  String get wallet_label_choose_currency;

  /// No description provided for @wallet_label_payment_country.
  ///
  /// In en, this message translates to:
  /// **'Payment country'**
  String get wallet_label_payment_country;

  /// No description provided for @wallet_label_payment_method.
  ///
  /// In en, this message translates to:
  /// **'Payment method'**
  String get wallet_label_payment_method;

  /// No description provided for @wallet_label_card_holder_name.
  ///
  /// In en, this message translates to:
  /// **'Cardholder name (without tone marks)'**
  String get wallet_label_card_holder_name;

  /// No description provided for @wallet_label_card_bank_name.
  ///
  /// In en, this message translates to:
  /// **'Bank name'**
  String get wallet_label_card_bank_name;

  /// No description provided for @wallet_label_card_swift_code.
  ///
  /// In en, this message translates to:
  /// **'SWIFT code'**
  String get wallet_label_card_swift_code;

  /// No description provided for @wallet_label_bank_account_number.
  ///
  /// In en, this message translates to:
  /// **'Bank account number'**
  String get wallet_label_bank_account_number;

  /// No description provided for @wallet_label_account_type.
  ///
  /// In en, this message translates to:
  /// **'Account type'**
  String get wallet_label_account_type;

  /// No description provided for @wallet_label_tax_code.
  ///
  /// In en, this message translates to:
  /// **'Tax code'**
  String get wallet_label_tax_code;

  /// No description provided for @wallet_label_tax_type.
  ///
  /// In en, this message translates to:
  /// **'Tax type'**
  String get wallet_label_tax_type;

  /// No description provided for @wallet_label_address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get wallet_label_address;

  /// No description provided for @wallet_label_address_2.
  ///
  /// In en, this message translates to:
  /// **'Address 2 (optional)'**
  String get wallet_label_address_2;

  /// No description provided for @wallet_label_country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get wallet_label_country;

  /// No description provided for @wallet_label_city.
  ///
  /// In en, this message translates to:
  /// **'Province / City'**
  String get wallet_label_city;

  /// No description provided for @wallet_label_district.
  ///
  /// In en, this message translates to:
  /// **'District'**
  String get wallet_label_district;

  /// No description provided for @wallet_label_first_name.
  ///
  /// In en, this message translates to:
  /// **'First name'**
  String get wallet_label_first_name;

  /// No description provided for @wallet_label_last_name.
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get wallet_label_last_name;

  /// No description provided for @wallet_label_middle_name.
  ///
  /// In en, this message translates to:
  /// **'Middle name (optional)'**
  String get wallet_label_middle_name;

  /// No description provided for @wallet_label_postal_code.
  ///
  /// In en, this message translates to:
  /// **'Postal code'**
  String get wallet_label_postal_code;

  /// No description provided for @wallet_label_city_more_description.
  ///
  /// In en, this message translates to:
  /// **'State/Province/Region'**
  String get wallet_label_city_more_description;

  /// No description provided for @wallet_label_postal_code_more_description.
  ///
  /// In en, this message translates to:
  /// **'Zip/Postal Code'**
  String get wallet_label_postal_code_more_description;

  /// No description provided for @wallet_label_district_more_description.
  ///
  /// In en, this message translates to:
  /// **'City/Village'**
  String get wallet_label_district_more_description;

  /// No description provided for @wallet_label_birthday_18_years_old.
  ///
  /// In en, this message translates to:
  /// **'Date of birth (At least 18 years old)'**
  String get wallet_label_birthday_18_years_old;

  /// No description provided for @wallet_label_date_of_birth.
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get wallet_label_date_of_birth;

  /// No description provided for @wallet_label_enter_password.
  ///
  /// In en, this message translates to:
  /// **'Enter password'**
  String get wallet_label_enter_password;

  /// No description provided for @wallet_label_password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get wallet_label_password;

  /// No description provided for @wallet_label_enter_pin.
  ///
  /// In en, this message translates to:
  /// **'Enter your PIN'**
  String get wallet_label_enter_pin;

  /// No description provided for @wallet_label_re_enter_new_pin.
  ///
  /// In en, this message translates to:
  /// **'Re-enter your PIN'**
  String get wallet_label_re_enter_new_pin;

  /// No description provided for @wallet_label_enter_new_pin.
  ///
  /// In en, this message translates to:
  /// **'Enter your new PIN'**
  String get wallet_label_enter_new_pin;

  /// No description provided for @wallet_label_enter_current_pin.
  ///
  /// In en, this message translates to:
  /// **'Enter your current PIN'**
  String get wallet_label_enter_current_pin;

  /// No description provided for @wallet_validate_pin_required.
  ///
  /// In en, this message translates to:
  /// **'Please enter your PIN.'**
  String get wallet_validate_pin_required;

  /// No description provided for @wallet_validate_otp_required.
  ///
  /// In en, this message translates to:
  /// **'Please enter confirmation code.'**
  String get wallet_validate_otp_required;

  /// No description provided for @wallet_validate_current_pin_required.
  ///
  /// In en, this message translates to:
  /// **'Please enter your current PIN.'**
  String get wallet_validate_current_pin_required;

  /// No description provided for @wallet_validate_new_pin_required.
  ///
  /// In en, this message translates to:
  /// **'Please enter your new PIN.'**
  String get wallet_validate_new_pin_required;

  /// No description provided for @wallet_validate_re_enter_new_pin_required.
  ///
  /// In en, this message translates to:
  /// **'Please re-enter your new PIN.'**
  String get wallet_validate_re_enter_new_pin_required;

  /// No description provided for @wallet_validate_re_enter_new_pin_not_match.
  ///
  /// In en, this message translates to:
  /// **'The confirmation PIN does not match'**
  String get wallet_validate_re_enter_new_pin_not_match;

  /// No description provided for @wallet_action_detail.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get wallet_action_detail;

  /// No description provided for @wallet_text_pick_date.
  ///
  /// In en, this message translates to:
  /// **'Pick a date'**
  String get wallet_text_pick_date;

  /// No description provided for @wallet_text_email_address.
  ///
  /// In en, this message translates to:
  /// **'email address'**
  String get wallet_text_email_address;

  /// No description provided for @wallet_text_message_to.
  ///
  /// In en, this message translates to:
  /// **'Text message to'**
  String get wallet_text_message_to;

  /// No description provided for @wallet_text_recovery_method.
  ///
  /// In en, this message translates to:
  /// **'Recovery Methods'**
  String get wallet_text_recovery_method;

  /// No description provided for @wallet_text_recovery_choose_method.
  ///
  /// In en, this message translates to:
  /// **'Choose how to get back into your recovery code'**
  String get wallet_text_recovery_choose_method;

  /// No description provided for @wallet_text_change_pin.
  ///
  /// In en, this message translates to:
  /// **'Change PIN'**
  String get wallet_text_change_pin;

  /// No description provided for @wallet_text_forgot_pin.
  ///
  /// In en, this message translates to:
  /// **'Forgot PIN?'**
  String get wallet_text_forgot_pin;

  /// No description provided for @wallet_text_show_pin.
  ///
  /// In en, this message translates to:
  /// **'Show PIN'**
  String get wallet_text_show_pin;

  /// No description provided for @wallet_text_please_try_again_in.
  ///
  /// In en, this message translates to:
  /// **'Please try again in:'**
  String get wallet_text_please_try_again_in;

  /// No description provided for @wallet_text_remove_account.
  ///
  /// In en, this message translates to:
  /// **'Remove payout account'**
  String get wallet_text_remove_account;

  /// No description provided for @wallet_text_ineligible_payment.
  ///
  /// In en, this message translates to:
  /// **'Currently Ineligible for Payment'**
  String get wallet_text_ineligible_payment;

  /// No description provided for @wallet_text_ineligible_payment_description.
  ///
  /// In en, this message translates to:
  /// **'You will not be able to make transactions from the system until our administrator accepts your payment information. Please create a payout account.'**
  String get wallet_text_ineligible_payment_description;

  /// No description provided for @wallet_text_address_2.
  ///
  /// In en, this message translates to:
  /// **'Address 2'**
  String get wallet_text_address_2;

  /// No description provided for @wallet_text_new_account.
  ///
  /// In en, this message translates to:
  /// **'New Account'**
  String get wallet_text_new_account;

  /// No description provided for @wallet_text_payout_account_detail.
  ///
  /// In en, this message translates to:
  /// **'Payout account details'**
  String get wallet_text_payout_account_detail;

  /// No description provided for @wallet_text_middle_name.
  ///
  /// In en, this message translates to:
  /// **'Middle name'**
  String get wallet_text_middle_name;

  /// No description provided for @wallet_text_account_owner.
  ///
  /// In en, this message translates to:
  /// **'Account Owner'**
  String get wallet_text_account_owner;

  /// No description provided for @wallet_text_tax_form.
  ///
  /// In en, this message translates to:
  /// **'Tax Form'**
  String get wallet_text_tax_form;

  /// No description provided for @wallet_text_tax_form_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Based on the information you provided, you aren\'t required to upload any tax forms. Please click \"Next\" to proceed to the next step.'**
  String get wallet_text_tax_form_subtitle;

  /// No description provided for @wallet_text_card_holder_name.
  ///
  /// In en, this message translates to:
  /// **'Cardholder name'**
  String get wallet_text_card_holder_name;

  /// No description provided for @wallet_text_otp_code_expire_in.
  ///
  /// In en, this message translates to:
  /// **'Code will expire in:'**
  String get wallet_text_otp_code_expire_in;

  /// No description provided for @wallet_text_account_information.
  ///
  /// In en, this message translates to:
  /// **'Account Information'**
  String get wallet_text_account_information;

  /// No description provided for @wallet_text_welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome!'**
  String get wallet_text_welcome;

  /// No description provided for @wallet_text_payment_information.
  ///
  /// In en, this message translates to:
  /// **'Payment Information'**
  String get wallet_text_payment_information;

  /// No description provided for @wallet_text_policies_confirm.
  ///
  /// In en, this message translates to:
  /// **'I agree with {termsAndPolicies}'**
  String get wallet_text_policies_confirm;

  /// No description provided for @wallet_terms_and_policies.
  ///
  /// In en, this message translates to:
  /// **'terms and policies of Hahalolo'**
  String get wallet_terms_and_policies;

  /// No description provided for @wallet_text_default.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get wallet_text_default;

  /// No description provided for @wallet_text_code_vie_sms.
  ///
  /// In en, this message translates to:
  /// **'Send code via SMS'**
  String get wallet_text_code_vie_sms;

  /// No description provided for @wallet_text_pin_code_recovery_description.
  ///
  /// In en, this message translates to:
  /// **'Use your email to authenticate yourself if you forget your PIN code.'**
  String get wallet_text_pin_code_recovery_description;

  /// No description provided for @wallet_text_sms_recovery_description.
  ///
  /// In en, this message translates to:
  /// **'Use your phone to authenticate yourself if you forget your PIN code.'**
  String get wallet_text_sms_recovery_description;

  /// No description provided for @wallet_text_authority.
  ///
  /// In en, this message translates to:
  /// **'I hereby authority Hahalolo to use my account information provided to conduct the transfer'**
  String get wallet_text_authority;

  /// No description provided for @wallet_text_district_three_dot.
  ///
  /// In en, this message translates to:
  /// **'District...'**
  String get wallet_text_district_three_dot;

  /// No description provided for @wallet_text_set_up_pin.
  ///
  /// In en, this message translates to:
  /// **'Set up PIN'**
  String get wallet_text_set_up_pin;

  /// No description provided for @wallet_text_established.
  ///
  /// In en, this message translates to:
  /// **'(Established)'**
  String get wallet_text_established;

  /// No description provided for @wallet_text_not_have_pin_yet_title.
  ///
  /// In en, this message translates to:
  /// **'You haven’t had a PIN yet'**
  String get wallet_text_not_have_pin_yet_title;

  /// No description provided for @wallet_text_not_have_pin_yet_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Please create one to use this feature'**
  String get wallet_text_not_have_pin_yet_subtitle;

  /// No description provided for @wallet_text_security_pin_code_description.
  ///
  /// In en, this message translates to:
  /// **'Hahalolo wallet PIN is required to protect your account and financial info. What\'s more, you don\'t need to re-enter card details when you log back in.'**
  String get wallet_text_security_pin_code_description;

  /// No description provided for @wallet_text_check_password_locked.
  ///
  /// In en, this message translates to:
  /// **'Password check is temporarily locked. Please try again later'**
  String get wallet_text_check_password_locked;

  /// No description provided for @wallet_text_enter_password_description.
  ///
  /// In en, this message translates to:
  /// **'You need to enter your Hahalolo account password in order to confirm the change.'**
  String get wallet_text_enter_password_description;

  /// No description provided for @wallet_text_enter_sms_code.
  ///
  /// In en, this message translates to:
  /// **'Enter your SMS code'**
  String get wallet_text_enter_sms_code;

  /// No description provided for @wallet_text_send_sms_description_1.
  ///
  /// In en, this message translates to:
  /// **'We will send a verification code to'**
  String get wallet_text_send_sms_description_1;

  /// No description provided for @wallet_text_send_sms_description_2.
  ///
  /// In en, this message translates to:
  /// **'\nEnter this verification code on your device to complete.'**
  String get wallet_text_send_sms_description_2;

  /// No description provided for @wallet_text_resend.
  ///
  /// In en, this message translates to:
  /// **'Resend'**
  String get wallet_text_resend;

  /// No description provided for @wallet_text_no_data.
  ///
  /// In en, this message translates to:
  /// **'There are currently no data!'**
  String get wallet_text_no_data;

  /// No description provided for @wallet_text_bank_transfer.
  ///
  /// In en, this message translates to:
  /// **'Bank Transfer'**
  String get wallet_text_bank_transfer;

  /// No description provided for @wallet_text_tax_ptin.
  ///
  /// In en, this message translates to:
  /// **'Preparer tax identification number'**
  String get wallet_text_tax_ptin;

  /// No description provided for @wallet_text_tax_atin.
  ///
  /// In en, this message translates to:
  /// **'Adoption taxpayer identification number'**
  String get wallet_text_tax_atin;

  /// No description provided for @wallet_text_tax_ssn.
  ///
  /// In en, this message translates to:
  /// **'Social security number'**
  String get wallet_text_tax_ssn;

  /// No description provided for @wallet_text_tax_ein.
  ///
  /// In en, this message translates to:
  /// **'Employer identification number'**
  String get wallet_text_tax_ein;

  /// No description provided for @wallet_text_account_personal.
  ///
  /// In en, this message translates to:
  /// **'Personal account'**
  String get wallet_text_account_personal;

  /// No description provided for @wallet_text_account_business.
  ///
  /// In en, this message translates to:
  /// **'Business account'**
  String get wallet_text_account_business;

  /// No description provided for @wallet_text_country_code_and.
  ///
  /// In en, this message translates to:
  /// **'country code and '**
  String get wallet_text_country_code_and;

  /// No description provided for @wallet_text_resend_time.
  ///
  /// In en, this message translates to:
  /// **'Resend {time}'**
  String wallet_text_resend_time(Object time);

  /// No description provided for @wallet_text_change_your.
  ///
  /// In en, this message translates to:
  /// **'Change your {text}'**
  String wallet_text_change_your(Object text);

  /// No description provided for @wallet_start_person_button.
  ///
  /// In en, this message translates to:
  /// **'{action}  personal payment account'**
  String wallet_start_person_button(Object action);

  /// No description provided for @wallet_start_business_button.
  ///
  /// In en, this message translates to:
  /// **'{action}  business payment account'**
  String wallet_start_business_button(Object action);

  /// No description provided for @wallet_text_recovery_subtitle_1.
  ///
  /// In en, this message translates to:
  /// **'Your current {text} is\n{value}'**
  String wallet_text_recovery_subtitle_1(Object text, Object value);

  /// No description provided for @wallet_text_recovery_subtitle_2.
  ///
  /// In en, this message translates to:
  /// **'Please enter your new {extra_text}{text}'**
  String wallet_text_recovery_subtitle_2(Object extra_text, Object text);

  /// No description provided for @wallet_text_enter_new.
  ///
  /// In en, this message translates to:
  /// **'Enter new {title}'**
  String wallet_text_enter_new(Object title);

  /// No description provided for @wallet_text_new.
  ///
  /// In en, this message translates to:
  /// **'New {title}'**
  String wallet_text_new(Object title);

  /// No description provided for @wallet_succ_setup_pin.
  ///
  /// In en, this message translates to:
  /// **'PIN setup successfully.'**
  String get wallet_succ_setup_pin;

  /// No description provided for @wallet_succ_setup_pin_content.
  ///
  /// In en, this message translates to:
  /// **'You have successfully set up your PIN.'**
  String get wallet_succ_setup_pin_content;

  /// No description provided for @wallet_succ_change_pin.
  ///
  /// In en, this message translates to:
  /// **'Change PIN successfully'**
  String get wallet_succ_change_pin;

  /// No description provided for @wallet_succ_change_pin_content.
  ///
  /// In en, this message translates to:
  /// **'You have successfully changed your PIN'**
  String get wallet_succ_change_pin_content;

  /// No description provided for @wallet_succ_change_information.
  ///
  /// In en, this message translates to:
  /// **'Information is successfully updated and verified'**
  String get wallet_succ_change_information;

  /// No description provided for @wallet_war_remove_payout_account.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to permanently delete this account?'**
  String get wallet_war_remove_payout_account;

  /// No description provided for @wallet_war_create_payment_title.
  ///
  /// In en, this message translates to:
  /// **'Create Payment Account'**
  String get wallet_war_create_payment_title;

  /// No description provided for @wallet_war_create_payment_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Please create a Business Account before creating a Payment Account.'**
  String get wallet_war_create_payment_subtitle;

  /// No description provided for @wallet_war_unsaved_information.
  ///
  /// In en, this message translates to:
  /// **'The information you have edited will not be saved. Are you sure?'**
  String get wallet_war_unsaved_information;

  /// No description provided for @wallet_err_recovery.
  ///
  /// In en, this message translates to:
  /// **'Recovery failed. Please try again later.'**
  String get wallet_err_recovery;

  /// No description provided for @wallet_err_recovery_no_user_data.
  ///
  /// In en, this message translates to:
  /// **'Recovery failed. No business information.'**
  String get wallet_err_recovery_no_user_data;

  /// No description provided for @wallet_err_recovery_phone_exists.
  ///
  /// In en, this message translates to:
  /// **'Recovery failed. Phone number is existed..'**
  String get wallet_err_recovery_phone_exists;

  /// No description provided for @wallet_err_recovery_phone_invalid.
  ///
  /// In en, this message translates to:
  /// **'Recovery failed. Phone number format is invalid.'**
  String get wallet_err_recovery_phone_invalid;

  /// No description provided for @wallet_err_recovery_password_invalid.
  ///
  /// In en, this message translates to:
  /// **'Recovery failed. Incorrect password.'**
  String get wallet_err_recovery_password_invalid;

  /// No description provided for @wallet_err_pin_existed.
  ///
  /// In en, this message translates to:
  /// **'The pin code already exists.'**
  String get wallet_err_pin_existed;

  /// No description provided for @wallet_err_pin_wallet_not_exist.
  ///
  /// In en, this message translates to:
  /// **'Wallet does not exist'**
  String get wallet_err_pin_wallet_not_exist;

  /// No description provided for @wallet_err_pin_incorrect_or_exists.
  ///
  /// In en, this message translates to:
  /// **'The PIN code incorrect or not exists'**
  String get wallet_err_pin_incorrect_or_exists;

  /// No description provided for @wallet_err_pin_try_again.
  ///
  /// In en, this message translates to:
  /// **'Setup PIN failed. Please try again later.'**
  String get wallet_err_pin_try_again;

  /// No description provided for @wallet_err_set_payout_default.
  ///
  /// In en, this message translates to:
  /// **'Set default payout account failed. Try again later!'**
  String get wallet_err_set_payout_default;

  /// No description provided for @wallet_err_occurred_try_again.
  ///
  /// In en, this message translates to:
  /// **'An error occurred. Try again'**
  String get wallet_err_occurred_try_again;

  /// No description provided for @wallet_err_send_verify_title.
  ///
  /// In en, this message translates to:
  /// **'Send verify code failed'**
  String get wallet_err_send_verify_title;

  /// No description provided for @wallet_err_try_again.
  ///
  /// In en, this message translates to:
  /// **'An error occurred. Please try again later.'**
  String get wallet_err_try_again;

  /// No description provided for @wallet_err_create_payout_title.
  ///
  /// In en, this message translates to:
  /// **'Create payout account failed. Please try again later'**
  String get wallet_err_create_payout_title;

  /// No description provided for @wallet_err_fetch_data_failed.
  ///
  /// In en, this message translates to:
  /// **'Data fetch failed. Please try again later!'**
  String get wallet_err_fetch_data_failed;

  /// No description provided for @wallet_err_occurred_processing.
  ///
  /// In en, this message translates to:
  /// **'An error occurred during processing. Try again later.'**
  String get wallet_err_occurred_processing;

  /// No description provided for @wallet_err_remove_payout.
  ///
  /// In en, this message translates to:
  /// **'Remove payout account failed. Try again later.'**
  String get wallet_err_remove_payout;

  /// No description provided for @wallet_err_change_pin.
  ///
  /// In en, this message translates to:
  /// **'Change PIN failed.'**
  String get wallet_err_change_pin;

  /// No description provided for @wallet_err_setup_pin.
  ///
  /// In en, this message translates to:
  /// **'PIN setup failed.'**
  String get wallet_err_setup_pin;

  /// No description provided for @wallet_err_sms_code_expired.
  ///
  /// In en, this message translates to:
  /// **'Verification code has expired. Please try again.'**
  String get wallet_err_sms_code_expired;

  /// No description provided for @wallet_err_sms_code_incorrect.
  ///
  /// In en, this message translates to:
  /// **'Verification code is not correct. Please try again.'**
  String get wallet_err_sms_code_incorrect;

  /// No description provided for @wallet_create_payout_title.
  ///
  /// In en, this message translates to:
  /// **'Create payout account'**
  String get wallet_create_payout_title;

  /// No description provided for @wallet_action_continue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get wallet_action_continue;

  /// No description provided for @wallet_action_create.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get wallet_action_create;

  /// No description provided for @wallet_action_update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get wallet_action_update;

  /// No description provided for @wallet_action_ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get wallet_action_ok;

  /// No description provided for @wallet_action_complete.
  ///
  /// In en, this message translates to:
  /// **'Complete'**
  String get wallet_action_complete;

  /// No description provided for @wallet_action_next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get wallet_action_next;

  /// No description provided for @wallet_action_try_back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get wallet_action_try_back;

  /// No description provided for @wallet_action_try_again.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get wallet_action_try_again;

  /// No description provided for @wallet_action_accept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get wallet_action_accept;

  /// No description provided for @wallet_action_remove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get wallet_action_remove;

  /// No description provided for @wallet_action_change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get wallet_action_change;

  /// No description provided for @wallet_action_setup.
  ///
  /// In en, this message translates to:
  /// **'Setup'**
  String get wallet_action_setup;

  /// No description provided for @wallet_action_confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get wallet_action_confirm;

  /// No description provided for @wallet_action_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get wallet_action_cancel;

  /// No description provided for @wallet_action_close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get wallet_action_close;

  /// No description provided for @wallet_overview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get wallet_overview;

  /// No description provided for @wallet_notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get wallet_notification;

  /// No description provided for @wallet_transaction_history.
  ///
  /// In en, this message translates to:
  /// **'Transaction History'**
  String get wallet_transaction_history;

  /// No description provided for @wallet_transfer_point.
  ///
  /// In en, this message translates to:
  /// **'Give points'**
  String get wallet_transfer_point;

  /// No description provided for @wallet_payout_accounts.
  ///
  /// In en, this message translates to:
  /// **'Payout accounts'**
  String get wallet_payout_accounts;

  /// No description provided for @wallet_security.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get wallet_security;

  /// No description provided for @wallet_recovery_methods.
  ///
  /// In en, this message translates to:
  /// **'Recovery Methods'**
  String get wallet_recovery_methods;

  /// No description provided for @wallet_help_center.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get wallet_help_center;

  /// No description provided for @wallet_view_profile.
  ///
  /// In en, this message translates to:
  /// **'View my profile'**
  String get wallet_view_profile;

  /// No description provided for @wallet_info_title.
  ///
  /// In en, this message translates to:
  /// **'Wallet Info'**
  String get wallet_info_title;

  /// No description provided for @wallet_edit_identity_card.
  ///
  /// In en, this message translates to:
  /// **'Identity card'**
  String get wallet_edit_identity_card;

  /// No description provided for @wallet_edit_id_card.
  ///
  /// In en, this message translates to:
  /// **'ID card'**
  String get wallet_edit_id_card;

  /// No description provided for @wallet_edit_passport.
  ///
  /// In en, this message translates to:
  /// **'Passport'**
  String get wallet_edit_passport;

  /// No description provided for @wallet_edit_verify_status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get wallet_edit_verify_status;

  /// No description provided for @wallet_edit_not_verify.
  ///
  /// In en, this message translates to:
  /// **'Not yet'**
  String get wallet_edit_not_verify;

  /// No description provided for @wallet_edit_verified.
  ///
  /// In en, this message translates to:
  /// **'Verified'**
  String get wallet_edit_verified;

  /// No description provided for @wallet_edit_verify_waiting.
  ///
  /// In en, this message translates to:
  /// **'Waiting'**
  String get wallet_edit_verify_waiting;

  /// No description provided for @wallet_edit_gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get wallet_edit_gender;

  /// No description provided for @wallet_edit_male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get wallet_edit_male;

  /// No description provided for @wallet_edit_female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get wallet_edit_female;

  /// No description provided for @wallet_edit_other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get wallet_edit_other;

  /// No description provided for @wallet_owner_title.
  ///
  /// In en, this message translates to:
  /// **'Owner Info'**
  String get wallet_owner_title;

  /// No description provided for @wallet_edit_fullName.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get wallet_edit_fullName;

  /// No description provided for @wallet_edit_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get wallet_edit_email;

  /// No description provided for @wallet_edit_phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get wallet_edit_phoneNumber;

  /// No description provided for @wallet_edit_dateOfBirth.
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get wallet_edit_dateOfBirth;

  /// No description provided for @wallet_edit_dateOfBirth_13_yo.
  ///
  /// In en, this message translates to:
  /// **'Date of birth (At least 13 years old)'**
  String get wallet_edit_dateOfBirth_13_yo;

  /// No description provided for @wallet_edit_address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get wallet_edit_address;

  /// No description provided for @wallet_edit_country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get wallet_edit_country;

  /// No description provided for @wallet_edit_idType.
  ///
  /// In en, this message translates to:
  /// **'ID type'**
  String get wallet_edit_idType;

  /// No description provided for @wallet_edit_id_passport.
  ///
  /// In en, this message translates to:
  /// **'National ID/Passport'**
  String get wallet_edit_id_passport;

  /// No description provided for @wallet_edit_country_issue.
  ///
  /// In en, this message translates to:
  /// **'Country of issue'**
  String get wallet_edit_country_issue;

  /// No description provided for @wallet_edit_id_document.
  ///
  /// In en, this message translates to:
  /// **'Identity Document'**
  String get wallet_edit_id_document;

  /// No description provided for @wallet_edit_front.
  ///
  /// In en, this message translates to:
  /// **'Front side'**
  String get wallet_edit_front;

  /// No description provided for @wallet_edit_back.
  ///
  /// In en, this message translates to:
  /// **'Back side'**
  String get wallet_edit_back;

  /// No description provided for @wallet_edit_activate_date.
  ///
  /// In en, this message translates to:
  /// **'Activate date'**
  String get wallet_edit_activate_date;

  /// No description provided for @wallet_edit_expiration_date.
  ///
  /// In en, this message translates to:
  /// **'Expiration date'**
  String get wallet_edit_expiration_date;

  /// No description provided for @wallet_edit_upload_occurred_error.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while uploading the photo to the server'**
  String get wallet_edit_upload_occurred_error;

  /// No description provided for @wallet_waiting_balance.
  ///
  /// In en, this message translates to:
  /// **'Waiting Balance'**
  String get wallet_waiting_balance;

  /// No description provided for @wallet_pending_balance.
  ///
  /// In en, this message translates to:
  /// **'Pending Balance'**
  String get wallet_pending_balance;

  /// No description provided for @wallet_available_balance.
  ///
  /// In en, this message translates to:
  /// **'Available Balance'**
  String get wallet_available_balance;

  /// No description provided for @wallet_frozen_balance.
  ///
  /// In en, this message translates to:
  /// **'Frozen Balance'**
  String get wallet_frozen_balance;

  /// No description provided for @wallet_top10_trans.
  ///
  /// In en, this message translates to:
  /// **'10 Newest Transaction'**
  String get wallet_top10_trans;

  /// No description provided for @wallet_source_withdrawal.
  ///
  /// In en, this message translates to:
  /// **'Withdrawal'**
  String get wallet_source_withdrawal;

  /// No description provided for @wallet_source_grad.
  ///
  /// In en, this message translates to:
  /// **'Grad'**
  String get wallet_source_grad;

  /// No description provided for @wallet_source_income.
  ///
  /// In en, this message translates to:
  /// **'Income'**
  String get wallet_source_income;

  /// No description provided for @wallet_source_outcome.
  ///
  /// In en, this message translates to:
  /// **'Outcome'**
  String get wallet_source_outcome;

  /// No description provided for @wallet_source_point.
  ///
  /// In en, this message translates to:
  /// **'Point'**
  String get wallet_source_point;

  /// No description provided for @wallet_source_aff_commission.
  ///
  /// In en, this message translates to:
  /// **'Affiliate marketing - Commission'**
  String get wallet_source_aff_commission;

  /// No description provided for @wallet_source_aff_reward.
  ///
  /// In en, this message translates to:
  /// **'Affiliate marketing - Reward program'**
  String get wallet_source_aff_reward;

  /// No description provided for @wallet_source_recharge.
  ///
  /// In en, this message translates to:
  /// **'Recharge'**
  String get wallet_source_recharge;

  /// No description provided for @wallet_source_order.
  ///
  /// In en, this message translates to:
  /// **'Order'**
  String get wallet_source_order;

  /// No description provided for @wallet_status_waiting.
  ///
  /// In en, this message translates to:
  /// **'Waiting'**
  String get wallet_status_waiting;

  /// No description provided for @wallet_status_pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get wallet_status_pending;

  /// No description provided for @wallet_status_available.
  ///
  /// In en, this message translates to:
  /// **'Available'**
  String get wallet_status_available;

  /// No description provided for @wallet_status_frozen.
  ///
  /// In en, this message translates to:
  /// **'Frozen'**
  String get wallet_status_frozen;

  /// No description provided for @wallet_status_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get wallet_status_cancel;

  /// No description provided for @wallet_status_success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get wallet_status_success;

  /// No description provided for @wallet_status_error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get wallet_status_error;

  /// No description provided for @wallet_status_outcome.
  ///
  /// In en, this message translates to:
  /// **'Outcome'**
  String get wallet_status_outcome;

  /// No description provided for @wallet_status_transfer.
  ///
  /// In en, this message translates to:
  /// **'Transfer'**
  String get wallet_status_transfer;

  /// No description provided for @wallet_action_receive.
  ///
  /// In en, this message translates to:
  /// **'Receive'**
  String get wallet_action_receive;

  /// No description provided for @wallet_action_donate.
  ///
  /// In en, this message translates to:
  /// **'Donate'**
  String get wallet_action_donate;

  /// No description provided for @wallet_action_buy_point.
  ///
  /// In en, this message translates to:
  /// **'Buy point'**
  String get wallet_action_buy_point;

  /// No description provided for @wallet_action_payment.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get wallet_action_payment;

  /// No description provided for @wallet_filter_all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get wallet_filter_all;

  /// No description provided for @wallet_filter_allTime.
  ///
  /// In en, this message translates to:
  /// **'All time'**
  String get wallet_filter_allTime;

  /// No description provided for @wallet_filter_today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get wallet_filter_today;

  /// No description provided for @wallet_filter_yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get wallet_filter_yesterday;

  /// No description provided for @wallet_filter_7days.
  ///
  /// In en, this message translates to:
  /// **'Last 7 days'**
  String get wallet_filter_7days;

  /// No description provided for @wallet_filter_30days.
  ///
  /// In en, this message translates to:
  /// **'Last 30 days'**
  String get wallet_filter_30days;

  /// No description provided for @wallet_filter_custom_date.
  ///
  /// In en, this message translates to:
  /// **'Custom Date Range'**
  String get wallet_filter_custom_date;

  /// No description provided for @wallet_filter_status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get wallet_filter_status;

  /// No description provided for @wallet_filter_time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get wallet_filter_time;

  /// No description provided for @wallet_filter_action.
  ///
  /// In en, this message translates to:
  /// **'Action'**
  String get wallet_filter_action;

  /// No description provided for @wallet_validate_this_field.
  ///
  /// In en, this message translates to:
  /// **'This field'**
  String get wallet_validate_this_field;

  /// No description provided for @wallet_validate_required.
  ///
  /// In en, this message translates to:
  /// **'{fieldName} is required'**
  String wallet_validate_required(String fieldName);

  /// No description provided for @wallet_validate_invalid_email.
  ///
  /// In en, this message translates to:
  /// **'Invalid email'**
  String get wallet_validate_invalid_email;

  /// No description provided for @wallet_validate_invalid_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number'**
  String get wallet_validate_invalid_phone_number;

  /// No description provided for @wallet_validate_invalid_number.
  ///
  /// In en, this message translates to:
  /// **'Invalid number'**
  String get wallet_validate_invalid_number;

  /// No description provided for @wallet_validate_limit_length.
  ///
  /// In en, this message translates to:
  /// **'The minimum limit of {fieldName} is {minLength} characters'**
  String wallet_validate_limit_length(String fieldName, int minLength);

  /// No description provided for @wallet_validate_not_contain_number.
  ///
  /// In en, this message translates to:
  /// **'{fieldName} must not contains numbers characters'**
  String wallet_validate_not_contain_number(String fieldName);

  /// No description provided for @wallet_validate_not_contain_special_char.
  ///
  /// In en, this message translates to:
  /// **'{fieldName} must not contains special characters'**
  String wallet_validate_not_contain_special_char(String fieldName);

  /// No description provided for @wallet_validate_invalid_swift_code_length.
  ///
  /// In en, this message translates to:
  /// **'Valid swift code has 8-11 characters'**
  String get wallet_validate_invalid_swift_code_length;

  /// No description provided for @wallet_validate_invalid_swift_code.
  ///
  /// In en, this message translates to:
  /// **'Invalid swift code'**
  String get wallet_validate_invalid_swift_code;

  /// No description provided for @wallet_no_transaction.
  ///
  /// In en, this message translates to:
  /// **'There are currently no transactions!'**
  String get wallet_no_transaction;

  /// No description provided for @wallet_no_image.
  ///
  /// In en, this message translates to:
  /// **'No image'**
  String get wallet_no_image;

  /// No description provided for @wallet_edit_quit_msg.
  ///
  /// In en, this message translates to:
  /// **'The information you have edited will not be saved. Are you sure?'**
  String get wallet_edit_quit_msg;

  /// No description provided for @wallet_point_total.
  ///
  /// In en, this message translates to:
  /// **'Total: '**
  String get wallet_point_total;

  /// No description provided for @wallet_payment_methods.
  ///
  /// In en, this message translates to:
  /// **'Payment methods'**
  String get wallet_payment_methods;

  /// No description provided for @wallet_payment_methods_note.
  ///
  /// In en, this message translates to:
  /// **'(Ghi chú: Phí thanh toán ngân hàng sẽ được {HAHALOLO} hỗ trợ {MIỄN PHÍ} cho người dùng)'**
  String get wallet_payment_methods_note;

  /// No description provided for @wallet_num_of_points.
  ///
  /// In en, this message translates to:
  /// **'Number of Points'**
  String get wallet_num_of_points;

  /// No description provided for @wallet_points.
  ///
  /// In en, this message translates to:
  /// **'{number} points'**
  String wallet_points(int number);

  /// No description provided for @wallet_1point.
  ///
  /// In en, this message translates to:
  /// **'1 point'**
  String get wallet_1point;

  /// No description provided for @wallet_msg_enter_number_of_points.
  ///
  /// In en, this message translates to:
  /// **'Please enter number of points'**
  String get wallet_msg_enter_number_of_points;

  /// No description provided for @wallet_msg_pin_not_correct.
  ///
  /// In en, this message translates to:
  /// **'Pin wallet is not correct or not exist'**
  String get wallet_msg_pin_not_correct;

  /// No description provided for @wallet_msg_balance_not_enough.
  ///
  /// In en, this message translates to:
  /// **'Wallet balance is not enough'**
  String get wallet_msg_balance_not_enough;

  /// No description provided for @wallet_msg_error_while_buy_point.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while purchasing points'**
  String get wallet_msg_error_while_buy_point;

  /// No description provided for @wallet_msg_fetch_error.
  ///
  /// In en, this message translates to:
  /// **'An error occurred. Please try again later'**
  String get wallet_msg_fetch_error;

  /// No description provided for @wallet_msg_buy_point_success.
  ///
  /// In en, this message translates to:
  /// **'You have purchased your points successfully'**
  String get wallet_msg_buy_point_success;

  /// No description provided for @wallet_withdrawal_req.
  ///
  /// In en, this message translates to:
  /// **'Withdrawal request:'**
  String get wallet_withdrawal_req;

  /// No description provided for @wallet_withdrawal_payment_acc_id.
  ///
  /// In en, this message translates to:
  /// **'Payment account ID:'**
  String get wallet_withdrawal_payment_acc_id;

  /// No description provided for @wallet_withdrawal_balance.
  ///
  /// In en, this message translates to:
  /// **'Available Balances:'**
  String get wallet_withdrawal_balance;

  /// No description provided for @wallet_withdrawal_payout_acc.
  ///
  /// In en, this message translates to:
  /// **'Payout Account'**
  String get wallet_withdrawal_payout_acc;

  /// No description provided for @wallet_withdrawal_amount.
  ///
  /// In en, this message translates to:
  /// **'Amount ({currency})'**
  String wallet_withdrawal_amount(String currency);

  /// No description provided for @wallet_label_desc.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get wallet_label_desc;

  /// No description provided for @wallet_btn_save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get wallet_btn_save;

  /// No description provided for @wallet_btn_edit_owner.
  ///
  /// In en, this message translates to:
  /// **'Edit Owner Info'**
  String get wallet_btn_edit_owner;

  /// No description provided for @wallet_btn_buy.
  ///
  /// In en, this message translates to:
  /// **'Buy'**
  String get wallet_btn_buy;

  /// No description provided for @wallet_btn_reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get wallet_btn_reset;

  /// No description provided for @wallet_insufficient_available_balances.
  ///
  /// In en, this message translates to:
  /// **'Insufficient available balances'**
  String get wallet_insufficient_available_balances;

  /// No description provided for @wallet_msg_complete_info.
  ///
  /// In en, this message translates to:
  /// **'Please complete all information'**
  String get wallet_msg_complete_info;

  /// No description provided for @wallet_msg_success.
  ///
  /// In en, this message translates to:
  /// **'You have successfully withdrawn'**
  String get wallet_msg_success;

  /// No description provided for @wallet_msg_wal_not_exist.
  ///
  /// In en, this message translates to:
  /// **'Wallet not exists'**
  String get wallet_msg_wal_not_exist;

  /// No description provided for @wallet_msg_wal_blocked.
  ///
  /// In en, this message translates to:
  /// **'Wallet is blocked'**
  String get wallet_msg_wal_blocked;

  /// No description provided for @wallet_msg_acc_incorrect.
  ///
  /// In en, this message translates to:
  /// **'Payout account incorrect'**
  String get wallet_msg_acc_incorrect;

  /// No description provided for @wallet_msg_total_not_available.
  ///
  /// In en, this message translates to:
  /// **'The total amount requested is not available'**
  String get wallet_msg_total_not_available;

  /// No description provided for @wallet_msg_pin_locked.
  ///
  /// In en, this message translates to:
  /// **'The wallet\'s PIN is locked'**
  String get wallet_msg_pin_locked;

  /// No description provided for @wallet_msg_withdrawal_failed.
  ///
  /// In en, this message translates to:
  /// **'Withdrawal failed. Please try again later'**
  String get wallet_msg_withdrawal_failed;

  /// No description provided for @wallet_msg_fill_in_all_info.
  ///
  /// In en, this message translates to:
  /// **'Please fill in all the information'**
  String get wallet_msg_fill_in_all_info;

  /// No description provided for @wallet_update_info_success.
  ///
  /// In en, this message translates to:
  /// **'You have successfully updated your information'**
  String get wallet_update_info_success;

  /// No description provided for @wallet_update_info_fail.
  ///
  /// In en, this message translates to:
  /// **'You have failed to update your info'**
  String get wallet_update_info_fail;

  /// No description provided for @wallet_no_notifications.
  ///
  /// In en, this message translates to:
  /// **'You have no notifications'**
  String get wallet_no_notifications;

  /// No description provided for @wallet_buy_point_payment_method_note.
  ///
  /// In en, this message translates to:
  /// **'(Note: Bank payment fee will be supported by {halo} for {free} to user)'**
  String get wallet_buy_point_payment_method_note;

  /// No description provided for @wallet_note_free.
  ///
  /// In en, this message translates to:
  /// **'FREE'**
  String get wallet_note_free;

  /// No description provided for @wallet_buy_point_policy.
  ///
  /// In en, this message translates to:
  /// **'I agree to the {condition} and {privacy}'**
  String get wallet_buy_point_policy;

  /// No description provided for @wallet_term_conditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get wallet_term_conditions;

  /// No description provided for @wallet_privacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get wallet_privacy;

  /// No description provided for @wallet_msg_receiving_account_not_exist.
  ///
  /// In en, this message translates to:
  /// **'The receiving payment account does not exist'**
  String get wallet_msg_receiving_account_not_exist;

  /// No description provided for @wallet_msg_search_account_error.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while searching for a payment account'**
  String get wallet_msg_search_account_error;

  /// No description provided for @wallet_msg_sending_account_not_exist.
  ///
  /// In en, this message translates to:
  /// **'The Sending payment account does not exist'**
  String get wallet_msg_sending_account_not_exist;

  /// No description provided for @wallet_msg_point_balance_not_enough.
  ///
  /// In en, this message translates to:
  /// **'Account\'s point balance is not enough'**
  String get wallet_msg_point_balance_not_enough;

  /// No description provided for @wallet_msg_cannot_give_to_itself.
  ///
  /// In en, this message translates to:
  /// **'Can\'t transfer points to yourself'**
  String get wallet_msg_cannot_give_to_itself;

  /// No description provided for @wallet_msg_cannot_give_to_business.
  ///
  /// In en, this message translates to:
  /// **'The recipient\'s payment account cannot be a business account'**
  String get wallet_msg_cannot_give_to_business;

  /// No description provided for @wallet_msg_transfer_point_err.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while transferring points'**
  String get wallet_msg_transfer_point_err;

  /// No description provided for @wallet_msg_transfer_point_success.
  ///
  /// In en, this message translates to:
  /// **'You have transferred your points successfully'**
  String get wallet_msg_transfer_point_success;

  /// No description provided for @wallet_recipient_info.
  ///
  /// In en, this message translates to:
  /// **'Recipient information'**
  String get wallet_recipient_info;

  /// No description provided for @wallet_recipient_id.
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get wallet_recipient_id;

  /// No description provided for @wallet_number_of_point.
  ///
  /// In en, this message translates to:
  /// **'Number of points'**
  String get wallet_number_of_point;

  /// No description provided for @wallet_not_verified.
  ///
  /// In en, this message translates to:
  /// **'Payment account is not verified'**
  String get wallet_not_verified;

  /// No description provided for @wallet_point_balance.
  ///
  /// In en, this message translates to:
  /// **'Point balance'**
  String get wallet_point_balance;

  /// No description provided for @wallet_validate_max_length.
  ///
  /// In en, this message translates to:
  /// **'Giới hạn tối đa của {fieldName} là {maxLength} kí tự'**
  String wallet_validate_max_length(String fieldName, int maxLength);

  /// No description provided for @wallet_user_type_personal.
  ///
  /// In en, this message translates to:
  /// **'Personal'**
  String get wallet_user_type_personal;

  /// No description provided for @wallet_user_type_business.
  ///
  /// In en, this message translates to:
  /// **'Business'**
  String get wallet_user_type_business;

  /// No description provided for @halo_abbreviated_duration_format.
  ///
  /// In en, this message translates to:
  /// **'{hour}h{minute}m'**
  String halo_abbreviated_duration_format(Object hour, Object minute);

  /// No description provided for @flight_search_result_title_segments.
  ///
  /// In en, this message translates to:
  /// **'{countStop, plural, =1{1 stop} other{{countStop} stops}}'**
  String flight_search_result_title_segments(num countStop);

  /// No description provided for @flight_transit_alter.
  ///
  /// In en, this message translates to:
  /// **'A transit time of about {time} in {airport}'**
  String flight_transit_alter(Object time, Object airport);

  /// No description provided for @flight_search_result_adult_x_count.
  ///
  /// In en, this message translates to:
  /// **'Adult (x{count})'**
  String flight_search_result_adult_x_count(Object count);

  /// No description provided for @flight_search_result_child_x_count.
  ///
  /// In en, this message translates to:
  /// **'Child (x{count})'**
  String flight_search_result_child_x_count(Object count);

  /// No description provided for @flight_search_result_baby_x_count.
  ///
  /// In en, this message translates to:
  /// **'Baby (x{count})'**
  String flight_search_result_baby_x_count(Object count);

  /// No description provided for @flight_search_result_adult_count.
  ///
  /// In en, this message translates to:
  /// **'{count, plural , =1{{count} adult} other{{count} adults}}'**
  String flight_search_result_adult_count(num count);

  /// No description provided for @flight_search_result_child_count.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{ } =1{, {count} child} other{, {count} children}}'**
  String flight_search_result_child_count(num count);

  /// No description provided for @flight_search_result_kid_count.
  ///
  /// In en, this message translates to:
  /// **'{count, plural,=0{ } =1{, {count} kid} other{, {count} kid}}'**
  String flight_search_result_kid_count(num count);

  /// No description provided for @flight_search_result_baby_count.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{ } =1{, {count} baby} other{, {count} babies}}'**
  String flight_search_result_baby_count(num count);

  /// No description provided for @flight_result_detail_content_note_transit_header.
  ///
  /// In en, this message translates to:
  /// **'A transit time of about {times} in {transitPlace}'**
  String flight_result_detail_content_note_transit_header(Object times, Object transitPlace);

  /// No description provided for @flight_result_detail_checked_baggage_unit.
  ///
  /// In en, this message translates to:
  /// **'{countBag, plural, =1{{countBag}KILOGRAM} other{{countBag}KILOGRAMS}'**
  String flight_result_detail_checked_baggage_unit(num countBag);

  /// No description provided for @flight_fare_rule_title_type_flight_one_way.
  ///
  /// In en, this message translates to:
  /// **'One way flight'**
  String get flight_fare_rule_title_type_flight_one_way;

  /// No description provided for @flight_fare_rule_title_type_flight_round_trip_from.
  ///
  /// In en, this message translates to:
  /// **'Departure flight'**
  String get flight_fare_rule_title_type_flight_round_trip_from;

  /// No description provided for @flight_fare_rule_title_type_flight_round_trip_to.
  ///
  /// In en, this message translates to:
  /// **'Return flight'**
  String get flight_fare_rule_title_type_flight_round_trip_to;

  /// No description provided for @flight_fare_rule_title_fare_conditions.
  ///
  /// In en, this message translates to:
  /// **'Fare conditions'**
  String get flight_fare_rule_title_fare_conditions;

  /// No description provided for @flight_fare_rule_title_departure_flight.
  ///
  /// In en, this message translates to:
  /// **'Flight'**
  String get flight_fare_rule_title_departure_flight;

  /// No description provided for @flight_fare_rule_title_segment.
  ///
  /// In en, this message translates to:
  /// **'Segment'**
  String get flight_fare_rule_title_segment;

  /// No description provided for @flight_fare_rule_notice_empty_fare_rule.
  ///
  /// In en, this message translates to:
  /// **'Fare conditions from the airline not found'**
  String get flight_fare_rule_notice_empty_fare_rule;

  /// No description provided for @flight_filter_by_title_filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get flight_filter_by_title_filter;

  /// No description provided for @flight_filter_by_content_btn_filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get flight_filter_by_content_btn_filter;

  /// No description provided for @flight_filter_by_title_airline.
  ///
  /// In en, this message translates to:
  /// **'Airline'**
  String get flight_filter_by_title_airline;

  /// No description provided for @flight_filter_by_title_flight_times.
  ///
  /// In en, this message translates to:
  /// **'Flight time'**
  String get flight_filter_by_title_flight_times;

  /// No description provided for @flight_filter_by_title_type_flight_times_early_morning.
  ///
  /// In en, this message translates to:
  /// **'Early Morning \n 00:00 - 06:00'**
  String get flight_filter_by_title_type_flight_times_early_morning;

  /// No description provided for @flight_filter_by_title_type_flight_times_morning.
  ///
  /// In en, this message translates to:
  /// **'Morning \n 06:01 - 12:00'**
  String get flight_filter_by_title_type_flight_times_morning;

  /// No description provided for @flight_filter_by_title_type_flight_times_afternoon.
  ///
  /// In en, this message translates to:
  /// **'Afternoon \n 12:01 - 18:00'**
  String get flight_filter_by_title_type_flight_times_afternoon;

  /// No description provided for @flight_filter_by_title_type_flight_times_evening.
  ///
  /// In en, this message translates to:
  /// **'Evening \n 18:01 - 23:59'**
  String get flight_filter_by_title_type_flight_times_evening;

  /// No description provided for @flight_filter_by_title_count_segment.
  ///
  /// In en, this message translates to:
  /// **'Number of stops'**
  String get flight_filter_by_title_count_segment;

  /// No description provided for @flight_filter_by_title_select_all.
  ///
  /// In en, this message translates to:
  /// **'Select all'**
  String get flight_filter_by_title_select_all;

  /// No description provided for @flight_filter_by_title_unselect_all.
  ///
  /// In en, this message translates to:
  /// **'Unselect all'**
  String get flight_filter_by_title_unselect_all;

  /// No description provided for @flight_filter_by_title_type_segment_all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get flight_filter_by_title_type_segment_all;

  /// No description provided for @flight_filter_by_title_type_segment_direct.
  ///
  /// In en, this message translates to:
  /// **'Direct flight'**
  String get flight_filter_by_title_type_segment_direct;

  /// No description provided for @flight_filter_by_title_type_segment_transit.
  ///
  /// In en, this message translates to:
  /// **'Transit'**
  String get flight_filter_by_title_type_segment_transit;

  /// No description provided for @flight_sort_by_title_sort_by.
  ///
  /// In en, this message translates to:
  /// **'Sort by'**
  String get flight_sort_by_title_sort_by;

  /// No description provided for @flight_sort_by_title_sort_by_ascending_price.
  ///
  /// In en, this message translates to:
  /// **'Ascending price'**
  String get flight_sort_by_title_sort_by_ascending_price;

  /// No description provided for @flight_sort_by_title_sort_by_descending_price.
  ///
  /// In en, this message translates to:
  /// **'Descending price'**
  String get flight_sort_by_title_sort_by_descending_price;

  /// No description provided for @flight_sort_by_title_sort_by_earliest_departure_time.
  ///
  /// In en, this message translates to:
  /// **'Earliest departure time'**
  String get flight_sort_by_title_sort_by_earliest_departure_time;

  /// No description provided for @flight_sort_by_title_sort_by_latest_departure_time.
  ///
  /// In en, this message translates to:
  /// **'Latest departure time'**
  String get flight_sort_by_title_sort_by_latest_departure_time;

  /// No description provided for @flight_sort_by_title_sort_by_earliest_arrival_time.
  ///
  /// In en, this message translates to:
  /// **'Earliest arrival time'**
  String get flight_sort_by_title_sort_by_earliest_arrival_time;

  /// No description provided for @flight_sort_by_title_sort_by_latest_arrival_time.
  ///
  /// In en, this message translates to:
  /// **'Latest arrival time'**
  String get flight_sort_by_title_sort_by_latest_arrival_time;

  /// No description provided for @flight_search_result_title_count_adult.
  ///
  /// In en, this message translates to:
  /// **'adult'**
  String get flight_search_result_title_count_adult;

  /// No description provided for @flight_search_result_title_count_child.
  ///
  /// In en, this message translates to:
  /// **'child'**
  String get flight_search_result_title_count_child;

  /// No description provided for @flight_search_result_title_count_baby.
  ///
  /// In en, this message translates to:
  /// **'baby'**
  String get flight_search_result_title_count_baby;

  /// No description provided for @flight_search_result_title_segment.
  ///
  /// In en, this message translates to:
  /// **'stop'**
  String get flight_search_result_title_segment;

  /// No description provided for @flight_search_result_title_hours.
  ///
  /// In en, this message translates to:
  /// **'hour'**
  String get flight_search_result_title_hours;

  /// No description provided for @flight_search_result_title_minutes.
  ///
  /// In en, this message translates to:
  /// **'minute'**
  String get flight_search_result_title_minutes;

  /// No description provided for @flight_search_result_title_view_detail_price.
  ///
  /// In en, this message translates to:
  /// **'View details price'**
  String get flight_search_result_title_view_detail_price;

  /// No description provided for @flight_search_result_title_hide_detail_price.
  ///
  /// In en, this message translates to:
  /// **'Hide details price'**
  String get flight_search_result_title_hide_detail_price;

  /// No description provided for @flight_search_result_title_view_detail.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get flight_search_result_title_view_detail;

  /// No description provided for @flight_search_result_title_btn_book_ticket.
  ///
  /// In en, this message translates to:
  /// **'Book'**
  String get flight_search_result_title_btn_book_ticket;

  /// No description provided for @flight_search_result_title_basic_price_ticket.
  ///
  /// In en, this message translates to:
  /// **'Price per ticket'**
  String get flight_search_result_title_basic_price_ticket;

  /// No description provided for @flight_search_result_title_taxes_and_fee.
  ///
  /// In en, this message translates to:
  /// **'Taxes & Fees'**
  String get flight_search_result_title_taxes_and_fee;

  /// No description provided for @flight_search_result_title_total_amount.
  ///
  /// In en, this message translates to:
  /// **'Total amount'**
  String get flight_search_result_title_total_amount;

  /// No description provided for @flight_search_result_title_total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get flight_search_result_title_total;

  /// No description provided for @flight_search_result_title_fare_details.
  ///
  /// In en, this message translates to:
  /// **'Fare details'**
  String get flight_search_result_title_fare_details;

  /// No description provided for @flight_search_result_title_quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get flight_search_result_title_quantity;

  /// No description provided for @flight_search_result_title_passenger.
  ///
  /// In en, this message translates to:
  /// **'Passenger'**
  String get flight_search_result_title_passenger;

  /// No description provided for @flight_search_result_title_one_way_flight.
  ///
  /// In en, this message translates to:
  /// **'One way flight'**
  String get flight_search_result_title_one_way_flight;

  /// No description provided for @flight_search_result_title_round_trip_flight.
  ///
  /// In en, this message translates to:
  /// **'Round trip flight'**
  String get flight_search_result_title_round_trip_flight;

  /// No description provided for @flight_change_search_title_btn_agree.
  ///
  /// In en, this message translates to:
  /// **'Agree'**
  String get flight_change_search_title_btn_agree;

  /// No description provided for @flight_change_search_title_btn_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get flight_change_search_title_btn_cancel;

  /// No description provided for @flight_change_search_title_header_dialog.
  ///
  /// In en, this message translates to:
  /// **'Change search'**
  String get flight_change_search_title_header_dialog;

  /// No description provided for @flight_change_search_title_body_dialog.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to change your search information?'**
  String get flight_change_search_title_body_dialog;

  /// No description provided for @flight_change_search_title_footer_dialog.
  ///
  /// In en, this message translates to:
  /// **'If you agree to change your search information, all previous data will be deleted.'**
  String get flight_change_search_title_footer_dialog;

  /// No description provided for @flight_search_result_detail_title_flight_details.
  ///
  /// In en, this message translates to:
  /// **'Flight details'**
  String get flight_search_result_detail_title_flight_details;

  /// No description provided for @flight_search_result_detail_title_checked_baggage.
  ///
  /// In en, this message translates to:
  /// **'Checked baggage'**
  String get flight_search_result_detail_title_checked_baggage;

  /// No description provided for @flight_search_result_detail_title_aircraft.
  ///
  /// In en, this message translates to:
  /// **'Aircraft'**
  String get flight_search_result_detail_title_aircraft;

  /// No description provided for @flight_search_result_detail_title_seat_class.
  ///
  /// In en, this message translates to:
  /// **'Seat class'**
  String get flight_search_result_detail_title_seat_class;

  /// No description provided for @flight_search_result_detail_title_class_seat_type_all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get flight_search_result_detail_title_class_seat_type_all;

  /// No description provided for @flight_search_result_detail_title_class_seat_type_economy.
  ///
  /// In en, this message translates to:
  /// **'Economy'**
  String get flight_search_result_detail_title_class_seat_type_economy;

  /// No description provided for @flight_search_result_detail_title_class_seat_type_first_class.
  ///
  /// In en, this message translates to:
  /// **'First class'**
  String get flight_search_result_detail_title_class_seat_type_first_class;

  /// No description provided for @flight_search_result_detail_title_class_seat_type_business.
  ///
  /// In en, this message translates to:
  /// **'Business'**
  String get flight_search_result_detail_title_class_seat_type_business;

  /// No description provided for @flight_search_result_detail_content_note_transit_body.
  ///
  /// In en, this message translates to:
  /// **'Note: Passengers may be required to make customs clearance and submit their transit visa at the request of the host country'**
  String get flight_search_result_detail_content_note_transit_body;

  /// No description provided for @flight_transit_alter_note.
  ///
  /// In en, this message translates to:
  /// **'Note: Passengers may be required to make customs clearance and submit their transit visa at the request of the host country'**
  String get flight_transit_alter_note;

  /// No description provided for @flight_luggage.
  ///
  /// In en, this message translates to:
  /// **'Luggage'**
  String get flight_luggage;

  /// No description provided for @flight_signed_luggage.
  ///
  /// In en, this message translates to:
  /// **'Signed luggage'**
  String get flight_signed_luggage;

  /// No description provided for @flight_service_package.
  ///
  /// In en, this message translates to:
  /// **'Service packages'**
  String get flight_service_package;

  /// No description provided for @flight_run_by.
  ///
  /// In en, this message translates to:
  /// **'Run by'**
  String get flight_run_by;

  /// No description provided for @flight_result_notice_no_flight_found.
  ///
  /// In en, this message translates to:
  /// **'No flights found!'**
  String get flight_result_notice_no_flight_found;

  /// No description provided for @flight_result_notice_no_flight_found_filter.
  ///
  /// In en, this message translates to:
  /// **'Sorry, there are no flights matching your criteria'**
  String get flight_result_notice_no_flight_found_filter;

  /// No description provided for @flight_result_notice_check_internet_again.
  ///
  /// In en, this message translates to:
  /// **'The connection is being interrupted. Please check the connection again'**
  String get flight_result_notice_check_internet_again;

  /// No description provided for @flight_result_notice_error_authentication.
  ///
  /// In en, this message translates to:
  /// **'Your login session has expired. Please log in again'**
  String get flight_result_notice_error_authentication;

  /// No description provided for @flight_search_result_notice_booking_expired.
  ///
  /// In en, this message translates to:
  /// **'The booking period is about to expired'**
  String get flight_search_result_notice_booking_expired;

  /// No description provided for @flight_search_result_notice_click_continue_to_proceed.
  ///
  /// In en, this message translates to:
  /// **'Please click \"Continue\" to proceed with the reservation.'**
  String get flight_search_result_notice_click_continue_to_proceed;

  /// No description provided for @flight_search_result_btn_continue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get flight_search_result_btn_continue;

  /// No description provided for @flight_search_price_info_bottom_sheet_tax_include.
  ///
  /// In en, this message translates to:
  /// **'Tax included'**
  String get flight_search_price_info_bottom_sheet_tax_include;

  /// No description provided for @flight_search_price_info_bottom_sheet_VAT.
  ///
  /// In en, this message translates to:
  /// **'VAT'**
  String get flight_search_price_info_bottom_sheet_VAT;

  /// No description provided for @flight_search_price_info_bottom_sheet_fee_include.
  ///
  /// In en, this message translates to:
  /// **'Fee included'**
  String get flight_search_price_info_bottom_sheet_fee_include;

  /// No description provided for @flight_search_price_info_bottom_sheet_fee_system_administration.
  ///
  /// In en, this message translates to:
  /// **'System administration surcharge'**
  String get flight_search_price_info_bottom_sheet_fee_system_administration;

  /// No description provided for @flight_search_price_info_bottom_sheet_fee_security_screening.
  ///
  /// In en, this message translates to:
  /// **'Security screening fee'**
  String get flight_search_price_info_bottom_sheet_fee_security_screening;

  /// No description provided for @flight_search_price_info_bottom_sheet_fee_payment_utility.
  ///
  /// In en, this message translates to:
  /// **'Payment utility surcharge'**
  String get flight_search_price_info_bottom_sheet_fee_payment_utility;

  /// No description provided for @flight_search_result_progress_searching_title.
  ///
  /// In en, this message translates to:
  /// **'Searching...'**
  String get flight_search_result_progress_searching_title;

  /// No description provided for @flight_search_result_progress_searching_sub_title.
  ///
  /// In en, this message translates to:
  /// **'The system is looking for information, please wait a moment.'**
  String get flight_search_result_progress_searching_sub_title;

  /// No description provided for @flight_search_price_info_bottom_sheet_fee_airport_fees.
  ///
  /// In en, this message translates to:
  /// **'Airport fees'**
  String get flight_search_price_info_bottom_sheet_fee_airport_fees;

  /// No description provided for @flight_input_title.
  ///
  /// In en, this message translates to:
  /// **'Booking information'**
  String get flight_input_title;

  /// No description provided for @flight_input_passenger_infor_title.
  ///
  /// In en, this message translates to:
  /// **'Passenger information'**
  String get flight_input_passenger_infor_title;

  /// No description provided for @flight_input_passenger_validate_birth_day.
  ///
  /// In en, this message translates to:
  /// **'Date of birth is required'**
  String get flight_input_passenger_validate_birth_day;

  /// No description provided for @flight_input_passenger_hint_birth_day.
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get flight_input_passenger_hint_birth_day;

  /// No description provided for @flight_input_passenger_choose_birth_day.
  ///
  /// In en, this message translates to:
  /// **'Choose date of birth'**
  String get flight_input_passenger_choose_birth_day;

  /// No description provided for @flight_input_title_i_am_a_passenger.
  ///
  /// In en, this message translates to:
  /// **'I\'m a passenger'**
  String get flight_input_title_i_am_a_passenger;

  /// No description provided for @flight_input_title_note.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get flight_input_title_note;

  /// No description provided for @flight_input_title_note_1.
  ///
  /// In en, this message translates to:
  /// **'Please note that the passport must be valid for at least 06 months before the departure date of the first segment in the itinerary.'**
  String get flight_input_title_note_1;

  /// No description provided for @flight_input_title_note_2.
  ///
  /// In en, this message translates to:
  /// **'Passengers need to prepare all documents, meet the regulations and immigration procedures at the destination country.'**
  String get flight_input_title_note_2;

  /// No description provided for @flight_input_title_note_3.
  ///
  /// In en, this message translates to:
  /// **'The airline reserves the right to refuse carriage of any passengers who don\'t have valid documents as prescribed.'**
  String get flight_input_title_note_3;

  /// No description provided for @flight_input_title_note_4.
  ///
  /// In en, this message translates to:
  /// **'The airline does not take responsible if passengers are denied entry.'**
  String get flight_input_title_note_4;

  /// No description provided for @flight_input_title_note_5.
  ///
  /// In en, this message translates to:
  /// **'Passengers must check-in at the airport on time.'**
  String get flight_input_title_note_5;

  /// No description provided for @flight_input_title_note_6.
  ///
  /// In en, this message translates to:
  /// **'Children traveling alone need to contact the airline directly.'**
  String get flight_input_title_note_6;

  /// No description provided for @flight_input_title_note_7.
  ///
  /// In en, this message translates to:
  /// **'Pregnant passengers with their pregnancy period from 32 weeks need to contact the airline directly.'**
  String get flight_input_title_note_7;

  /// No description provided for @flight_input_title_note_8.
  ///
  /// In en, this message translates to:
  /// **'The age of the passenger is calculated according to the time interval between the date of birth and the departure date of the first flight segment in the itinerary, based on the passenger\'s identification documents such as Passport and Birth Certificate.'**
  String get flight_input_title_note_8;

  /// No description provided for @flight_input_title_gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get flight_input_title_gender;

  /// No description provided for @flight_input_title_gender_male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get flight_input_title_gender_male;

  /// No description provided for @flight_input_title_gender_female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get flight_input_title_gender_female;

  /// No description provided for @flight_input_title_gender_other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get flight_input_title_gender_other;

  /// No description provided for @flight_input_payment_reservation.
  ///
  /// In en, this message translates to:
  /// **'Reservation'**
  String get flight_input_payment_reservation;

  /// No description provided for @flight_input_payment_save_payment_infor.
  ///
  /// In en, this message translates to:
  /// **'Save payment information for next time'**
  String get flight_input_payment_save_payment_infor;

  /// No description provided for @flight_input_payment_show_contact_full_name.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get flight_input_payment_show_contact_full_name;

  /// No description provided for @flight_input_payment_show_passenger_title.
  ///
  /// In en, this message translates to:
  /// **'You are making flight payment for the following passengers:'**
  String get flight_input_payment_show_passenger_title;

  /// No description provided for @flight_order_detail_title_flight_information.
  ///
  /// In en, this message translates to:
  /// **'Flight information'**
  String get flight_order_detail_title_flight_information;

  /// No description provided for @flight_order_detail_type_flight_round_trip_from.
  ///
  /// In en, this message translates to:
  /// **'Trip information'**
  String get flight_order_detail_type_flight_round_trip_from;

  /// No description provided for @flight_order_detail_type_flight_round_trip_return.
  ///
  /// In en, this message translates to:
  /// **'Return trip information'**
  String get flight_order_detail_type_flight_round_trip_return;

  /// No description provided for @flight_order_detail_book_new_ticket.
  ///
  /// In en, this message translates to:
  /// **'Book a new ticket'**
  String get flight_order_detail_book_new_ticket;

  /// No description provided for @flight_order_detail_book_ticket_success.
  ///
  /// In en, this message translates to:
  /// **'Booking Successfully'**
  String get flight_order_detail_book_ticket_success;

  /// No description provided for @flight_order_detail_title_header_first_char.
  ///
  /// In en, this message translates to:
  /// **'Your booking request has been successfully made'**
  String get flight_order_detail_title_header_first_char;

  /// No description provided for @flight_price_detail_view_total_fare.
  ///
  /// In en, this message translates to:
  /// **'Total fare'**
  String get flight_price_detail_view_total_fare;

  /// No description provided for @flight_price_detail_view_service_fee.
  ///
  /// In en, this message translates to:
  /// **'Service fee'**
  String get flight_price_detail_view_service_fee;

  /// No description provided for @flight_price_detail_view_payment_fee.
  ///
  /// In en, this message translates to:
  /// **'Payment fee'**
  String get flight_price_detail_view_payment_fee;

  /// No description provided for @flight_price_detail_view_taxes_fees.
  ///
  /// In en, this message translates to:
  /// **'Taxes and fees'**
  String get flight_price_detail_view_taxes_fees;

  /// No description provided for @flight_price_detail_view_currency_at_the_firm.
  ///
  /// In en, this message translates to:
  /// **'Currency at the firm'**
  String get flight_price_detail_view_currency_at_the_firm;

  /// No description provided for @flight_price_detail_view_currency_at_the_firm_noti.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get flight_price_detail_view_currency_at_the_firm_noti;

  /// No description provided for @flight_price_detail_view_currency_at_the_firm_noti_1.
  ///
  /// In en, this message translates to:
  /// **'The fare is converted into the currency used by the airline.'**
  String get flight_price_detail_view_currency_at_the_firm_noti_1;

  /// No description provided for @flight_price_detail_view_currency_at_the_firm_noti_2.
  ///
  /// In en, this message translates to:
  /// **'- The exchange rate may change before you pay.'**
  String get flight_price_detail_view_currency_at_the_firm_noti_2;

  /// No description provided for @flight_price_detail_view_currency_at_the_firm_noti_3.
  ///
  /// In en, this message translates to:
  /// **'- Your card issuer may charge a transaction fee in foreign currency.'**
  String get flight_price_detail_view_currency_at_the_firm_noti_3;

  /// No description provided for @flight_order_detail_view_booking_code.
  ///
  /// In en, this message translates to:
  /// **'Reservation code'**
  String get flight_order_detail_view_booking_code;

  /// No description provided for @flight_order_detail_view_information_order.
  ///
  /// In en, this message translates to:
  /// **'Order information'**
  String get flight_order_detail_view_information_order;

  /// No description provided for @flight_handnote_international_title.
  ///
  /// In en, this message translates to:
  /// **'International'**
  String get flight_handnote_international_title;

  /// No description provided for @flight_handnote_domestic_title.
  ///
  /// In en, this message translates to:
  /// **'Domestic'**
  String get flight_handnote_domestic_title;

  /// No description provided for @flight_handnote_international_title_watting_cancel.
  ///
  /// In en, this message translates to:
  /// **'Pending cancellation'**
  String get flight_handnote_international_title_watting_cancel;

  /// No description provided for @flight_handnote_international_item_view_order_code.
  ///
  /// In en, this message translates to:
  /// **'Order ID'**
  String get flight_handnote_international_item_view_order_code;

  /// No description provided for @flight_handnote_international_item_view_departure_date.
  ///
  /// In en, this message translates to:
  /// **'Departure date'**
  String get flight_handnote_international_item_view_departure_date;

  /// No description provided for @flight_handnote_international_item_view_booking_status.
  ///
  /// In en, this message translates to:
  /// **'Booking status'**
  String get flight_handnote_international_item_view_booking_status;

  /// No description provided for @flight_handnote_international_order_view.
  ///
  /// In en, this message translates to:
  /// **'Update date'**
  String get flight_handnote_international_order_view;

  /// No description provided for @flight_passenger_view_guest_type.
  ///
  /// In en, this message translates to:
  /// **'Guest type'**
  String get flight_passenger_view_guest_type;

  /// No description provided for @flight_passenger_view_ticket_number.
  ///
  /// In en, this message translates to:
  /// **'Ticket number'**
  String get flight_passenger_view_ticket_number;

  /// No description provided for @flight_passenger_view_service_packages.
  ///
  /// In en, this message translates to:
  /// **'Service packages'**
  String get flight_passenger_view_service_packages;

  /// No description provided for @flight_passenger_view_check_in_baggage.
  ///
  /// In en, this message translates to:
  /// **'Check-in baggage:'**
  String get flight_passenger_view_check_in_baggage;

  /// No description provided for @flight_passenger_view_baggage.
  ///
  /// In en, this message translates to:
  /// **'Baggage'**
  String get flight_passenger_view_baggage;

  /// No description provided for @flight_name_verification_title.
  ///
  /// In en, this message translates to:
  /// **'Verification:'**
  String get flight_name_verification_title;

  /// No description provided for @flight_name_run_by_title.
  ///
  /// In en, this message translates to:
  /// **'Run by:'**
  String get flight_name_run_by_title;

  /// No description provided for @flight_range_slider_price_range.
  ///
  /// In en, this message translates to:
  /// **'Price range'**
  String get flight_range_slider_price_range;

  /// No description provided for @flight_handnote_title.
  ///
  /// In en, this message translates to:
  /// **'Handnotes'**
  String get flight_handnote_title;

  /// No description provided for @flight_handnote_tour_title.
  ///
  /// In en, this message translates to:
  /// **'Tour'**
  String get flight_handnote_tour_title;

  /// No description provided for @flight_handnote_hotel_title.
  ///
  /// In en, this message translates to:
  /// **'Hotel'**
  String get flight_handnote_hotel_title;

  /// No description provided for @flight_handnote_flight_title.
  ///
  /// In en, this message translates to:
  /// **'Flight'**
  String get flight_handnote_flight_title;

  /// No description provided for @flight_handnote_car_title.
  ///
  /// In en, this message translates to:
  /// **'Car rental'**
  String get flight_handnote_car_title;

  /// No description provided for @flight_hand_note_item_view_booking_code_title.
  ///
  /// In en, this message translates to:
  /// **'Booking code'**
  String get flight_hand_note_item_view_booking_code_title;

  /// No description provided for @flight_hand_note_item_view_check_in_title.
  ///
  /// In en, this message translates to:
  /// **'Check-in: '**
  String get flight_hand_note_item_view_check_in_title;

  /// No description provided for @flight_hand_note_item_view_check_out_title.
  ///
  /// In en, this message translates to:
  /// **'Check-out: '**
  String get flight_hand_note_item_view_check_out_title;

  /// No description provided for @flight_hand_note_item_view_timezone_title.
  ///
  /// In en, this message translates to:
  /// **'(Time is based on the timezone {timezone})'**
  String flight_hand_note_item_view_timezone_title(Object timezone);

  /// No description provided for @flight_operator.
  ///
  /// In en, this message translates to:
  /// **'Operated by'**
  String get flight_operator;

  /// No description provided for @flight_hand_note_item_view_hotel_empty_title.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any booking orders yet.'**
  String get flight_hand_note_item_view_hotel_empty_title;

  /// No description provided for @flight_hand_note_item_view_flight_empty_title.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any flight ticket orders yet.'**
  String get flight_hand_note_item_view_flight_empty_title;

  /// No description provided for @flight_v2_model_booking_adult.
  ///
  /// In en, this message translates to:
  /// **'Adult'**
  String get flight_v2_model_booking_adult;

  /// No description provided for @flight_v2_model_booking_children.
  ///
  /// In en, this message translates to:
  /// **'Child'**
  String get flight_v2_model_booking_children;

  /// No description provided for @flight_v2_model_booking_infant.
  ///
  /// In en, this message translates to:
  /// **'Infant'**
  String get flight_v2_model_booking_infant;

  /// No description provided for @flight_v2_model_booking_baby.
  ///
  /// In en, this message translates to:
  /// **'Baby'**
  String get flight_v2_model_booking_baby;

  /// No description provided for @flight_v2_model_booking_luggage_handle.
  ///
  /// In en, this message translates to:
  /// **'Luggage handle'**
  String get flight_v2_model_booking_luggage_handle;

  /// No description provided for @flight_v2_model_booking_checked_baggage.
  ///
  /// In en, this message translates to:
  /// **'Checked baggage (can buy more)'**
  String get flight_v2_model_booking_checked_baggage;

  /// No description provided for @flight_v2_model_booking_adult_information.
  ///
  /// In en, this message translates to:
  /// **'Adult information'**
  String get flight_v2_model_booking_adult_information;

  /// No description provided for @flight_v2_model_booking_children_information.
  ///
  /// In en, this message translates to:
  /// **'Children information'**
  String get flight_v2_model_booking_children_information;

  /// No description provided for @flight_v2_model_booking_infant_information.
  ///
  /// In en, this message translates to:
  /// **'Infant information'**
  String get flight_v2_model_booking_infant_information;

  /// No description provided for @flight_v2_model_booking_baby_information.
  ///
  /// In en, this message translates to:
  /// **'Baby information'**
  String get flight_v2_model_booking_baby_information;

  /// No description provided for @flight_v2_widget_booking_extension_male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get flight_v2_widget_booking_extension_male;

  /// No description provided for @flight_v2_widget_booking_extension_female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get flight_v2_widget_booking_extension_female;

  /// No description provided for @flight_v2_model_detail_infant.
  ///
  /// In en, this message translates to:
  /// **'(under 2 years old)'**
  String get flight_v2_model_detail_infant;

  /// No description provided for @flight_v2_model_detail_children.
  ///
  /// In en, this message translates to:
  /// **'(02 - 12 years old)'**
  String get flight_v2_model_detail_children;

  /// No description provided for @flight_v2_component_bonus_services_title_string.
  ///
  /// In en, this message translates to:
  /// **'Additional services'**
  String get flight_v2_component_bonus_services_title_string;

  /// No description provided for @flight_v2_component_bonus_service_header.
  ///
  /// In en, this message translates to:
  /// **'Additional services'**
  String get flight_v2_component_bonus_service_header;

  /// No description provided for @flight_v2_component_bonus_service_content_header_price.
  ///
  /// In en, this message translates to:
  /// **'Insurance fees'**
  String get flight_v2_component_bonus_service_content_header_price;

  /// No description provided for @flight_v2_component_bonus_service_flight_table_header.
  ///
  /// In en, this message translates to:
  /// **'Total insurance Fee'**
  String get flight_v2_component_bonus_service_flight_table_header;

  /// No description provided for @flight_v2_component_bonus_service_text1_introduce.
  ///
  /// In en, this message translates to:
  /// **'Introduction'**
  String get flight_v2_component_bonus_service_text1_introduce;

  /// No description provided for @flight_v2_component_bonus_service_text1_insurance_type.
  ///
  /// In en, this message translates to:
  /// **'Type of insurance: '**
  String get flight_v2_component_bonus_service_text1_insurance_type;

  /// No description provided for @flight_v2_component_bonus_service_text2_air_ticket_insurance.
  ///
  /// In en, this message translates to:
  /// **'Flight insurance '**
  String get flight_v2_component_bonus_service_text2_air_ticket_insurance;

  /// No description provided for @flight_v2_component_bonus_service_text1_supplier.
  ///
  /// In en, this message translates to:
  /// **'Provider: '**
  String get flight_v2_component_bonus_service_text1_supplier;

  /// No description provided for @flight_v2_component_bonus_service_text2_company.
  ///
  /// In en, this message translates to:
  /// **'Vietinbank Insurance Joint Stock Company (Vietinbank Insurance) '**
  String get flight_v2_component_bonus_service_text2_company;

  /// No description provided for @flight_v2_component_bonus_service_text1_trusted.
  ///
  /// In en, this message translates to:
  /// **'With our trustworthy travel insurance plan, you\'ll get full peace of mind '**
  String get flight_v2_component_bonus_service_text1_trusted;

  /// No description provided for @flight_v2_component_bonus_service_text1_subject_of_insurance.
  ///
  /// In en, this message translates to:
  /// **'Subject'**
  String get flight_v2_component_bonus_service_text1_subject_of_insurance;

  /// No description provided for @flight_v2_component_bonus_service_text1_air_ticket_booking.
  ///
  /// In en, this message translates to:
  /// **'Individuals use the airline ticket booking service on the Hahalolo system to travel by air.'**
  String get flight_v2_component_bonus_service_text1_air_ticket_booking;

  /// No description provided for @flight_v2_component_bonus_service_text1_age.
  ///
  /// In en, this message translates to:
  /// **'Age: From 07 days old.'**
  String get flight_v2_component_bonus_service_text1_age;

  /// No description provided for @flight_v2_component_bonus_service_text1_range.
  ///
  /// In en, this message translates to:
  /// **'Scope'**
  String get flight_v2_component_bonus_service_text1_range;

  /// No description provided for @flight_v2_component_bonus_service_text1_insurance_coverage.
  ///
  /// In en, this message translates to:
  /// **'Insurance coverage: includes the following risks '**
  String get flight_v2_component_bonus_service_text1_insurance_coverage;

  /// No description provided for @flight_v2_component_bonus_service_text1_death_bodily.
  ///
  /// In en, this message translates to:
  /// **'Death or bodily injury caused by an accident.'**
  String get flight_v2_component_bonus_service_text1_death_bodily;

  /// No description provided for @flight_v2_component_bonus_service_text1_impediments.
  ///
  /// In en, this message translates to:
  /// **'Travel risks, namely trip cancelation/shortening, loss or damage to baggage, clothing, and personal belongings of The Insured Person, airline flight delay, delayed baggage, lost travel documents, or hijack'**
  String get flight_v2_component_bonus_service_text1_impediments;

  /// No description provided for @flight_v2_component_bonus_service_text1_benefit.
  ///
  /// In en, this message translates to:
  /// **'Benefit'**
  String get flight_v2_component_bonus_service_text1_benefit;

  /// No description provided for @flight_v2_component_bonus_service_text1_small_amount.
  ///
  /// In en, this message translates to:
  /// **'Spend only a small amount of money for multiple protection'**
  String get flight_v2_component_bonus_service_text1_small_amount;

  /// No description provided for @flight_v2_component_bonus_service_text1_personal_insurance_benefits.
  ///
  /// In en, this message translates to:
  /// **'Personal insurance benefits'**
  String get flight_v2_component_bonus_service_text1_personal_insurance_benefits;

  /// No description provided for @flight_v2_component_bonus_service_text2_insured_person.
  ///
  /// In en, this message translates to:
  /// **'The insured person who dies of an accident or injury covered by the insurance will receive the full sum insured up to VND1,000,000.'**
  String get flight_v2_component_bonus_service_text2_insured_person;

  /// No description provided for @flight_v2_component_bonus_service_text1_obstacles_on_the_trip.
  ///
  /// In en, this message translates to:
  /// **'Risk travel insurance benefits: '**
  String get flight_v2_component_bonus_service_text1_obstacles_on_the_trip;

  /// No description provided for @flight_v2_component_bonus_service_text2_the_insured.
  ///
  /// In en, this message translates to:
  /// **'The insured person will be compensated up to the maximum of VND 20.000.000'**
  String get flight_v2_component_bonus_service_text2_the_insured;

  /// No description provided for @flight_v2_component_bonus_service_text1_rules.
  ///
  /// In en, this message translates to:
  /// **'Terms'**
  String get flight_v2_component_bonus_service_text1_rules;

  /// No description provided for @flight_v2_component_bonus_service_text1_more_information.
  ///
  /// In en, this message translates to:
  /// **'Please find more details in the attached file or kindly contact us'**
  String get flight_v2_component_bonus_service_text1_more_information;

  /// No description provided for @flight_v2_component_bonus_service_text1_insurance_rules.
  ///
  /// In en, this message translates to:
  /// **'Travel insurance policy'**
  String get flight_v2_component_bonus_service_text1_insurance_rules;

  /// No description provided for @flight_v2_component_bonus_service_title_agree_to_participate.
  ///
  /// In en, this message translates to:
  /// **'Agree to participate in Flight Insurance'**
  String get flight_v2_component_bonus_service_title_agree_to_participate;

  /// No description provided for @flight_v2_component_booking_flight_information.
  ///
  /// In en, this message translates to:
  /// **'Flight information'**
  String get flight_v2_component_booking_flight_information;

  /// No description provided for @flight_v2_component_booking_show.
  ///
  /// In en, this message translates to:
  /// **'Read more'**
  String get flight_v2_component_booking_show;

  /// No description provided for @flight_v2_component_booking_hide.
  ///
  /// In en, this message translates to:
  /// **'Hide'**
  String get flight_v2_component_booking_hide;

  /// No description provided for @flight_v2_component_booking_adult.
  ///
  /// In en, this message translates to:
  /// **'Adult'**
  String get flight_v2_component_booking_adult;

  /// No description provided for @flight_v2_component_booking_children.
  ///
  /// In en, this message translates to:
  /// **'Child'**
  String get flight_v2_component_booking_children;

  /// No description provided for @flight_v2_component_booking_infant.
  ///
  /// In en, this message translates to:
  /// **'Infant'**
  String get flight_v2_component_booking_infant;

  /// No description provided for @flight_v2_component_booking_baggage.
  ///
  /// In en, this message translates to:
  /// **'Baggage'**
  String get flight_v2_component_booking_baggage;

  /// No description provided for @flight_v2_component_booking_taxes_fees.
  ///
  /// In en, this message translates to:
  /// **'Fees and taxes'**
  String get flight_v2_component_booking_taxes_fees;

  /// No description provided for @flight_v2_component_booking_main_content_service.
  ///
  /// In en, this message translates to:
  /// **'Service'**
  String get flight_v2_component_booking_main_content_service;

  /// No description provided for @flight_v2_component_booking_title_booking_information.
  ///
  /// In en, this message translates to:
  /// **'Booking information'**
  String get flight_v2_component_booking_title_booking_information;

  /// No description provided for @flight_v2_component_booking_string_routeFlight_departure_flight.
  ///
  /// In en, this message translates to:
  /// **'Departure flight'**
  String get flight_v2_component_booking_string_routeFlight_departure_flight;

  /// No description provided for @flight_v2_component_booking_string_routeFlight_return_flight.
  ///
  /// In en, this message translates to:
  /// **'Return flight'**
  String get flight_v2_component_booking_string_routeFlight_return_flight;

  /// No description provided for @flight_v2_component_confirm_title_flight_information.
  ///
  /// In en, this message translates to:
  /// **'Flight information'**
  String get flight_v2_component_confirm_title_flight_information;

  /// No description provided for @flight_v2_component_confirm_text_done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get flight_v2_component_confirm_text_done;

  /// No description provided for @flight_v2_component_booking_title_payment_information.
  ///
  /// In en, this message translates to:
  /// **'Payment information'**
  String get flight_v2_component_booking_title_payment_information;

  /// No description provided for @flight_v2_component_booking_text_note_upon.
  ///
  /// In en, this message translates to:
  /// **'When '**
  String get flight_v2_component_booking_text_note_upon;

  /// No description provided for @flight_v2_component_booking_text_payment_after.
  ///
  /// In en, this message translates to:
  /// **'PAY LATER'**
  String get flight_v2_component_booking_text_payment_after;

  /// No description provided for @flight_v2_component_booking_use_point.
  ///
  /// In en, this message translates to:
  /// **'Use Point'**
  String get flight_v2_component_booking_use_point;

  /// No description provided for @flight_v2_component_booking_text_your_booking.
  ///
  /// In en, this message translates to:
  /// **', your reservation will be held within 12 hours. It will be automatically canceled if you still don\'t make your payment within the allotted time. Please make the payment within the allotted time to complete the booking process.'**
  String get flight_v2_component_booking_text_your_booking;

  /// No description provided for @flight_v2_component_applied_points_successfully.
  ///
  /// In en, this message translates to:
  /// **'You have applied points successfully'**
  String get flight_v2_component_applied_points_successfully;

  /// No description provided for @flight_v2_component_code_title.
  ///
  /// In en, this message translates to:
  /// **'Look up reservation'**
  String get flight_v2_component_code_title;

  /// No description provided for @flight_v2_component_code_retype.
  ///
  /// In en, this message translates to:
  /// **'Re-enter'**
  String get flight_v2_component_code_retype;

  /// No description provided for @flight_v2_component_code_search_btn.
  ///
  /// In en, this message translates to:
  /// **'Look up'**
  String get flight_v2_component_code_search_btn;

  /// No description provided for @flight_v2_component_code_hint_text.
  ///
  /// In en, this message translates to:
  /// **'Enter booking reference'**
  String get flight_v2_component_code_hint_text;

  /// No description provided for @flight_v2_component_code_error.
  ///
  /// In en, this message translates to:
  /// **'No booking information found.\nPlease check and try again.'**
  String get flight_v2_component_code_error;

  /// No description provided for @flight_v2_component_detail_booking_information.
  ///
  /// In en, this message translates to:
  /// **'Reservation information'**
  String get flight_v2_component_detail_booking_information;

  /// No description provided for @flight_v2_component_detail_flight_information.
  ///
  /// In en, this message translates to:
  /// **'Flight information'**
  String get flight_v2_component_detail_flight_information;

  /// No description provided for @flight_v2_component_detail_passenger_information.
  ///
  /// In en, this message translates to:
  /// **'Passenger information'**
  String get flight_v2_component_detail_passenger_information;

  /// No description provided for @flight_v2_component_payment_booking_information.
  ///
  /// In en, this message translates to:
  /// **'Booking information'**
  String get flight_v2_component_payment_booking_information;

  /// No description provided for @flight_v2_component_payment_information.
  ///
  /// In en, this message translates to:
  /// **'Information'**
  String get flight_v2_component_payment_information;

  /// No description provided for @flight_v2_component_payment_passenger_information.
  ///
  /// In en, this message translates to:
  /// **'Passenger information'**
  String get flight_v2_component_payment_passenger_information;

  /// No description provided for @flight_v2_component_payment_making_flight_payment.
  ///
  /// In en, this message translates to:
  /// **'You are making flight payment for the following passengers:'**
  String get flight_v2_component_payment_making_flight_payment;

  /// No description provided for @flight_v2_component_payment_payment_now.
  ///
  /// In en, this message translates to:
  /// **'Pay'**
  String get flight_v2_component_payment_payment_now;

  /// No description provided for @flight_v2_component_result_title_flight_details.
  ///
  /// In en, this message translates to:
  /// **'Flight details'**
  String get flight_v2_component_result_title_flight_details;

  /// No description provided for @flight_v2_component_result_title_fare_details.
  ///
  /// In en, this message translates to:
  /// **'Fare details'**
  String get flight_v2_component_result_title_fare_details;

  /// No description provided for @flight_v2_component_result_type_direct_flight.
  ///
  /// In en, this message translates to:
  /// **'Direct flight'**
  String get flight_v2_component_result_type_direct_flight;

  /// No description provided for @flight_v2_component_result_title_showMessDiaLog.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get flight_v2_component_result_title_showMessDiaLog;

  /// No description provided for @flight_v2_component_result_message_selected_return.
  ///
  /// In en, this message translates to:
  /// **'You have selected a round-trip flight on'**
  String get flight_v2_component_result_message_selected_return;

  /// No description provided for @flight_v2_component_result_message_appropriate_flight.
  ///
  /// In en, this message translates to:
  /// **'Take-off time for return flight must occur at least 02 hours after landing time for departure flight. Please select the appropriate flight.'**
  String get flight_v2_component_result_message_appropriate_flight;

  /// No description provided for @flight_v2_component_result_message_cancel_book.
  ///
  /// In en, this message translates to:
  /// **'do you want to cancel and book a new flight?'**
  String get flight_v2_component_result_message_cancel_book;

  /// No description provided for @flight_v2_component_result_actionMessage_yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get flight_v2_component_result_actionMessage_yes;

  /// No description provided for @flight_v2_component_result_negativeMessage_no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get flight_v2_component_result_negativeMessage_no;

  /// No description provided for @flight_v2_component_result_trip_turn_departure.
  ///
  /// In en, this message translates to:
  /// **'the departure'**
  String get flight_v2_component_result_trip_turn_departure;

  /// No description provided for @flight_v2_component_result_trip_turn_arrival.
  ///
  /// In en, this message translates to:
  /// **'the arrival'**
  String get flight_v2_component_result_trip_turn_arrival;

  /// No description provided for @flight_v2_component_result_booking_failed.
  ///
  /// In en, this message translates to:
  /// **'Booking failed'**
  String get flight_v2_component_result_booking_failed;

  /// No description provided for @flight_v2_notify_day_invalid_cannot_choose.
  ///
  /// In en, this message translates to:
  /// **'You cannot choose'**
  String get flight_v2_notify_day_invalid_cannot_choose;

  /// No description provided for @flight_v2_notify_day_invalid_because.
  ///
  /// In en, this message translates to:
  /// **'because'**
  String get flight_v2_notify_day_invalid_because;

  /// No description provided for @flight_v2_notify_day_invalid_date_is.
  ///
  /// In en, this message translates to:
  /// **'date is'**
  String get flight_v2_notify_day_invalid_date_is;

  /// No description provided for @flight_v2_component_result_actionMessage_btn.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get flight_v2_component_result_actionMessage_btn;

  /// No description provided for @flight_v2_component_result_message.
  ///
  /// In en, this message translates to:
  /// **'Please do not choose before current date'**
  String get flight_v2_component_result_message;

  /// No description provided for @flight_v2_component_transit_approx.
  ///
  /// In en, this message translates to:
  /// **'Transit approx '**
  String get flight_v2_component_transit_approx;

  /// No description provided for @flight_v2_component_in.
  ///
  /// In en, this message translates to:
  /// **'in'**
  String get flight_v2_component_in;

  /// No description provided for @flight_v2_component_search_text_guest.
  ///
  /// In en, this message translates to:
  /// **'Passengers'**
  String get flight_v2_component_search_text_guest;

  /// No description provided for @flight_v2_component_search_button_save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get flight_v2_component_search_button_save;

  /// No description provided for @flight_v2_component_search_text_choose_a_date.
  ///
  /// In en, this message translates to:
  /// **'Select a date'**
  String get flight_v2_component_search_text_choose_a_date;

  /// No description provided for @flight_v2_component_search_button_choose.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get flight_v2_component_search_button_choose;

  /// No description provided for @flight_v2_not_buy_more_baggage.
  ///
  /// In en, this message translates to:
  /// **'No more baggage'**
  String get flight_v2_not_buy_more_baggage;

  /// No description provided for @flight_v2_component_notification_not_available.
  ///
  /// In en, this message translates to:
  /// **'Flight is not available'**
  String get flight_v2_component_notification_not_available;

  /// No description provided for @flight_v2_widget_booking_total_price.
  ///
  /// In en, this message translates to:
  /// **'Total amount'**
  String get flight_v2_widget_booking_total_price;

  /// No description provided for @flight_v2_widget_booking_continue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get flight_v2_widget_booking_continue;

  /// No description provided for @flight_v2_widget_booking_payer_information.
  ///
  /// In en, this message translates to:
  /// **'Payer information'**
  String get flight_v2_widget_booking_payer_information;

  /// No description provided for @flight_v2_widget_booking_payer_use_contact_information.
  ///
  /// In en, this message translates to:
  /// **'Use contact\'s information'**
  String get flight_v2_widget_booking_payer_use_contact_information;

  /// No description provided for @flight_v2_widget_booking_save_payment.
  ///
  /// In en, this message translates to:
  /// **'Save payment information for next time'**
  String get flight_v2_widget_booking_save_payment;

  /// No description provided for @flight_v2_widget_booking_title_contact_information.
  ///
  /// In en, this message translates to:
  /// **'Contact information'**
  String get flight_v2_widget_booking_title_contact_information;

  /// No description provided for @flight_v2_widget_booking_title_checkbox_using_account.
  ///
  /// In en, this message translates to:
  /// **'Use current account information'**
  String get flight_v2_widget_booking_title_checkbox_using_account;

  /// No description provided for @flight_v2_widget_booking_title_checkbox_passenger.
  ///
  /// In en, this message translates to:
  /// **'I\'m a passenger'**
  String get flight_v2_widget_booking_title_checkbox_passenger;

  /// No description provided for @flight_v2_widget_booking_radio_gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get flight_v2_widget_booking_radio_gender;

  /// No description provided for @flight_v2_widget_booking_radio_male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get flight_v2_widget_booking_radio_male;

  /// No description provided for @flight_v2_widget_booking_radio_female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get flight_v2_widget_booking_radio_female;

  /// No description provided for @flight_v2_widget_booking_field_card_bank_card.
  ///
  /// In en, this message translates to:
  /// **'Bank card'**
  String get flight_v2_widget_booking_field_card_bank_card;

  /// No description provided for @flight_v2_widget_booking_field_card_checked_baggage.
  ///
  /// In en, this message translates to:
  /// **'Checked baggage'**
  String get flight_v2_widget_booking_field_card_checked_baggage;

  /// No description provided for @flight_v2_widget_booking_title_passenger_information.
  ///
  /// In en, this message translates to:
  /// **'Passenger information'**
  String get flight_v2_widget_booking_title_passenger_information;

  /// No description provided for @flight_v2_widget_booking_information.
  ///
  /// In en, this message translates to:
  /// **'information'**
  String get flight_v2_widget_booking_information;

  /// No description provided for @flight_v2_widget_booking_membership_card_number.
  ///
  /// In en, this message translates to:
  /// **'Membership card number'**
  String get flight_v2_widget_booking_membership_card_number;

  /// No description provided for @flight_v2_widget_booking_title_fare_details.
  ///
  /// In en, this message translates to:
  /// **'Fare details'**
  String get flight_v2_widget_booking_title_fare_details;

  /// No description provided for @flight_v2_widget_booking_content_price_info_fare.
  ///
  /// In en, this message translates to:
  /// **'Fare'**
  String get flight_v2_widget_booking_content_price_info_fare;

  /// No description provided for @flight_v2_widget_booking_sub_title_taxes_fees.
  ///
  /// In en, this message translates to:
  /// **'(Taxes and fees are included) '**
  String get flight_v2_widget_booking_sub_title_taxes_fees;

  /// No description provided for @flight_v2_widget_baggage_add.
  ///
  /// In en, this message translates to:
  /// **'Extra checked baggage'**
  String get flight_v2_widget_baggage_add;

  /// No description provided for @flight_v2_widget_booking_content_price_info_baggage.
  ///
  /// In en, this message translates to:
  /// **'Baggage'**
  String get flight_v2_widget_booking_content_price_info_baggage;

  /// No description provided for @flight_v2_widget_booking_content_price_info_service_fee.
  ///
  /// In en, this message translates to:
  /// **'Service fee'**
  String get flight_v2_widget_booking_content_price_info_service_fee;

  /// No description provided for @flight_v2_widget_booking_content_price_info_service_payment_fee.
  ///
  /// In en, this message translates to:
  /// **'Payment fee'**
  String get flight_v2_widget_booking_content_price_info_service_payment_fee;

  /// No description provided for @flight_v2_widget_booking_text_flight_details.
  ///
  /// In en, this message translates to:
  /// **'Flight details'**
  String get flight_v2_widget_booking_text_flight_details;

  /// No description provided for @flight_v2_widget_booking_use_coins.
  ///
  /// In en, this message translates to:
  /// **'Use coins'**
  String get flight_v2_widget_booking_use_coins;

  /// No description provided for @flight_v2_widget_booking_coupon_code.
  ///
  /// In en, this message translates to:
  /// **'Coupon code'**
  String get flight_v2_widget_booking_coupon_code;

  /// No description provided for @flight_v2_component_transit_approx_note.
  ///
  /// In en, this message translates to:
  /// **'Note: Passengers may be required to make customs clearance and submit their transit visa at the request of the host country'**
  String get flight_v2_component_transit_approx_note;

  /// No description provided for @flight_v2_notification_baggage.
  ///
  /// In en, this message translates to:
  /// **'You have just selected {baggage} see details below'**
  String flight_v2_notification_baggage(Object baggage);

  /// No description provided for @flight_v2_widget_common_one_way.
  ///
  /// In en, this message translates to:
  /// **'One way'**
  String get flight_v2_widget_common_one_way;

  /// No description provided for @flight_v2_widget_common_details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get flight_v2_widget_common_details;

  /// No description provided for @flight_v2_widget_common_text_price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get flight_v2_widget_common_text_price;

  /// No description provided for @flight_v2_widget_common_text_fare_conditions.
  ///
  /// In en, this message translates to:
  /// **'Fare conditions'**
  String get flight_v2_widget_common_text_fare_conditions;

  /// No description provided for @flight_v2_widget_common_text_service_pack.
  ///
  /// In en, this message translates to:
  /// **'Service packages'**
  String get flight_v2_widget_common_text_service_pack;

  /// No description provided for @flight_v2_widget_common_item_tax_inclusive.
  ///
  /// In en, this message translates to:
  /// **'Tax inclusive'**
  String get flight_v2_widget_common_item_tax_inclusive;

  /// No description provided for @flight_v2_widget_common_item_vat.
  ///
  /// In en, this message translates to:
  /// **'VAT'**
  String get flight_v2_widget_common_item_vat;

  /// No description provided for @flight_v2_widget_common_item_fee_inclusive.
  ///
  /// In en, this message translates to:
  /// **'Fee inclusive'**
  String get flight_v2_widget_common_item_fee_inclusive;

  /// No description provided for @flight_v2_widget_common_item_fee_surcharge.
  ///
  /// In en, this message translates to:
  /// **'System and admin surcharge'**
  String get flight_v2_widget_common_item_fee_surcharge;

  /// No description provided for @flight_v2_widget_common_item_fee_screening.
  ///
  /// In en, this message translates to:
  /// **'Security screening surcharge'**
  String get flight_v2_widget_common_item_fee_screening;

  /// No description provided for @flight_v2_widget_common_item_fee_convenient.
  ///
  /// In en, this message translates to:
  /// **'Convenient payment surcharge'**
  String get flight_v2_widget_common_item_fee_convenient;

  /// No description provided for @flight_v2_widget_common_item_fee_airport.
  ///
  /// In en, this message translates to:
  /// **'Airport fee'**
  String get flight_v2_widget_common_item_fee_airport;

  /// No description provided for @flight_v2_widget_common_text_price_per_ticket.
  ///
  /// In en, this message translates to:
  /// **'Base fare'**
  String get flight_v2_widget_common_text_price_per_ticket;

  /// No description provided for @flight_v2_widget_common_text_taxes_fees.
  ///
  /// In en, this message translates to:
  /// **'Taxes & Fees'**
  String get flight_v2_widget_common_text_taxes_fees;

  /// No description provided for @flight_v2_widget_common_service_service.
  ///
  /// In en, this message translates to:
  /// **'Service'**
  String get flight_v2_widget_common_service_service;

  /// No description provided for @flight_v2_widget_common_text_total_amount.
  ///
  /// In en, this message translates to:
  /// **'Total price'**
  String get flight_v2_widget_common_text_total_amount;

  /// No description provided for @flight_v2_widget_common_button_continue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get flight_v2_widget_common_button_continue;

  /// No description provided for @flight_v2_widget_common_text_direct_flight.
  ///
  /// In en, this message translates to:
  /// **'Direct flight'**
  String get flight_v2_widget_common_text_direct_flight;

  /// No description provided for @flight_v2_widget_common_text_taxes_fees_inclusive.
  ///
  /// In en, this message translates to:
  /// **'(Taxes and fees included)'**
  String get flight_v2_widget_common_text_taxes_fees_inclusive;

  /// No description provided for @flight_v2_widget_common_service_accommodation_service.
  ///
  /// In en, this message translates to:
  /// **'Accommodation services'**
  String get flight_v2_widget_common_service_accommodation_service;

  /// No description provided for @flight_v2_widget_common_rules_1.
  ///
  /// In en, this message translates to:
  /// **'For international flights or international transits, your passports must be valid for at least 06 months before the departure date.'**
  String get flight_v2_widget_common_rules_1;

  /// No description provided for @flight_v2_widget_common_rules_2.
  ///
  /// In en, this message translates to:
  /// **'Vietnam Airlines and Bamboo Airways: Refuse to carry pregnant passengers with their pregnancy period from 36 weeks. Vietjet Air and Vietravel Airlines: Refuse to carry pregnant passengers with their pregnancy period from 32 weeks.'**
  String get flight_v2_widget_common_rules_2;

  /// No description provided for @flight_v2_widget_common_rules_3.
  ///
  /// In en, this message translates to:
  /// **'Baby from 14 days old to under 02 years old must be accompanied by an adult over the age of 18.'**
  String get flight_v2_widget_common_rules_3;

  /// No description provided for @flight_v2_widget_common_rules_4.
  ///
  /// In en, this message translates to:
  /// **'The age of children/babies will be calculated from the date of birth to the date of flight departure, based on the child\'s birth certificate/passport.'**
  String get flight_v2_widget_common_rules_4;

  /// No description provided for @flight_v2_widget_common_rules_5.
  ///
  /// In en, this message translates to:
  /// **'In case of children traveling alone, please contact the agent for more information about unaccompanied minor service.'**
  String get flight_v2_widget_common_rules_5;

  /// No description provided for @flight_v2_widget_confirm_description.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get flight_v2_widget_confirm_description;

  /// No description provided for @flight_v2_widget_confirm_title_contact_information.
  ///
  /// In en, this message translates to:
  /// **'Contact information'**
  String get flight_v2_widget_confirm_title_contact_information;

  /// No description provided for @flight_v2_widget_confirm_description_full_name.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get flight_v2_widget_confirm_description_full_name;

  /// No description provided for @flight_v2_widget_confirm_description_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get flight_v2_widget_confirm_description_email;

  /// No description provided for @flight_v2_widget_confirm_description_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get flight_v2_widget_confirm_description_phone_number;

  /// No description provided for @flight_v2_widget_confirm_description_address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get flight_v2_widget_confirm_description_address;

  /// No description provided for @flight_v2_widget_confirm_title_payment_information.
  ///
  /// In en, this message translates to:
  /// **'Payment information'**
  String get flight_v2_widget_confirm_title_payment_information;

  /// No description provided for @flight_v2_widget_confirm_description_orders.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get flight_v2_widget_confirm_description_orders;

  /// No description provided for @flight_v2_widget_confirm_description_price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get flight_v2_widget_confirm_description_price;

  /// No description provided for @flight_v2_widget_confirm_description_payers.
  ///
  /// In en, this message translates to:
  /// **'Payer'**
  String get flight_v2_widget_confirm_description_payers;

  /// No description provided for @flight_v2_widget_confirm_description_baggage.
  ///
  /// In en, this message translates to:
  /// **'Baggage'**
  String get flight_v2_widget_confirm_description_baggage;

  /// No description provided for @flight_v2_widget_confirm_button_view_details.
  ///
  /// In en, this message translates to:
  /// **'View details'**
  String get flight_v2_widget_confirm_button_view_details;

  /// No description provided for @flight_v2_widget_confirm_button_book_a_new_ticket.
  ///
  /// In en, this message translates to:
  /// **'Book new'**
  String get flight_v2_widget_confirm_button_book_a_new_ticket;

  /// No description provided for @flight_v2_widget_confirm_text_ticket_booking_successful.
  ///
  /// In en, this message translates to:
  /// **'Booking successful'**
  String get flight_v2_widget_confirm_text_ticket_booking_successful;

  /// No description provided for @flight_v2_widget_confirm_text_reservation_request.
  ///
  /// In en, this message translates to:
  /// **'Your Booking request has been successfully made'**
  String get flight_v2_widget_confirm_text_reservation_request;

  /// No description provided for @flight_v2_widget_confirm_text_paid_already.
  ///
  /// In en, this message translates to:
  /// **'(Paid)'**
  String get flight_v2_widget_confirm_text_paid_already;

  /// No description provided for @flight_v2_widget_confirm_textspan_trusting_using.
  ///
  /// In en, this message translates to:
  /// **' Thank you for your trust in our service '**
  String get flight_v2_widget_confirm_textspan_trusting_using;

  /// No description provided for @flight_v2_widget_confirm_textspan_question_help.
  ///
  /// In en, this message translates to:
  /// **' If you have any questions or need further assistance, please contact Hahalolo \nHelp Center '**
  String get flight_v2_widget_confirm_textspan_question_help;

  /// No description provided for @flight_v2_widget_confirm_text_paid_instructions.
  ///
  /// In en, this message translates to:
  /// **'for instructions.'**
  String get flight_v2_widget_confirm_text_paid_instructions;

  /// No description provided for @flight_v2_widget_confirm_text_check_the_itinerary.
  ///
  /// In en, this message translates to:
  /// **'. You can check itinerary details below.'**
  String get flight_v2_widget_confirm_text_check_the_itinerary;

  /// No description provided for @flight_v2_widget_confirm_title_passenger_information.
  ///
  /// In en, this message translates to:
  /// **'Passenger information'**
  String get flight_v2_widget_confirm_title_passenger_information;

  /// No description provided for @flight_v2_widget_confirm_title_flight_information.
  ///
  /// In en, this message translates to:
  /// **'Flight information'**
  String get flight_v2_widget_confirm_title_flight_information;

  /// No description provided for @flight_v2_widget_confirm_text_ticket_class.
  ///
  /// In en, this message translates to:
  /// **'Class'**
  String get flight_v2_widget_confirm_text_ticket_class;

  /// No description provided for @flight_v2_widget_confirm_text_booking_code.
  ///
  /// In en, this message translates to:
  /// **'Booking reference'**
  String get flight_v2_widget_confirm_text_booking_code;

  /// No description provided for @flight_v2_widget_confirm_text_flight.
  ///
  /// In en, this message translates to:
  /// **'Flight'**
  String get flight_v2_widget_confirm_text_flight;

  /// No description provided for @flight_v2_widget_confirm_description_name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get flight_v2_widget_confirm_description_name;

  /// No description provided for @flight_v2_widget_confirm_description_guest_type.
  ///
  /// In en, this message translates to:
  /// **'Passenger type'**
  String get flight_v2_widget_confirm_description_guest_type;

  /// No description provided for @flight_v2_widget_detail_text_booking_code.
  ///
  /// In en, this message translates to:
  /// **'Booking reference: '**
  String get flight_v2_widget_detail_text_booking_code;

  /// No description provided for @flight_v2_widget_detail_text_status.
  ///
  /// In en, this message translates to:
  /// **'Status: '**
  String get flight_v2_widget_detail_text_status;

  /// No description provided for @flight_v2_widget_detail_text_booked.
  ///
  /// In en, this message translates to:
  /// **'Booked'**
  String get flight_v2_widget_detail_text_booked;

  /// No description provided for @flight_v2_widget_detail_text_cancelled.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get flight_v2_widget_detail_text_cancelled;

  /// No description provided for @flight_v2_widget_detail_text_paid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get flight_v2_widget_detail_text_paid;

  /// No description provided for @flight_v2_widget_detail_text_unpaid.
  ///
  /// In en, this message translates to:
  /// **'Unpaid'**
  String get flight_v2_widget_detail_text_unpaid;

  /// No description provided for @flight_v2_widget_detail_text_departure_flight.
  ///
  /// In en, this message translates to:
  /// **'Departure flight'**
  String get flight_v2_widget_detail_text_departure_flight;

  /// No description provided for @flight_v2_widget_detail_text_return_flight.
  ///
  /// In en, this message translates to:
  /// **'Return flight'**
  String get flight_v2_widget_detail_text_return_flight;

  /// No description provided for @flight_v2_widget_detail_text_departure.
  ///
  /// In en, this message translates to:
  /// **'Departure'**
  String get flight_v2_widget_detail_text_departure;

  /// No description provided for @flight_v2_widget_detail_text_destination.
  ///
  /// In en, this message translates to:
  /// **'Destination'**
  String get flight_v2_widget_detail_text_destination;

  /// No description provided for @flight_v2_widget_dialog_config_button_agree.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get flight_v2_widget_dialog_config_button_agree;

  /// No description provided for @flight_v2_widget_dialog_config_button_deny.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get flight_v2_widget_dialog_config_button_deny;

  /// No description provided for @flight_v2_widget_dialog_config_title.
  ///
  /// In en, this message translates to:
  /// **'Change information'**
  String get flight_v2_widget_dialog_config_title;

  /// No description provided for @flight_v2_widget_dialog_config_text_span_change_search.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to change your Search Information '**
  String get flight_v2_widget_dialog_config_text_span_change_search;

  /// No description provided for @flight_v2_widget_dialog_config_text_span_agree_change.
  ///
  /// In en, this message translates to:
  /// **'If you agree to change your search information, all previous data will be deleted'**
  String get flight_v2_widget_dialog_config_text_span_agree_change;

  /// No description provided for @flight_v2_widget_dialog_config_title_delete_account.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get flight_v2_widget_dialog_config_title_delete_account;

  /// No description provided for @flight_v2_widget_dialog_config_title_text_span_won_appear.
  ///
  /// In en, this message translates to:
  /// **'The account won\'t appear in the Select a payment account section. Do you want to delete this payment account?\n'**
  String get flight_v2_widget_dialog_config_title_text_span_won_appear;

  /// No description provided for @flight_v2_widget_dialog_config_button_agree_flight_time.
  ///
  /// In en, this message translates to:
  /// **'Choose another flight time'**
  String get flight_v2_widget_dialog_config_button_agree_flight_time;

  /// No description provided for @flight_v2_widget_dialog_config_button_deny_change_search.
  ///
  /// In en, this message translates to:
  /// **'Change search'**
  String get flight_v2_widget_dialog_config_button_deny_change_search;

  /// No description provided for @flight_v2_widget_dialog_config_title_exceeded_the_time.
  ///
  /// In en, this message translates to:
  /// **'The flight exceeded the allowed time'**
  String get flight_v2_widget_dialog_config_title_exceeded_the_time;

  /// No description provided for @flight_v2_widget_dialog_config_text_span_exceeded_the_reservation.
  ///
  /// In en, this message translates to:
  /// **'The flight you selected has exceeded the allowed Booking time.'**
  String get flight_v2_widget_dialog_config_text_span_exceeded_the_reservation;

  /// No description provided for @flight_v2_widget_dialog_config_text_span_please_contact.
  ///
  /// In en, this message translates to:
  /// **'Please contact us'**
  String get flight_v2_widget_dialog_config_text_span_please_contact;

  /// No description provided for @flight_v2_widget_dialog_config_text_span_by_number.
  ///
  /// In en, this message translates to:
  /// **'via '**
  String get flight_v2_widget_dialog_config_text_span_by_number;

  /// No description provided for @flight_v2_widget_dialog_config_text_span_hotline.
  ///
  /// In en, this message translates to:
  /// **'Hotline'**
  String get flight_v2_widget_dialog_config_text_span_hotline;

  /// No description provided for @flight_v2_widget_dialog_config_text_span_or.
  ///
  /// In en, this message translates to:
  /// **'or '**
  String get flight_v2_widget_dialog_config_text_span_or;

  /// No description provided for @flight_v2_widget_dialog_config_text_span_change_search_new.
  ///
  /// In en, this message translates to:
  /// **'change your search for a new flight.'**
  String get flight_v2_widget_dialog_config_text_span_change_search_new;

  /// No description provided for @flight_v2_widget_dialog_config_button_choose_another_flight.
  ///
  /// In en, this message translates to:
  /// **'Choose another flight'**
  String get flight_v2_widget_dialog_config_button_choose_another_flight;

  /// No description provided for @flight_v2_widget_dialog_config_title_not_available.
  ///
  /// In en, this message translates to:
  /// **'Flight is not\n available'**
  String get flight_v2_widget_dialog_config_title_not_available;

  /// No description provided for @flight_v2_widget_dialog_config_text_span_sorry.
  ///
  /// In en, this message translates to:
  /// **'Sorry, your selected flight is no longer available. Please'**
  String get flight_v2_widget_dialog_config_text_span_sorry;

  /// No description provided for @flight_v2_widget_dialog_config_text_span_choose_another_flight.
  ///
  /// In en, this message translates to:
  /// **' choose another flight or change your search.'**
  String get flight_v2_widget_dialog_config_text_span_choose_another_flight;

  /// No description provided for @flight_v2_widget_dialog_config_title_ticket_price_change.
  ///
  /// In en, this message translates to:
  /// **' Fare changes'**
  String get flight_v2_widget_dialog_config_title_ticket_price_change;

  /// No description provided for @flight_v2_widget_dialog_config_text_span_your_fare.
  ///
  /// In en, this message translates to:
  /// **' Your fare has changed from'**
  String get flight_v2_widget_dialog_config_text_span_your_fare;

  /// No description provided for @flight_v2_widget_dialog_config_text_span_to.
  ///
  /// In en, this message translates to:
  /// **' to '**
  String get flight_v2_widget_dialog_config_text_span_to;

  /// No description provided for @flight_v2_widget_dialog_config_text_span_from_airline.
  ///
  /// In en, this message translates to:
  /// **'\n due to the airline\'s fare changes. Do you want to continue booking?'**
  String get flight_v2_widget_dialog_config_text_span_from_airline;

  /// No description provided for @flight_v2_widget_field_fname_required.
  ///
  /// In en, this message translates to:
  /// **'First name is required'**
  String get flight_v2_widget_field_fname_required;

  /// No description provided for @flight_v2_widget_field_fname_invalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid first name'**
  String get flight_v2_widget_field_fname_invalid;

  /// No description provided for @flight_v2_widget_field_fname_last_name.
  ///
  /// In en, this message translates to:
  /// **'First name'**
  String get flight_v2_widget_field_fname_last_name;

  /// No description provided for @flight_v2_widget_field_fname_mf_name_with_tone_mark.
  ///
  /// In en, this message translates to:
  /// **'Middle & First name (Without tone mark)'**
  String get flight_v2_widget_field_fname_mf_name_with_tone_mark;

  /// No description provided for @flight_v2_widget_dialog_cannot_used_information.
  ///
  /// In en, this message translates to:
  /// **'This information cannot be used at this time, use another information or save it !'**
  String get flight_v2_widget_dialog_cannot_used_information;

  /// No description provided for @flight_v2_widget_field_lname_required.
  ///
  /// In en, this message translates to:
  /// **'Last name are required'**
  String get flight_v2_widget_field_lname_required;

  /// No description provided for @flight_v2_widget_field_lname_invalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid last name'**
  String get flight_v2_widget_field_lname_invalid;

  /// No description provided for @flight_v2_widget_field_lname_middle_first_name.
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get flight_v2_widget_field_lname_middle_first_name;

  /// No description provided for @flight_v2_widget_field_email_required.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get flight_v2_widget_field_email_required;

  /// No description provided for @flight_v2_widget_field_email_invalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid email'**
  String get flight_v2_widget_field_email_invalid;

  /// No description provided for @flight_v2_widget_field_email_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get flight_v2_widget_field_email_email;

  /// No description provided for @flight_v2_widget_field_phone_required.
  ///
  /// In en, this message translates to:
  /// **'Phone is required'**
  String get flight_v2_widget_field_phone_required;

  /// No description provided for @flight_v2_widget_field_phone_invalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number'**
  String get flight_v2_widget_field_phone_invalid;

  /// No description provided for @flight_v2_widget_field_phone_phone.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get flight_v2_widget_field_phone_phone;

  /// No description provided for @flight_v2_widget_field_address_required.
  ///
  /// In en, this message translates to:
  /// **'Address is required'**
  String get flight_v2_widget_field_address_required;

  /// No description provided for @flight_v2_widget_field_address_invalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid address'**
  String get flight_v2_widget_field_address_invalid;

  /// No description provided for @flight_v2_widget_field_address_address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get flight_v2_widget_field_address_address;

  /// No description provided for @flight_v2_widget_field_city_required.
  ///
  /// In en, this message translates to:
  /// **'State/City is required'**
  String get flight_v2_widget_field_city_required;

  /// No description provided for @flight_v2_widget_field_city_invalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid State/City'**
  String get flight_v2_widget_field_city_invalid;

  /// No description provided for @flight_v2_widget_field_city_city.
  ///
  /// In en, this message translates to:
  /// **'State/City'**
  String get flight_v2_widget_field_city_city;

  /// No description provided for @flight_v2_widget_field_city_snackbar_text.
  ///
  /// In en, this message translates to:
  /// **'Please select your nationality before selecting a city'**
  String get flight_v2_widget_field_city_snackbar_text;

  /// No description provided for @flight_v2_widget_field_country_required.
  ///
  /// In en, this message translates to:
  /// **'Nationality is required'**
  String get flight_v2_widget_field_country_required;

  /// No description provided for @flight_v2_widget_field_country_invalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid nationality'**
  String get flight_v2_widget_field_country_invalid;

  /// No description provided for @flight_v2_widget_field_country_country.
  ///
  /// In en, this message translates to:
  /// **' Nationality'**
  String get flight_v2_widget_field_country_country;

  /// No description provided for @flight_v2_widget_field_field_card_hint.
  ///
  /// In en, this message translates to:
  /// **'Membership card number'**
  String get flight_v2_widget_field_field_card_hint;

  /// No description provided for @flight_v2_widget_field_field_card_error_input.
  ///
  /// In en, this message translates to:
  /// **'Invalid card'**
  String get flight_v2_widget_field_field_card_error_input;

  /// No description provided for @flight_v2_widget_field_field_card_default_error.
  ///
  /// In en, this message translates to:
  /// **'Card is required'**
  String get flight_v2_widget_field_field_card_default_error;

  /// No description provided for @flight_v2_widget_field_field_date_hint.
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get flight_v2_widget_field_field_date_hint;

  /// No description provided for @flight_v2_widget_field_field_date_error_input.
  ///
  /// In en, this message translates to:
  /// **'Date of birth is required'**
  String get flight_v2_widget_field_field_date_error_input;

  /// No description provided for @flight_v2_widget_field_field_date_default_error.
  ///
  /// In en, this message translates to:
  /// **'Date of birth is required'**
  String get flight_v2_widget_field_field_date_default_error;

  /// No description provided for @flight_v2_widget_field_field_date_default_error_infant.
  ///
  /// In en, this message translates to:
  /// **'Infants must be under 2 years old'**
  String get flight_v2_widget_field_field_date_default_error_infant;

  /// No description provided for @flight_v2_widget_field_field_date_default_error_children.
  ///
  /// In en, this message translates to:
  /// **'Children must be from 2 to 12 years old'**
  String get flight_v2_widget_field_field_date_default_error_children;

  /// No description provided for @flight_v2_widget_field_fname_last_name_with_tone_marks.
  ///
  /// In en, this message translates to:
  /// **'Last name (Without tone mark)'**
  String get flight_v2_widget_field_fname_last_name_with_tone_marks;

  /// No description provided for @flight_v2_widget_payment_contact_information.
  ///
  /// In en, this message translates to:
  /// **'Contact information'**
  String get flight_v2_widget_payment_contact_information;

  /// No description provided for @flight_v2_widget_payment_full_name.
  ///
  /// In en, this message translates to:
  /// **'Full name '**
  String get flight_v2_widget_payment_full_name;

  /// No description provided for @flight_v2_widget_payment_gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get flight_v2_widget_payment_gender;

  /// No description provided for @flight_v2_widget_payment_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get flight_v2_widget_payment_phone_number;

  /// No description provided for @flight_v2_widget_payment_address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get flight_v2_widget_payment_address;

  /// No description provided for @flight_v2_widget_payment_birthday.
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get flight_v2_widget_payment_birthday;

  /// No description provided for @flight_v2_widget_payment_male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get flight_v2_widget_payment_male;

  /// No description provided for @flight_v2_widget_payment_female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get flight_v2_widget_payment_female;

  /// No description provided for @flight_v2_widget_payment_full_name_detail_customer_item.
  ///
  /// In en, this message translates to:
  /// **'Full name: '**
  String get flight_v2_widget_payment_full_name_detail_customer_item;

  /// No description provided for @flight_v2_widget_payment_gender_detail_customer_item.
  ///
  /// In en, this message translates to:
  /// **'Gender: '**
  String get flight_v2_widget_payment_gender_detail_customer_item;

  /// No description provided for @flight_v2_widget_payment_birthday_detail_customer_item.
  ///
  /// In en, this message translates to:
  /// **'Date of birth: '**
  String get flight_v2_widget_payment_birthday_detail_customer_item;

  /// No description provided for @flight_v2_widget_payment_checked_baggage.
  ///
  /// In en, this message translates to:
  /// **'Checked baggage'**
  String get flight_v2_widget_payment_checked_baggage;

  /// No description provided for @flight_v2_widget_payment_note.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get flight_v2_widget_payment_note;

  /// No description provided for @flight_v2_widget_payment_information.
  ///
  /// In en, this message translates to:
  /// **'Information'**
  String get flight_v2_widget_payment_information;

  /// No description provided for @flight_v2_widget_payment_adult.
  ///
  /// In en, this message translates to:
  /// **'Adult'**
  String get flight_v2_widget_payment_adult;

  /// No description provided for @flight_v2_widget_payment_children.
  ///
  /// In en, this message translates to:
  /// **'Children'**
  String get flight_v2_widget_payment_children;

  /// No description provided for @flight_v2_widget_payment_infant.
  ///
  /// In en, this message translates to:
  /// **'Infant'**
  String get flight_v2_widget_payment_infant;

  /// No description provided for @flight_v2_widget_payment_title_adult_information.
  ///
  /// In en, this message translates to:
  /// **'Adult information'**
  String get flight_v2_widget_payment_title_adult_information;

  /// No description provided for @flight_v2_widget_payment_title_children_information.
  ///
  /// In en, this message translates to:
  /// **'Children information'**
  String get flight_v2_widget_payment_title_children_information;

  /// No description provided for @flight_v2_widget_payment_title_infant_information.
  ///
  /// In en, this message translates to:
  /// **'Infant information'**
  String get flight_v2_widget_payment_title_infant_information;

  /// No description provided for @flight_v2_widget_payment_customer_information.
  ///
  /// In en, this message translates to:
  /// **'Customer Information'**
  String get flight_v2_widget_payment_customer_information;

  /// No description provided for @flight_v2_widget_payment_edit_information.
  ///
  /// In en, this message translates to:
  /// **'Edit information'**
  String get flight_v2_widget_payment_edit_information;

  /// No description provided for @flight_v2_widget_payment_bonus_services.
  ///
  /// In en, this message translates to:
  /// **'Additional services'**
  String get flight_v2_widget_payment_bonus_services;

  /// No description provided for @flight_v2_widget_payment_membership_card_number.
  ///
  /// In en, this message translates to:
  /// **'Membership card number'**
  String get flight_v2_widget_payment_membership_card_number;

  /// No description provided for @flight_v2_widget_payment_text_loyal_customer.
  ///
  /// In en, this message translates to:
  /// **'Frequent flyers'**
  String get flight_v2_widget_payment_text_loyal_customer;

  /// No description provided for @flight_v2_widget_payment_text_making_flight_payment.
  ///
  /// In en, this message translates to:
  /// **'You are making flight payment for the following passengers: '**
  String get flight_v2_widget_payment_text_making_flight_payment;

  /// No description provided for @flight_v2_widget_result_total_amount.
  ///
  /// In en, this message translates to:
  /// **'Total price'**
  String get flight_v2_widget_result_total_amount;

  /// No description provided for @flight_v2_widget_result_taxes_fees.
  ///
  /// In en, this message translates to:
  /// **'(Taxes and fees included)'**
  String get flight_v2_widget_result_taxes_fees;

  /// No description provided for @flight_v2_widget_result_elevate_button_book.
  ///
  /// In en, this message translates to:
  /// **'Book'**
  String get flight_v2_widget_result_elevate_button_book;

  /// No description provided for @flight_v2_widget_result_text_flight.
  ///
  /// In en, this message translates to:
  /// **'Segment '**
  String get flight_v2_widget_result_text_flight;

  /// No description provided for @flight_v2_widget_result_text_departure_flight.
  ///
  /// In en, this message translates to:
  /// **'Departure flight'**
  String get flight_v2_widget_result_text_departure_flight;

  /// No description provided for @flight_v2_widget_result_text_return_flight.
  ///
  /// In en, this message translates to:
  /// **'Return flight'**
  String get flight_v2_widget_result_text_return_flight;

  /// No description provided for @flight_v2_dialog_default_payment_error.
  ///
  /// In en, this message translates to:
  /// **'An error occurred during the payment process. Please try again later.'**
  String get flight_v2_dialog_default_payment_error;

  /// No description provided for @flight_v2_dialog_default_payment_hahalolo_cskh.
  ///
  /// In en, this message translates to:
  /// **'Contact Hahalolo Customer Service'**
  String get flight_v2_dialog_default_payment_hahalolo_cskh;

  /// No description provided for @flight_v2_dialog_default_payment_not_success.
  ///
  /// In en, this message translates to:
  /// **'Payment failed'**
  String get flight_v2_dialog_default_payment_not_success;

  /// No description provided for @flight_payment_voucher_exit_dialog_title.
  ///
  /// In en, this message translates to:
  /// **'Payment failed'**
  String get flight_payment_voucher_exit_dialog_title;

  /// No description provided for @flight_payment_voucher_exit_dialog_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Invalid discount code'**
  String get flight_payment_voucher_exit_dialog_subtitle;

  /// No description provided for @flight_payment_voucher_exit_dialog_total_price_change.
  ///
  /// In en, this message translates to:
  /// **'The total payment has changed from '**
  String get flight_payment_voucher_exit_dialog_total_price_change;

  /// No description provided for @flight_payment_voucher_exit_dialog_to.
  ///
  /// In en, this message translates to:
  /// **' to '**
  String get flight_payment_voucher_exit_dialog_to;

  /// No description provided for @flight_payment_voucher_exit_dialog_continute_payment.
  ///
  /// In en, this message translates to:
  /// **'.\nDo you want to continue paying?\n'**
  String get flight_payment_voucher_exit_dialog_continute_payment;

  /// No description provided for @flight_payment_voucher_exit_dialog_cskh_hahalolo.
  ///
  /// In en, this message translates to:
  /// **'Or contact Customer Service Hahalolo '**
  String get flight_payment_voucher_exit_dialog_cskh_hahalolo;

  /// No description provided for @flight_payment_voucher_exit_dialog_help.
  ///
  /// In en, this message translates to:
  /// **' for help.'**
  String get flight_payment_voucher_exit_dialog_help;

  /// No description provided for @flight_payment_voucher_exit_button_continute_payment.
  ///
  /// In en, this message translates to:
  /// **'Continue to pay'**
  String get flight_payment_voucher_exit_button_continute_payment;

  /// No description provided for @flight_v2_dialog_the_order_not_eligible.
  ///
  /// In en, this message translates to:
  /// **'The order is not eligible for payment'**
  String get flight_v2_dialog_the_order_not_eligible;

  /// No description provided for @flight_v2_dialog_qualified_orders.
  ///
  /// In en, this message translates to:
  /// **'Qualified orders have a total payment of '**
  String get flight_v2_dialog_qualified_orders;

  /// No description provided for @flight_v2_dialog_coupon_code_coins_points.
  ///
  /// In en, this message translates to:
  /// **'You can change the Coupon Code, Coins or Points to qualify for payment.'**
  String get flight_v2_dialog_coupon_code_coins_points;

  /// No description provided for @flight_v2_dialog_or_minimum.
  ///
  /// In en, this message translates to:
  /// **' or minimum '**
  String get flight_v2_dialog_or_minimum;

  /// No description provided for @flight_v2_voucher_hold_not_edit.
  ///
  /// In en, this message translates to:
  /// **'The order has passed through the payment gateway, the discount code cannot be removed.'**
  String get flight_v2_voucher_hold_not_edit;

  /// No description provided for @flight_v2_payment_error_system.
  ///
  /// In en, this message translates to:
  /// **'Your order has been successfully paid and will be updated to your notebook soon.'**
  String get flight_v2_payment_error_system;

  /// No description provided for @flight_v2_point_unsuccess.
  ///
  /// In en, this message translates to:
  /// **'You have applied points unsuccessfully'**
  String get flight_v2_point_unsuccess;

  /// No description provided for @flight_v2_point_change.
  ///
  /// In en, this message translates to:
  /// **'The number of points applied has changed due to the change in the total payment amount.'**
  String get flight_v2_point_change;

  /// No description provided for @flight_v2_search_departure.
  ///
  /// In en, this message translates to:
  /// **'Departure...'**
  String get flight_v2_search_departure;

  /// No description provided for @flight_v2_search_destination.
  ///
  /// In en, this message translates to:
  /// **'Destination...'**
  String get flight_v2_search_destination;

  /// No description provided for @flight_v2_search_select_departure_date.
  ///
  /// In en, this message translates to:
  /// **'Select departure date...'**
  String get flight_v2_search_select_departure_date;

  /// No description provided for @flight_v2_search_select_return_date.
  ///
  /// In en, this message translates to:
  /// **'Select return date...'**
  String get flight_v2_search_select_return_date;

  /// No description provided for @flight_v2_search_round_trip.
  ///
  /// In en, this message translates to:
  /// **'Round trip'**
  String get flight_v2_search_round_trip;

  /// No description provided for @flight_v2_search_number_of_passengers.
  ///
  /// In en, this message translates to:
  /// **'Number of passengers'**
  String get flight_v2_search_number_of_passengers;

  /// No description provided for @flight_v2_search_seat_class.
  ///
  /// In en, this message translates to:
  /// **'Seat class'**
  String get flight_v2_search_seat_class;

  /// No description provided for @flight_v2_search_select_departure_point.
  ///
  /// In en, this message translates to:
  /// **'Select departure point'**
  String get flight_v2_search_select_departure_point;

  /// No description provided for @flight_v2_search_enter_departure_point.
  ///
  /// In en, this message translates to:
  /// **'Enter to search departure...'**
  String get flight_v2_search_enter_departure_point;

  /// No description provided for @flight_v2_search_popular_city_airport.
  ///
  /// In en, this message translates to:
  /// **'Popular cities or airports'**
  String get flight_v2_search_popular_city_airport;

  /// No description provided for @flight_v2_search_select_area.
  ///
  /// In en, this message translates to:
  /// **'Select a region'**
  String get flight_v2_search_select_area;

  /// No description provided for @flight_v2_search_destination_different_departure.
  ///
  /// In en, this message translates to:
  /// **'The departure and destination cannot be the same'**
  String get flight_v2_search_destination_different_departure;

  /// No description provided for @flight_v2_search_VIETNAM.
  ///
  /// In en, this message translates to:
  /// **'VietNam'**
  String get flight_v2_search_VIETNAM;

  /// No description provided for @flight_v2_search_ASIA.
  ///
  /// In en, this message translates to:
  /// **'Asia'**
  String get flight_v2_search_ASIA;

  /// No description provided for @flight_v2_search_EUROPE.
  ///
  /// In en, this message translates to:
  /// **'Europe'**
  String get flight_v2_search_EUROPE;

  /// No description provided for @flight_v2_search_NORTH_AMERICA.
  ///
  /// In en, this message translates to:
  /// **'North America'**
  String get flight_v2_search_NORTH_AMERICA;

  /// No description provided for @flight_v2_search_OCEANIA.
  ///
  /// In en, this message translates to:
  /// **'Oceania'**
  String get flight_v2_search_OCEANIA;

  /// No description provided for @flight_v2_search_AFRICA.
  ///
  /// In en, this message translates to:
  /// **'Africa'**
  String get flight_v2_search_AFRICA;

  /// No description provided for @flight_v2_search_select_date.
  ///
  /// In en, this message translates to:
  /// **'Select date'**
  String get flight_v2_search_select_date;

  /// No description provided for @flight_v2_search_departure_date.
  ///
  /// In en, this message translates to:
  /// **'Departure date'**
  String get flight_v2_search_departure_date;

  /// No description provided for @flight_v2_search_return_date.
  ///
  /// In en, this message translates to:
  /// **'Return date'**
  String get flight_v2_search_return_date;

  /// No description provided for @flight_v2_search_button_choose.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get flight_v2_search_button_choose;

  /// No description provided for @flight_v2_search_adult.
  ///
  /// In en, this message translates to:
  /// **'Adult'**
  String get flight_v2_search_adult;

  /// No description provided for @flight_v2_search_child.
  ///
  /// In en, this message translates to:
  /// **'Child'**
  String get flight_v2_search_child;

  /// No description provided for @flight_v2_search_baby.
  ///
  /// In en, this message translates to:
  /// **'Baby'**
  String get flight_v2_search_baby;

  /// No description provided for @flight_v2_search_age_13_and_over.
  ///
  /// In en, this message translates to:
  /// **'Age 13 and over'**
  String get flight_v2_search_age_13_and_over;

  /// No description provided for @flight_v2_search_age_2_12.
  ///
  /// In en, this message translates to:
  /// **'Age 2-12'**
  String get flight_v2_search_age_2_12;

  /// No description provided for @flight_v2_search_under_age_2.
  ///
  /// In en, this message translates to:
  /// **'Under age 2'**
  String get flight_v2_search_under_age_2;

  /// No description provided for @flight_v2_search_show_error.
  ///
  /// In en, this message translates to:
  /// **'The number of babies cannot be greater than the number of adults'**
  String get flight_v2_search_show_error;

  /// No description provided for @flight_v2_search_find_direct_flights_only.
  ///
  /// In en, this message translates to:
  /// **'Find direct flights only'**
  String get flight_v2_search_find_direct_flights_only;

  /// No description provided for @flight_v2_search_look_up_reservation.
  ///
  /// In en, this message translates to:
  /// **'Look up reservation'**
  String get flight_v2_search_look_up_reservation;

  /// No description provided for @flight_v2_search_enter_your_reservation.
  ///
  /// In en, this message translates to:
  /// **'Enter your booking reference to look up your booking information'**
  String get flight_v2_search_enter_your_reservation;

  /// No description provided for @flight_v2_search_booking_reference.
  ///
  /// In en, this message translates to:
  /// **'Booking reference'**
  String get flight_v2_search_booking_reference;

  /// No description provided for @flight_v2_search_button_search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get flight_v2_search_button_search;

  /// No description provided for @flight_v2_search_title_booking_code.
  ///
  /// In en, this message translates to:
  /// **'Enter your booking reference to look up your flight booking'**
  String get flight_v2_search_title_booking_code;

  /// No description provided for @flight_v2_search_adult_child_baby.
  ///
  /// In en, this message translates to:
  /// **'1 Adult, 0 Child, 0 Baby'**
  String get flight_v2_search_adult_child_baby;

  /// No description provided for @flight_v2_search_seat_all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get flight_v2_search_seat_all;

  /// No description provided for @flight_v2_search_seat_economy.
  ///
  /// In en, this message translates to:
  /// **'Economy'**
  String get flight_v2_search_seat_economy;

  /// No description provided for @flight_v2_search_seat_business.
  ///
  /// In en, this message translates to:
  /// **'Business'**
  String get flight_v2_search_seat_business;

  /// No description provided for @flight_v2_search_seat_first.
  ///
  /// In en, this message translates to:
  /// **'First Class'**
  String get flight_v2_search_seat_first;

  /// No description provided for @flight_v2_search_not_found_airport.
  ///
  /// In en, this message translates to:
  /// **'Not found'**
  String get flight_v2_search_not_found_airport;

  /// No description provided for @flight_v2_search_error_not_found.
  ///
  /// In en, this message translates to:
  /// **'The requested data could not be found\nbut may be available in the future'**
  String get flight_v2_search_error_not_found;

  /// No description provided for @flight_v2_search_hot_line.
  ///
  /// In en, this message translates to:
  /// **'Customer Service Center Hotline'**
  String get flight_v2_search_hot_line;

  /// No description provided for @flight_v2_search_account_customer_care.
  ///
  /// In en, this message translates to:
  /// **'Customer Service Center Account'**
  String get flight_v2_search_account_customer_care;

  /// No description provided for @flight_v2_search_no_location.
  ///
  /// In en, this message translates to:
  /// **'Please select departure and destination'**
  String get flight_v2_search_no_location;

  /// No description provided for @flight_v2_booking_screen_have_apply_voucher_coupon_code.
  ///
  /// In en, this message translates to:
  /// **'The coupon code has been applied to the payment, see details below'**
  String get flight_v2_booking_screen_have_apply_voucher_coupon_code;

  /// No description provided for @flight_hand_note_no_result.
  ///
  /// In en, this message translates to:
  /// **'No result found'**
  String get flight_hand_note_no_result;

  /// No description provided for @flight_showcase_domestic_round_trip_step1.
  ///
  /// In en, this message translates to:
  /// **'Time is displayed with the lowest fare of the day'**
  String get flight_showcase_domestic_round_trip_step1;

  /// No description provided for @flight_showcase_domestic_round_trip_step2.
  ///
  /// In en, this message translates to:
  /// **'Swipe to both sides to reselect the flight date'**
  String get flight_showcase_domestic_round_trip_step2;

  /// No description provided for @flight_showcase_domestic_round_trip_step3.
  ///
  /// In en, this message translates to:
  /// **'Choose your departure flight'**
  String get flight_showcase_domestic_round_trip_step3;

  /// No description provided for @flight_showcase_domestic_round_trip_step4.
  ///
  /// In en, this message translates to:
  /// **'Choose your return flight'**
  String get flight_showcase_domestic_round_trip_step4;

  /// No description provided for @flight_showcase_domestic_round_trip_step5.
  ///
  /// In en, this message translates to:
  /// **'You can reselect departure and return flights at any time'**
  String get flight_showcase_domestic_round_trip_step5;

  /// No description provided for @flight_showcase_domestic_round_trip_step6.
  ///
  /// In en, this message translates to:
  /// **'You need to select enough flights before booking'**
  String get flight_showcase_domestic_round_trip_step6;

  /// No description provided for @flight_showcase_inter_round_trip_step1.
  ///
  /// In en, this message translates to:
  /// **'Choose a suitable flight journey for yourself'**
  String get flight_showcase_inter_round_trip_step1;

  /// No description provided for @flight_showcase_inter_round_trip_step1_desc.
  ///
  /// In en, this message translates to:
  /// **'A flight journey consists of a departure flight and a return flight'**
  String get flight_showcase_inter_round_trip_step1_desc;

  /// No description provided for @flight_showcase_place_from.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get flight_showcase_place_from;

  /// No description provided for @flight_showcase_place_to.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get flight_showcase_place_to;

  /// No description provided for @flight_showcase_tutorial.
  ///
  /// In en, this message translates to:
  /// **'Tutorial'**
  String get flight_showcase_tutorial;

  /// No description provided for @flight_showcase_back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get flight_showcase_back;

  /// No description provided for @flight_showcase_done.
  ///
  /// In en, this message translates to:
  /// **'Complete'**
  String get flight_showcase_done;

  /// No description provided for @flight_showcase_continue.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get flight_showcase_continue;

  /// No description provided for @flight_hand_note_detail_check_in_info_title.
  ///
  /// In en, this message translates to:
  /// **'Check-in info'**
  String get flight_hand_note_detail_check_in_info_title;

  /// No description provided for @flight_hand_note_detail_hotel_policy_title.
  ///
  /// In en, this message translates to:
  /// **'Hotel policy'**
  String get flight_hand_note_detail_hotel_policy_title;

  /// No description provided for @flight_hand_note_detail_guest_name_title.
  ///
  /// In en, this message translates to:
  /// **'Guest name: {guestName}'**
  String flight_hand_note_detail_guest_name_title(Object guestName);

  /// No description provided for @flight_v2_dialog_unavailable_ticket.
  ///
  /// In en, this message translates to:
  /// **'Flight is not available '**
  String get flight_v2_dialog_unavailable_ticket;

  /// No description provided for @flight_v2_dialog_choose_ticket.
  ///
  /// In en, this message translates to:
  /// **'You have selected the flight'**
  String get flight_v2_dialog_choose_ticket;

  /// No description provided for @flight_v2_dialog_from.
  ///
  /// In en, this message translates to:
  /// **'from'**
  String get flight_v2_dialog_from;

  /// No description provided for @flight_v2_dialog_time_take_off_flight.
  ///
  /// In en, this message translates to:
  /// **'Flight takeoff time'**
  String get flight_v2_dialog_time_take_off_flight;

  /// No description provided for @flight_v2_dialog_happening.
  ///
  /// In en, this message translates to:
  /// **'must occur'**
  String get flight_v2_dialog_happening;

  /// No description provided for @flight_v2_dialog_minimum_hour.
  ///
  /// In en, this message translates to:
  /// **'at least 02 hours'**
  String get flight_v2_dialog_minimum_hour;

  /// No description provided for @flight_v2_dialog_after_trip.
  ///
  /// In en, this message translates to:
  /// **'after the flight'**
  String get flight_v2_dialog_after_trip;

  /// No description provided for @flight_v2_dialog_landed.
  ///
  /// In en, this message translates to:
  /// **'landed.'**
  String get flight_v2_dialog_landed;

  /// No description provided for @flight_v2_dialog_choose_again_ticket.
  ///
  /// In en, this message translates to:
  /// **'Do you want to select another flight'**
  String get flight_v2_dialog_choose_again_ticket;

  /// No description provided for @flight_v2_ticket_choose_ticket_return.
  ///
  /// In en, this message translates to:
  /// **'Choose a return ticket'**
  String get flight_v2_ticket_choose_ticket_return;

  /// No description provided for @flight_v2_ticket_choose_ticket_departure.
  ///
  /// In en, this message translates to:
  /// **'Choose a departure ticket'**
  String get flight_v2_ticket_choose_ticket_departure;

  /// No description provided for @flight_v2_warning_back_when_hold_ticket_order.
  ///
  /// In en, this message translates to:
  /// **'Your order has been reserved. If you exit, your order will still be saved in the'**
  String get flight_v2_warning_back_when_hold_ticket_order;

  /// No description provided for @flight_v2_warning_back_when_hold_ticket_card.
  ///
  /// In en, this message translates to:
  /// **'Cart.'**
  String get flight_v2_warning_back_when_hold_ticket_card;

  /// No description provided for @flight_v2_warning_back_when_hold_ticket_payment_before.
  ///
  /// In en, this message translates to:
  /// **'You can pay for this order before'**
  String get flight_v2_warning_back_when_hold_ticket_payment_before;

  /// No description provided for @flight_v2_warning_back_when_hold_ticket_card_continue.
  ///
  /// In en, this message translates to:
  /// **'Do you want to continue ?'**
  String get flight_v2_warning_back_when_hold_ticket_card_continue;

  /// No description provided for @flight_v2_warning_back_when_hold_ticket_card_exit_order.
  ///
  /// In en, this message translates to:
  /// **'Exit order'**
  String get flight_v2_warning_back_when_hold_ticket_card_exit_order;

  /// No description provided for @flight_v2_warning_back_when_hold_ticket_card_message.
  ///
  /// In en, this message translates to:
  /// **'The order has been reserved, the order information cannot be changed. Please make payment to complete ticketing.'**
  String get flight_v2_warning_back_when_hold_ticket_card_message;

  /// No description provided for @flight_v2_warning_back_when_hold_ticket_hold_order.
  ///
  /// In en, this message translates to:
  /// **'The order has been reserved, the order information cannot be changed. Please pay before'**
  String get flight_v2_warning_back_when_hold_ticket_hold_order;

  /// No description provided for @flight_v2_warning_back_when_hold_ticket_out_ticket.
  ///
  /// In en, this message translates to:
  /// **'to complete ticketing'**
  String get flight_v2_warning_back_when_hold_ticket_out_ticket;

  /// No description provided for @flight_hand_note_detail_other_requirements_title.
  ///
  /// In en, this message translates to:
  /// **'Other requirements: '**
  String get flight_hand_note_detail_other_requirements_title;

  /// No description provided for @flight_hand_note_detail_utilities_service_title.
  ///
  /// In en, this message translates to:
  /// **'Utilities, room service'**
  String get flight_hand_note_detail_utilities_service_title;

  /// No description provided for @flight_hand_note_detail_checkin_checkout_time_title.
  ///
  /// In en, this message translates to:
  /// **'Check-in and check-out time'**
  String get flight_hand_note_detail_checkin_checkout_time_title;

  /// No description provided for @flight_v2_common_done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get flight_v2_common_done;

  /// No description provided for @flight_v2_detail_airline_operator_by.
  ///
  /// In en, this message translates to:
  /// **'Operated by {organization}'**
  String get flight_v2_detail_airline_operator_by;

  /// No description provided for @flight_v2_detail_airline_alert_transit.
  ///
  /// In en, this message translates to:
  /// **'Note: Passengers may be required to make customs clearance and submit their transit visa at the request of the host country.'**
  String get flight_v2_detail_airline_alert_transit;

  /// No description provided for @flight_v2_detail_airline_total_price.
  ///
  /// In en, this message translates to:
  /// **'Total price'**
  String get flight_v2_detail_airline_total_price;

  /// No description provided for @flight_v2_detail_airline_title_tax_and_fee.
  ///
  /// In en, this message translates to:
  /// **'(Taxes and fees included)'**
  String get flight_v2_detail_airline_title_tax_and_fee;

  /// No description provided for @flight_v2_detail_airline_button_add_ticket.
  ///
  /// In en, this message translates to:
  /// **'Add ticket'**
  String get flight_v2_detail_airline_button_add_ticket;

  /// No description provided for @flight_v2_detail_airline_button_change_ticket.
  ///
  /// In en, this message translates to:
  /// **'Change ticket'**
  String get flight_v2_detail_airline_button_change_ticket;

  /// No description provided for @flight_v2_detail_airline_button_booking_ticket.
  ///
  /// In en, this message translates to:
  /// **'Booking'**
  String get flight_v2_detail_airline_button_booking_ticket;

  /// No description provided for @flight_v2_detail_airline_departure_flight.
  ///
  /// In en, this message translates to:
  /// **'Departure flight'**
  String get flight_v2_detail_airline_departure_flight;

  /// No description provided for @flight_v2_detail_airline_return_flight.
  ///
  /// In en, this message translates to:
  /// **'Return flight'**
  String get flight_v2_detail_airline_return_flight;

  /// No description provided for @flight_v2_information_contact_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get flight_v2_information_contact_email;

  /// No description provided for @flight_v2_information_customer_title_full_name.
  ///
  /// In en, this message translates to:
  /// **'Full name: {fullName}'**
  String get flight_v2_information_customer_title_full_name;

  /// No description provided for @flight_v2_information_customer_title_gender.
  ///
  /// In en, this message translates to:
  /// **'Gender: {gender}'**
  String get flight_v2_information_customer_title_gender;

  /// No description provided for @flight_v2_information_customer_title_birth_day.
  ///
  /// In en, this message translates to:
  /// **'Date of birth: {birthDay}'**
  String get flight_v2_information_customer_title_birth_day;

  /// No description provided for @flight_v2_payment_include_note_payment.
  ///
  /// In en, this message translates to:
  /// **'(Note: Bank payment fee will be supported by {hahalolo} for {free} for users)'**
  String get flight_v2_payment_include_note_payment;

  /// No description provided for @flight_v2_payment_include_free_fee_payment.
  ///
  /// In en, this message translates to:
  /// **'FREE'**
  String get flight_v2_payment_include_free_fee_payment;

  /// No description provided for @flight_v2_payment_use_saved_info_user.
  ///
  /// In en, this message translates to:
  /// **'Use saved contact or payment information'**
  String get flight_v2_payment_use_saved_info_user;

  /// No description provided for @flight_v2_payment_success_thank_user.
  ///
  /// In en, this message translates to:
  /// **'Thank you for trusting and using {hahalolo}\'s services. If you have any questions or need help, please contact Hahalolo\'s {phone} support center for instructions.'**
  String get flight_v2_payment_success_thank_user;

  /// No description provided for @flight_v2_payment_success_notifier.
  ///
  /// In en, this message translates to:
  /// **'Your Booking request has been successfully processed {wasPayment}. You can check the itinerary details below.'**
  String get flight_v2_payment_success_notifier;

  /// No description provided for @flight_v2_payment_success_was_payment.
  ///
  /// In en, this message translates to:
  /// **'(Paid)'**
  String get flight_v2_payment_success_was_payment;

  /// No description provided for @flight_v2_payment_success_flight_information.
  ///
  /// In en, this message translates to:
  /// **'Flight information'**
  String get flight_v2_payment_success_flight_information;

  /// No description provided for @flight_v2_payment_success_outbound_flight_information.
  ///
  /// In en, this message translates to:
  /// **'Outbound flight information'**
  String get flight_v2_payment_success_outbound_flight_information;

  /// No description provided for @flight_v2_payment_success_return_flight_information.
  ///
  /// In en, this message translates to:
  /// **'Return flight information'**
  String get flight_v2_payment_success_return_flight_information;

  /// No description provided for @flight_v2_dialog_common_agree.
  ///
  /// In en, this message translates to:
  /// **'Agree'**
  String get flight_v2_dialog_common_agree;

  /// No description provided for @flight_v2_dialog_common_confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get flight_v2_dialog_common_confirm;

  /// No description provided for @flight_v2_dialog_common_skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get flight_v2_dialog_common_skip;

  /// No description provided for @flight_v2_dialog_common_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get flight_v2_dialog_common_cancel;

  /// No description provided for @flight_v2_dialog_common_exit.
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get flight_v2_dialog_common_exit;

  /// No description provided for @flight_v2_dialog_common_change_flight.
  ///
  /// In en, this message translates to:
  /// **'Agree'**
  String get flight_v2_dialog_common_change_flight;

  /// No description provided for @flight_v2_dialog_common_change_search.
  ///
  /// In en, this message translates to:
  /// **'Change search'**
  String get flight_v2_dialog_common_change_search;

  /// No description provided for @flight_v2_dialog_title_change_information.
  ///
  /// In en, this message translates to:
  /// **'Change information'**
  String get flight_v2_dialog_title_change_information;

  /// No description provided for @flight_v2_dialog_sub_title_change_information.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to change the search information'**
  String get flight_v2_dialog_sub_title_change_information;

  /// No description provided for @flight_v2_dialog_message_change_information.
  ///
  /// In en, this message translates to:
  /// **'If you agree to change the search information, all previous data will be deleted'**
  String get flight_v2_dialog_message_change_information;

  /// No description provided for @flight_v2_dialog_title_not_available.
  ///
  /// In en, this message translates to:
  /// **'Flight is not available'**
  String get flight_v2_dialog_title_not_available;

  /// No description provided for @flight_v2_dialog_message_not_available.
  ///
  /// In en, this message translates to:
  /// **'Sorry, the flight you have selected is currently unavailable. Please {chooseOtherFlight}.'**
  String get flight_v2_dialog_message_not_available;

  /// No description provided for @flight_v2_dialog_message_not_available_choose_other_flight.
  ///
  /// In en, this message translates to:
  /// **'choose another flight or change your search'**
  String get flight_v2_dialog_message_not_available_choose_other_flight;

  /// No description provided for @flight_v2_dialog_title_exceed_time_allow.
  ///
  /// In en, this message translates to:
  /// **'The flight exceeded the time allowed'**
  String get flight_v2_dialog_title_exceed_time_allow;

  /// No description provided for @flight_v2_dialog_message_exceed_time_allow.
  ///
  /// In en, this message translates to:
  /// **'The flight you selected has exceeded its reservation time. Please contact {hahalolo} via hotline {hotline} or {changeOtherFlight}.'**
  String get flight_v2_dialog_message_exceed_time_allow;

  /// No description provided for @flight_v2_dialog_message_exceed_time_allow_change_other_flight.
  ///
  /// In en, this message translates to:
  /// **'change search for new flight'**
  String get flight_v2_dialog_message_exceed_time_allow_change_other_flight;

  /// No description provided for @flight_v2_dialog_title_delete_account.
  ///
  /// In en, this message translates to:
  /// **'Delete payment account'**
  String get flight_v2_dialog_title_delete_account;

  /// No description provided for @flight_v2_dialog_sub_title_delete_account.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this payment account?'**
  String get flight_v2_dialog_sub_title_delete_account;

  /// No description provided for @flight_v2_dialog_message_delete_account.
  ///
  /// In en, this message translates to:
  /// **'The account will no longer appear in the payment account selection.'**
  String get flight_v2_dialog_message_delete_account;

  /// No description provided for @flight_v2_dialog_title_change_ticket_price.
  ///
  /// In en, this message translates to:
  /// **'Ticket price change'**
  String get flight_v2_dialog_title_change_ticket_price;

  /// No description provided for @flight_v2_dialog_message_change_ticket_price.
  ///
  /// In en, this message translates to:
  /// **'Total order has changed from {oldPrice} to {newPrice}. Please re-select Discount Code/Coins/Points if available.'**
  String get flight_v2_dialog_message_change_ticket_price;

  /// No description provided for @flight_v2_dialog_title_min_support_payment.
  ///
  /// In en, this message translates to:
  /// **'The order is not eligible for payment'**
  String get flight_v2_dialog_title_min_support_payment;

  /// No description provided for @flight_v2_dialog_message_min_support_payment.
  ///
  /// In en, this message translates to:
  /// **'Eligible orders have a total payment of {minRange} or a minimum of {maxRange}. You can change the Coupon Code, Coins or Points to qualify for payment'**
  String get flight_v2_dialog_message_min_support_payment;

  /// No description provided for @flight_v2_dialog_title_order_not_found.
  ///
  /// In en, this message translates to:
  /// **'Notify'**
  String get flight_v2_dialog_title_order_not_found;

  /// No description provided for @flight_v2_dialog_message_order_not_found.
  ///
  /// In en, this message translates to:
  /// **'Order not found'**
  String get flight_v2_dialog_message_order_not_found;

  /// No description provided for @flight_v2_dialog_title_exit_order.
  ///
  /// In en, this message translates to:
  /// **'Exit order'**
  String get flight_v2_dialog_title_exit_order;

  /// No description provided for @flight_v2_dialog_message_exit_order_cart.
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get flight_v2_dialog_message_exit_order_cart;

  /// No description provided for @flight_v2_dialog_title_payment_error_default.
  ///
  /// In en, this message translates to:
  /// **'Payment failed'**
  String get flight_v2_dialog_title_payment_error_default;

  /// No description provided for @flight_v2_dialog_message_payment_error_default_on_process_payment.
  ///
  /// In en, this message translates to:
  /// **'An error occurred during payment. Please try again.'**
  String get flight_v2_dialog_message_payment_error_default_on_process_payment;

  /// No description provided for @flight_v2_dialog_message_payment_error_default_cskh.
  ///
  /// In en, this message translates to:
  /// **'Contact customer service Hahalolo {here}.'**
  String get flight_v2_dialog_message_payment_error_default_cskh;

  /// No description provided for @flight_v2_dialog_message_payment_error_here.
  ///
  /// In en, this message translates to:
  /// **'here'**
  String get flight_v2_dialog_message_payment_error_here;

  /// No description provided for @flight_v2_dialog_title_voucher_fee_change.
  ///
  /// In en, this message translates to:
  /// **'Ticket price change'**
  String get flight_v2_dialog_title_voucher_fee_change;

  /// No description provided for @flight_v2_dialog_message_voucher_fee_change.
  ///
  /// In en, this message translates to:
  /// **'The fare has changed from {oldPrice} to {newPrice}. Contact Customer Service Hahalolo {here} for help.'**
  String get flight_v2_dialog_message_voucher_fee_change;

  /// No description provided for @flight_v2_dialog_message_voucher_fee_change_here.
  ///
  /// In en, this message translates to:
  /// **'here'**
  String get flight_v2_dialog_message_voucher_fee_change_here;

  /// No description provided for @flight_v2_dialog_title_system_error.
  ///
  /// In en, this message translates to:
  /// **'Notify'**
  String get flight_v2_dialog_title_system_error;

  /// No description provided for @flight_v2_dialog_message_system_error.
  ///
  /// In en, this message translates to:
  /// **'Your order has been successfully paid and will be updated in your notebook shortly.'**
  String get flight_v2_dialog_message_system_error;

  /// No description provided for @flight_v2_dialog_title_voucher_not_available.
  ///
  /// In en, this message translates to:
  /// **'Notify'**
  String get flight_v2_dialog_title_voucher_not_available;

  /// No description provided for @flight_v2_dialog_message_voucher_not_available.
  ///
  /// In en, this message translates to:
  /// **'Discount code not available. Please check again'**
  String get flight_v2_dialog_message_voucher_not_available;

  /// No description provided for @flight_v2_dialog_title_point_not_available.
  ///
  /// In en, this message translates to:
  /// **'Notify'**
  String get flight_v2_dialog_title_point_not_available;

  /// No description provided for @flight_v2_dialog_message_point_not_available.
  ///
  /// In en, this message translates to:
  /// **'Points are not available. Please check again'**
  String get flight_v2_dialog_message_point_not_available;

  /// No description provided for @flight_v2_dialog_title_coin_not_available.
  ///
  /// In en, this message translates to:
  /// **'Notify'**
  String get flight_v2_dialog_title_coin_not_available;

  /// No description provided for @flight_v2_dialog_message_coin_not_available.
  ///
  /// In en, this message translates to:
  /// **'Coins are not available. Please check again'**
  String get flight_v2_dialog_message_coin_not_available;

  /// No description provided for @flight_v2_dialog_halo_support.
  ///
  /// In en, this message translates to:
  /// **'{message}. Contact customer service Hahalolo {here}.'**
  String get flight_v2_dialog_halo_support;

  /// No description provided for @flight_v2_dialog_halo_support_here.
  ///
  /// In en, this message translates to:
  /// **'here'**
  String get flight_v2_dialog_halo_support_here;

  /// No description provided for @flight_v2_dialog_title_stripe_error.
  ///
  /// In en, this message translates to:
  /// **'Notify'**
  String get flight_v2_dialog_title_stripe_error;

  /// No description provided for @flight_v2_price_info_read_more.
  ///
  /// In en, this message translates to:
  /// **'View more information'**
  String get flight_v2_price_info_read_more;

  /// No description provided for @flight_v2_price_info_total_payment.
  ///
  /// In en, this message translates to:
  /// **'Total payment'**
  String get flight_v2_price_info_total_payment;

  /// No description provided for @flight_v2_price_info_before_payment.
  ///
  /// In en, this message translates to:
  /// **'Prepayment amount'**
  String get flight_v2_price_info_before_payment;

  /// No description provided for @flight_v2_information_bottom_sheet_adult.
  ///
  /// In en, this message translates to:
  /// **'{count} x Adult'**
  String flight_v2_information_bottom_sheet_adult(Object count);

  /// No description provided for @flight_v2_information_bottom_sheet_children.
  ///
  /// In en, this message translates to:
  /// **'{count} x Child'**
  String flight_v2_information_bottom_sheet_children(Object count);

  /// No description provided for @flight_v2_information_bottom_sheet_infant.
  ///
  /// In en, this message translates to:
  /// **'{count} x Infant'**
  String flight_v2_information_bottom_sheet_infant(Object count);

  /// No description provided for @flight_v2_information_customer_info_adult.
  ///
  /// In en, this message translates to:
  /// **'Adult information {index}'**
  String flight_v2_information_customer_info_adult(Object index);

  /// No description provided for @flight_v2_information_customer_info_child.
  ///
  /// In en, this message translates to:
  /// **'Children information {index}'**
  String flight_v2_information_customer_info_child(Object index);

  /// No description provided for @flight_v2_information_customer_info_infant.
  ///
  /// In en, this message translates to:
  /// **'Infant information {index}'**
  String flight_v2_information_customer_info_infant(Object index);

  /// No description provided for @flight_v2_information_adult_title.
  ///
  /// In en, this message translates to:
  /// **'{count} Adult'**
  String flight_v2_information_adult_title(Object count);

  /// No description provided for @flight_v2_information_child_title.
  ///
  /// In en, this message translates to:
  /// **'{count} Children'**
  String flight_v2_information_child_title(Object count);

  /// No description provided for @flight_v2_information_infant_title.
  ///
  /// In en, this message translates to:
  /// **'{count} Infant'**
  String flight_v2_information_infant_title(Object count);

  /// No description provided for @flight_v2_detail_airline_alert_transit_time.
  ///
  /// In en, this message translates to:
  /// **'A transit time of about {time} in {place}'**
  String flight_v2_detail_airline_alert_transit_time(Object time, Object place);

  /// No description provided for @flight_v2_detail_airline_tax_and_fee.
  ///
  /// In en, this message translates to:
  /// **'Tax and fee (x{count})'**
  String flight_v2_detail_airline_tax_and_fee(Object count);

  /// No description provided for @flight_v2_detail_airline_price_basic.
  ///
  /// In en, this message translates to:
  /// **'Base fare (x{count})'**
  String flight_v2_detail_airline_price_basic(Object count);

  /// No description provided for @flight_v2_dialog_message_exit_order.
  ///
  /// In en, this message translates to:
  /// **'Your flight reservation is being made. If you exit, your order will still be saved in {cart}. You can pay for this order before {time}'**
  String get flight_v2_dialog_message_exit_order;

  /// No description provided for @flight_v2_dialog_message_exit_order_no_hold.
  ///
  /// In en, this message translates to:
  /// **'Your flight reservation has not been made. If you exit, your order will still be saved in {cart}. You can make a payment to complete the ticket issuance'**
  String get flight_v2_dialog_message_exit_order_no_hold;

  /// No description provided for @flight_v2_payment_back_from_payment.
  ///
  /// In en, this message translates to:
  /// **'Your flight reservation is being made. You cannot change the order information. Please make a payment before {time} to complete the ticket issuance.'**
  String get flight_v2_payment_back_from_payment;

  /// No description provided for @flight_v2_payment_back_from_payment_no_hold.
  ///
  /// In en, this message translates to:
  /// **'Your flight reservation has not been made. Please make a payment to complete the reservation and ticket issuance.'**
  String get flight_v2_payment_back_from_payment_no_hold;

  /// No description provided for @flight_v2_search_code_no_reservation_yet.
  ///
  /// In en, this message translates to:
  /// **'Not reservation yet'**
  String get flight_v2_search_code_no_reservation_yet;

  /// No description provided for @flight_check_the_details.
  ///
  /// In en, this message translates to:
  /// **'. You can check the details below.'**
  String get flight_check_the_details;

  /// No description provided for @flight_v2_notification_cant_click_when_loading.
  ///
  /// In en, this message translates to:
  /// **'Dữ liệu chuyến bay đang được cập nhật. Vui lòng đợi trong giây lát '**
  String get flight_v2_notification_cant_click_when_loading;

  /// No description provided for @tour_handnote_tab_all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get tour_handnote_tab_all;

  /// No description provided for @tour_handnote_tab_awaiting.
  ///
  /// In en, this message translates to:
  /// **'Awaiting confirmation'**
  String get tour_handnote_tab_awaiting;

  /// No description provided for @tour_handnote_tab_awaiting_fulfilment.
  ///
  /// In en, this message translates to:
  /// **'Awaiting fulfilment'**
  String get tour_handnote_tab_awaiting_fulfilment;

  /// No description provided for @tour_handnote_tab_ongoing.
  ///
  /// In en, this message translates to:
  /// **'OnGoing'**
  String get tour_handnote_tab_ongoing;

  /// No description provided for @tour_handnote_tab_completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get tour_handnote_tab_completed;

  /// No description provided for @tour_handnote_tab_canceled.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get tour_handnote_tab_canceled;

  /// No description provided for @tour_handnote_total_amount_of_tour.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get tour_handnote_total_amount_of_tour;

  /// No description provided for @tour_booking_bottom_detail_price_error.
  ///
  /// In en, this message translates to:
  /// **'Card information is incorrect. Please check again'**
  String get tour_booking_bottom_detail_price_error;

  /// No description provided for @tour_booking_update_item_cart_msg_error_cannot_apply.
  ///
  /// In en, this message translates to:
  /// **'Discount code cannot be applied'**
  String get tour_booking_update_item_cart_msg_error_cannot_apply;

  /// No description provided for @tour_booking_update_item_cart_msg_error_Invalid_code.
  ///
  /// In en, this message translates to:
  /// **'Invalid coupon code'**
  String get tour_booking_update_item_cart_msg_error_Invalid_code;

  /// No description provided for @tour_booking_update_item_cart_msg_error_total_amount_not_eligible.
  ///
  /// In en, this message translates to:
  /// **'The order is not eligible for a coupon code. Please check and try again.'**
  String get tour_booking_update_item_cart_msg_error_total_amount_not_eligible;

  /// No description provided for @tour_booking_update_item_cart_action_message.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get tour_booking_update_item_cart_action_message;

  /// No description provided for @tour_booking_bottom_view_error.
  ///
  /// In en, this message translates to:
  /// **'Please complete passenger information or request assistance from to enter the following passenger information'**
  String get tour_booking_bottom_view_error;

  /// No description provided for @tour_booking_on_start_payment_message.
  ///
  /// In en, this message translates to:
  /// **'Sorry, the departure date you selected is already sold out. Please choose another departure date.'**
  String get tour_booking_on_start_payment_message;

  /// No description provided for @tour_booking_update_item_cart_title.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get tour_booking_update_item_cart_title;

  /// No description provided for @tour_booking_update_item_cart_msg_error_last.
  ///
  /// In en, this message translates to:
  /// **'An error occurred, please try again later.'**
  String get tour_booking_update_item_cart_msg_error_last;

  /// No description provided for @tour_booking_screen_booking_information.
  ///
  /// In en, this message translates to:
  /// **'Tour booking information'**
  String get tour_booking_screen_booking_information;

  /// No description provided for @tour_booking_screen_payment_methods.
  ///
  /// In en, this message translates to:
  /// **'Payment option'**
  String get tour_booking_screen_payment_methods;

  /// No description provided for @tour_booking_screen_textspan_note.
  ///
  /// In en, this message translates to:
  /// **'(Note: Payment fee'**
  String get tour_booking_screen_textspan_note;

  /// No description provided for @tour_booking_screen_accept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get tour_booking_screen_accept;

  /// No description provided for @tour_booking_screen_coupon_code.
  ///
  /// In en, this message translates to:
  /// **'Coupon code'**
  String get tour_booking_screen_coupon_code;

  /// No description provided for @tour_booking_screen_insert_code.
  ///
  /// In en, this message translates to:
  /// **'Enter code'**
  String get tour_booking_screen_insert_code;

  /// No description provided for @tour_booking_loading_message.
  ///
  /// In en, this message translates to:
  /// **'Retrieving order information, please wait a moment'**
  String get tour_booking_loading_message;

  /// No description provided for @tour_booking_last_name.
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get tour_booking_last_name;

  /// No description provided for @tour_booking_middle_and_first_name.
  ///
  /// In en, this message translates to:
  /// **'Middle & First/Given name'**
  String get tour_booking_middle_and_first_name;

  /// No description provided for @tour_booking_or_detail_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get tour_booking_or_detail_phone_number;

  /// No description provided for @tour_booking_or_detail_address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get tour_booking_or_detail_address;

  /// No description provided for @tour_booking_province_city.
  ///
  /// In en, this message translates to:
  /// **'Province/City'**
  String get tour_booking_province_city;

  /// No description provided for @tour_booking_country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get tour_booking_country;

  /// No description provided for @tour_booking_title_booking_information.
  ///
  /// In en, this message translates to:
  /// **'Booking information'**
  String get tour_booking_title_booking_information;

  /// No description provided for @tour_booking_screen_text_accept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get tour_booking_screen_text_accept;

  /// No description provided for @tour_booking_screen_default_msgError.
  ///
  /// In en, this message translates to:
  /// **'An error occurred. Please try again'**
  String get tour_booking_screen_default_msgError;

  /// No description provided for @tour_booking_screen_on_failed_error_2008.
  ///
  /// In en, this message translates to:
  /// **'The tour schedule by month you selected is not available right now. Please select another tour schedule.'**
  String get tour_booking_screen_on_failed_error_2008;

  /// No description provided for @tour_booking_screen_on_failed_error_2202.
  ///
  /// In en, this message translates to:
  /// **'The page hasn\'t been published or you haven\'t set up ages.'**
  String get tour_booking_screen_on_failed_error_2202;

  /// No description provided for @tour_booking_screen_on_failed_error_2301.
  ///
  /// In en, this message translates to:
  /// **'Tour is not available.'**
  String get tour_booking_screen_on_failed_error_2301;

  /// No description provided for @tour_booking_screen_on_failed_error_2303.
  ///
  /// In en, this message translates to:
  /// **'The tour does not belong to the page.'**
  String get tour_booking_screen_on_failed_error_2303;

  /// No description provided for @tour_booking_screen_on_failed_error_2801.
  ///
  /// In en, this message translates to:
  /// **'You need to book the tour {numberDay} days before departure date. Please choose another departure date.'**
  String tour_booking_screen_on_failed_error_2801(Object numberDay);

  /// No description provided for @tour_booking_screen_on_failed_error_2802.
  ///
  /// In en, this message translates to:
  /// **'The tour departure time you choose is shorter or longer than our regulations. Please choose a tour with a suitable departure time.'**
  String get tour_booking_screen_on_failed_error_2802;

  /// No description provided for @tour_booking_screen_content_apply_voucher_failed_msg_error.
  ///
  /// In en, this message translates to:
  /// **'{msgErr}. Please contact Hahalolo\'s Customer Service Center '**
  String tour_booking_screen_content_apply_voucher_failed_msg_error(Object msgErr);

  /// No description provided for @tour_booking_screen_content_apply_voucher_failed_here.
  ///
  /// In en, this message translates to:
  /// **'here '**
  String get tour_booking_screen_content_apply_voucher_failed_here;

  /// No description provided for @tour_booking_screen_content_apply_voucher_failed_help.
  ///
  /// In en, this message translates to:
  /// **'for assistance.'**
  String get tour_booking_screen_content_apply_voucher_failed_help;

  /// No description provided for @tour_booking_screen_item_apply_coin_view_action_view_detail.
  ///
  /// In en, this message translates to:
  /// **'The maximum number of coins that can be used for this order.'**
  String get tour_booking_screen_item_apply_coin_view_action_view_detail;

  /// No description provided for @tour_booking_screen_item_apply_coin_view_content_use.
  ///
  /// In en, this message translates to:
  /// **'Use '**
  String get tour_booking_screen_item_apply_coin_view_content_use;

  /// No description provided for @tour_booking_screen_item_apply_coin_view_content_number_coin.
  ///
  /// In en, this message translates to:
  /// **'{number} Coins '**
  String tour_booking_screen_item_apply_coin_view_content_number_coin(Object number);

  /// No description provided for @tour_booking_screen_item_apply_coin_view_content_to_pay.
  ///
  /// In en, this message translates to:
  /// **'for payment.'**
  String get tour_booking_screen_item_apply_coin_view_content_to_pay;

  /// No description provided for @tour_booking_screen_item_apply_coin_view_content_corresponding.
  ///
  /// In en, this message translates to:
  /// **'(Corresponding to '**
  String get tour_booking_screen_item_apply_coin_view_content_corresponding;

  /// No description provided for @tour_booking_success_text_done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get tour_booking_success_text_done;

  /// No description provided for @tour_booking_success_header_booking_success.
  ///
  /// In en, this message translates to:
  /// **'Booking successful'**
  String get tour_booking_success_header_booking_success;

  /// No description provided for @tour_booking_success_header_textspan_reservation_success.
  ///
  /// In en, this message translates to:
  /// **'Your Booking request has been successfully made'**
  String get tour_booking_success_header_textspan_reservation_success;

  /// No description provided for @tour_booking_success_header_textspan_paid.
  ///
  /// In en, this message translates to:
  /// **' (Paid).'**
  String get tour_booking_success_header_textspan_paid;

  /// No description provided for @tour_booking_success_header_textspan_itinerary_details.
  ///
  /// In en, this message translates to:
  /// **'You can check the itinerary details below.'**
  String get tour_booking_success_header_textspan_itinerary_details;

  /// No description provided for @tour_booking_success_title_tour_information.
  ///
  /// In en, this message translates to:
  /// **'Tour information'**
  String get tour_booking_success_title_tour_information;

  /// No description provided for @tour_booking_success_tour_information_tour_name.
  ///
  /// In en, this message translates to:
  /// **'Tour name'**
  String get tour_booking_success_tour_information_tour_name;

  /// No description provided for @tour_booking_success_tour_information_departure.
  ///
  /// In en, this message translates to:
  /// **'Departure'**
  String get tour_booking_success_tour_information_departure;

  /// No description provided for @tour_booking_success_tour_information_departure_date.
  ///
  /// In en, this message translates to:
  /// **'Departure date'**
  String get tour_booking_success_tour_information_departure_date;

  /// No description provided for @tour_booking_success_tour_information_end_date.
  ///
  /// In en, this message translates to:
  /// **'End date'**
  String get tour_booking_success_tour_information_end_date;

  /// No description provided for @tour_booking_success_tour_information_Number_of_days.
  ///
  /// In en, this message translates to:
  /// **'Number of days'**
  String get tour_booking_success_tour_information_Number_of_days;

  /// No description provided for @tour_booking_success_tour_information_passengers.
  ///
  /// In en, this message translates to:
  /// **'Number of passengers'**
  String get tour_booking_success_tour_information_passengers;

  /// No description provided for @tour_booking_success_tour_information_detail_Passengers.
  ///
  /// In en, this message translates to:
  /// **'1 adult'**
  String get tour_booking_success_tour_information_detail_Passengers;

  /// No description provided for @tour_booking_success_title_contact_information.
  ///
  /// In en, this message translates to:
  /// **'Contact Information'**
  String get tour_booking_success_title_contact_information;

  /// No description provided for @tour_booking_success_contact_information_full_name.
  ///
  /// In en, this message translates to:
  /// **'Full name: '**
  String get tour_booking_success_contact_information_full_name;

  /// No description provided for @tour_booking_success_contact_information_email.
  ///
  /// In en, this message translates to:
  /// **'Email: '**
  String get tour_booking_success_contact_information_email;

  /// No description provided for @tour_booking_success_contact_information_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone number: '**
  String get tour_booking_success_contact_information_phone_number;

  /// No description provided for @tour_booking_success_contact_information_address.
  ///
  /// In en, this message translates to:
  /// **'Address:'**
  String get tour_booking_success_contact_information_address;

  /// No description provided for @tour_booking_success_title_installment_information.
  ///
  /// In en, this message translates to:
  /// **'Installment order information'**
  String get tour_booking_success_title_installment_information;

  /// No description provided for @tour_booking_success_installment_information_total_order_value.
  ///
  /// In en, this message translates to:
  /// **'Total order value:'**
  String get tour_booking_success_installment_information_total_order_value;

  /// No description provided for @tour_booking_success_installment_information_prepaid_rate.
  ///
  /// In en, this message translates to:
  /// **'Prepaid rate: '**
  String get tour_booking_success_installment_information_prepaid_rate;

  /// No description provided for @tour_booking_success_installment_information_prepayment_amount.
  ///
  /// In en, this message translates to:
  /// **'Prepayment amount: '**
  String get tour_booking_success_installment_information_prepayment_amount;

  /// No description provided for @tour_booking_success_installment_information_remaining_amount.
  ///
  /// In en, this message translates to:
  /// **'Remaining balance:'**
  String get tour_booking_success_installment_information_remaining_amount;

  /// No description provided for @tour_booking_success_installment_information_conversion_information.
  ///
  /// In en, this message translates to:
  /// **'Information conversion fee:'**
  String get tour_booking_success_installment_information_conversion_information;

  /// No description provided for @tour_booking_success_installment_information_banking_fee.
  ///
  /// In en, this message translates to:
  /// **'Bank fee:'**
  String get tour_booking_success_installment_information_banking_fee;

  /// No description provided for @tour_booking_success_installment_information_installment_interest_rate.
  ///
  /// In en, this message translates to:
  /// **'Installment interest rate (0%):'**
  String get tour_booking_success_installment_information_installment_interest_rate;

  /// No description provided for @tour_booking_success_installment_information_installment_interest_month.
  ///
  /// In en, this message translates to:
  /// **'Installment interest (month):'**
  String get tour_booking_success_installment_information_installment_interest_month;

  /// No description provided for @tour_booking_success_installment_information_total_amount.
  ///
  /// In en, this message translates to:
  /// **'Total installment payment:'**
  String get tour_booking_success_installment_information_total_amount;

  /// No description provided for @tour_booking_success_installment_information_payment_term.
  ///
  /// In en, this message translates to:
  /// **'Installment tenor (month):'**
  String get tour_booking_success_installment_information_payment_term;

  /// No description provided for @tour_booking_success_installment_information_payment_term_detail.
  ///
  /// In en, this message translates to:
  /// **'{month} months'**
  String tour_booking_success_installment_information_payment_term_detail(Object month);

  /// No description provided for @tour_booking_success_installment_information_monthly_amount.
  ///
  /// In en, this message translates to:
  /// **'Monthly installment amount:'**
  String get tour_booking_success_installment_information_monthly_amount;

  /// No description provided for @tour_booking_success_installment_information_next_installment_period.
  ///
  /// In en, this message translates to:
  /// **'Next installment tenor'**
  String get tour_booking_success_installment_information_next_installment_period;

  /// No description provided for @tour_booking_success_title_transaction_information.
  ///
  /// In en, this message translates to:
  /// **'Transaction information'**
  String get tour_booking_success_title_transaction_information;

  /// No description provided for @tour_booking_success_transaction_information_tour_id.
  ///
  /// In en, this message translates to:
  /// **'Tour ID: '**
  String get tour_booking_success_transaction_information_tour_id;

  /// No description provided for @tour_booking_success_transaction_information_booking_code.
  ///
  /// In en, this message translates to:
  /// **'Booking code: '**
  String get tour_booking_success_transaction_information_booking_code;

  /// No description provided for @tour_booking_success_transaction_information_total_payment.
  ///
  /// In en, this message translates to:
  /// **'Total payment: '**
  String get tour_booking_success_transaction_information_total_payment;

  /// No description provided for @tour_booking_success_transaction_information_payer.
  ///
  /// In en, this message translates to:
  /// **'Payer: '**
  String get tour_booking_success_transaction_information_payer;

  /// No description provided for @tour_booking_success_transaction_information_address.
  ///
  /// In en, this message translates to:
  /// **'Address:'**
  String get tour_booking_success_transaction_information_address;

  /// No description provided for @tour_booking_success_transaction_information_content_billing.
  ///
  /// In en, this message translates to:
  /// **'Payment content: '**
  String get tour_booking_success_transaction_information_content_billing;

  /// No description provided for @tour_booking_success_transaction_information_order_payment.
  ///
  /// In en, this message translates to:
  /// **'Order payment'**
  String get tour_booking_success_transaction_information_order_payment;

  /// No description provided for @tour_booking_success_transaction_information_order_advance.
  ///
  /// In en, this message translates to:
  /// **' Installment order prepayment'**
  String get tour_booking_success_transaction_information_order_advance;

  /// No description provided for @tour_booking_success_textspan_footer_thanks.
  ///
  /// In en, this message translates to:
  /// **'   Thank you for your trust in Hahalolo\'s service. '**
  String get tour_booking_success_textspan_footer_thanks;

  /// No description provided for @tour_booking_success_textspan_footer_doubt.
  ///
  /// In en, this message translates to:
  /// **'If you have any questions or need further assistance, please contact Hahalolo Help Center '**
  String get tour_booking_success_textspan_footer_doubt;

  /// No description provided for @tour_booking_success_textspan_footer_last_text.
  ///
  /// In en, this message translates to:
  /// **'for instructions.'**
  String get tour_booking_success_textspan_footer_last_text;

  /// No description provided for @tour_booking_success_bottomview_view_details.
  ///
  /// In en, this message translates to:
  /// **'View details'**
  String get tour_booking_success_bottomview_view_details;

  /// No description provided for @tour_booking_success_bottomview_new_booking.
  ///
  /// In en, this message translates to:
  /// **'Book new'**
  String get tour_booking_success_bottomview_new_booking;

  /// No description provided for @tour_booking_title_info_detail_tour.
  ///
  /// In en, this message translates to:
  /// **'Tour details'**
  String get tour_booking_title_info_detail_tour;

  /// No description provided for @tour_booking_info_detail_tour_title_info_tour.
  ///
  /// In en, this message translates to:
  /// **'Information'**
  String get tour_booking_info_detail_tour_title_info_tour;

  /// No description provided for @tour_booking_info_detail_tour_info_tour_starttext_tour_name.
  ///
  /// In en, this message translates to:
  /// **'Tour name'**
  String get tour_booking_info_detail_tour_info_tour_starttext_tour_name;

  /// No description provided for @tour_booking_info_detail_tour_info_tour_endtext_discover.
  ///
  /// In en, this message translates to:
  /// **'Phu Quy Island Discovery'**
  String get tour_booking_info_detail_tour_info_tour_endtext_discover;

  /// No description provided for @tour_booking_or_detail_tour_id.
  ///
  /// In en, this message translates to:
  /// **'Tour ID'**
  String get tour_booking_or_detail_tour_id;

  /// No description provided for @tour_booking_or_detail_tour_time.
  ///
  /// In en, this message translates to:
  /// **'Times'**
  String get tour_booking_or_detail_tour_time;

  /// No description provided for @tour_booking_or_detail_departure_date.
  ///
  /// In en, this message translates to:
  /// **'Departure date'**
  String get tour_booking_or_detail_departure_date;

  /// No description provided for @tour_booking_info_detail_tour_info_tour_end_date.
  ///
  /// In en, this message translates to:
  /// **'End date'**
  String get tour_booking_info_detail_tour_info_tour_end_date;

  /// No description provided for @tour_booking_or_detail_tour_departure.
  ///
  /// In en, this message translates to:
  /// **'Departure'**
  String get tour_booking_or_detail_tour_departure;

  /// No description provided for @tour_booking_info_detail_tour_info_tour_ending_location.
  ///
  /// In en, this message translates to:
  /// **'Destination'**
  String get tour_booking_info_detail_tour_info_tour_ending_location;

  /// No description provided for @tour_booking_info_detail_tour_info_tour_starttext_tour_type.
  ///
  /// In en, this message translates to:
  /// **'Tour type'**
  String get tour_booking_info_detail_tour_info_tour_starttext_tour_type;

  /// No description provided for @tour_booking_info_detail_tour_info_tour_description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get tour_booking_info_detail_tour_info_tour_description;

  /// No description provided for @tour_booking_info_detail_tour_title_table_price.
  ///
  /// In en, this message translates to:
  /// **'Tour price list'**
  String get tour_booking_info_detail_tour_title_table_price;

  /// No description provided for @tour_booking_starttext_adult.
  ///
  /// In en, this message translates to:
  /// **'Adult'**
  String get tour_booking_starttext_adult;

  /// No description provided for @tour_booking_starttext_child.
  ///
  /// In en, this message translates to:
  /// **'Child'**
  String get tour_booking_starttext_child;

  /// No description provided for @tour_booking_starttext_young_child.
  ///
  /// In en, this message translates to:
  /// **'Young child'**
  String get tour_booking_starttext_young_child;

  /// No description provided for @tour_booking_starttext_baby.
  ///
  /// In en, this message translates to:
  /// **'Baby'**
  String get tour_booking_starttext_baby;

  /// No description provided for @tour_booking_info_detail_tour_title_tour_listpart.
  ///
  /// In en, this message translates to:
  /// **'List of parts'**
  String get tour_booking_info_detail_tour_title_tour_listpart;

  /// No description provided for @tour_booking_info_detail_tour_title_separate_regulations.
  ///
  /// In en, this message translates to:
  /// **'Regulations information'**
  String get tour_booking_info_detail_tour_title_separate_regulations;

  /// No description provided for @tour_booking_info_detail_tour_title_privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Private regulations'**
  String get tour_booking_info_detail_tour_title_privacy_policy;

  /// No description provided for @tour_booking_info_detail_tour_title_installment_policy.
  ///
  /// In en, this message translates to:
  /// **'Installment plan'**
  String get tour_booking_info_detail_tour_title_installment_policy;

  /// No description provided for @tour_booking_bottom_detail_price_collapsed_have_info_item_cart.
  ///
  /// In en, this message translates to:
  /// **'Total amount'**
  String get tour_booking_bottom_detail_price_collapsed_have_info_item_cart;

  /// No description provided for @tour_booking_bottom_detail_price_collapsed_dont_have_info_item_cart.
  ///
  /// In en, this message translates to:
  /// **'Prepaid amount'**
  String get tour_booking_bottom_detail_price_collapsed_dont_have_info_item_cart;

  /// No description provided for @tour_booking_bottom_detail_price_collapsed_pay.
  ///
  /// In en, this message translates to:
  /// **'Pay'**
  String get tour_booking_bottom_detail_price_collapsed_pay;

  /// No description provided for @tour_booking_bottom_detail_price_bottom_starttext_service.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get tour_booking_bottom_detail_price_bottom_starttext_service;

  /// No description provided for @tour_booking_bottom_detail_price_bottom_starttext_promotion.
  ///
  /// In en, this message translates to:
  /// **'Promotion'**
  String get tour_booking_bottom_detail_price_bottom_starttext_promotion;

  /// No description provided for @tour_booking_bottom_detail_price_bottom_use_promotion.
  ///
  /// In en, this message translates to:
  /// **'Coupon code'**
  String get tour_booking_bottom_detail_price_bottom_use_promotion;

  /// No description provided for @tour_booking_bottom_detail_price_bottom_starttext_use_coins.
  ///
  /// In en, this message translates to:
  /// **'Use coins'**
  String get tour_booking_bottom_detail_price_bottom_starttext_use_coins;

  /// No description provided for @tour_booking_bottom_detail_price_bottom_starttext_total_amount.
  ///
  /// In en, this message translates to:
  /// **'Total amount'**
  String get tour_booking_bottom_detail_price_bottom_starttext_total_amount;

  /// No description provided for @tour_booking_bottom_detail_price_bottom_text_included_discount.
  ///
  /// In en, this message translates to:
  /// **'Discount included for 100% prepayment'**
  String get tour_booking_bottom_detail_price_bottom_text_included_discount;

  /// No description provided for @tour_booking_bottom_detail_price_bottom_textspan_value_promotion.
  ///
  /// In en, this message translates to:
  /// **'Promotion value: '**
  String get tour_booking_bottom_detail_price_bottom_textspan_value_promotion;

  /// No description provided for @tour_booking_title_item_count_passenger.
  ///
  /// In en, this message translates to:
  /// **'Number of passengers'**
  String get tour_booking_title_item_count_passenger;

  /// No description provided for @tour_booking_item_count_passenger_item_passenger_adult_detail.
  ///
  /// In en, this message translates to:
  /// **'From {age} years old'**
  String tour_booking_item_count_passenger_item_passenger_adult_detail(Object age);

  /// No description provided for @tour_booking_item_count_passenger_item_passenger_child_or_young_child_detail.
  ///
  /// In en, this message translates to:
  /// **'{start_age} - under {end_age} years old'**
  String tour_booking_item_count_passenger_item_passenger_child_or_young_child_detail(Object start_age, Object end_age);

  /// No description provided for @tour_booking_item_count_passenger_item_passenger_text_baby_detail.
  ///
  /// In en, this message translates to:
  /// **'Under {age} years old'**
  String tour_booking_item_count_passenger_item_passenger_text_baby_detail(Object age);

  /// No description provided for @tour_booking_item_count_passenger_bottom_request_support.
  ///
  /// In en, this message translates to:
  /// **'Ask for support in entering traveler information later'**
  String get tour_booking_item_count_passenger_bottom_request_support;

  /// No description provided for @tour_booking_item_count_passenger_bottom_enter_traveler_information.
  ///
  /// In en, this message translates to:
  /// **'Enter traveler information'**
  String get tour_booking_item_count_passenger_bottom_enter_traveler_information;

  /// No description provided for @tour_booking_title_item_info_billing.
  ///
  /// In en, this message translates to:
  /// **'Payment information'**
  String get tour_booking_title_item_info_billing;

  /// No description provided for @tour_booking_item_info_billing_use_contact_info.
  ///
  /// In en, this message translates to:
  /// **'Use contact\'s information'**
  String get tour_booking_item_info_billing_use_contact_info;

  /// No description provided for @tour_booking_title_item_info_contact_person.
  ///
  /// In en, this message translates to:
  /// **'Contact information'**
  String get tour_booking_title_item_info_contact_person;

  /// No description provided for @tour_booking_title_item_method_payment.
  ///
  /// In en, this message translates to:
  /// **'Payment method'**
  String get tour_booking_title_item_method_payment;

  /// No description provided for @tour_booking_item_method_payment_text_full_payment.
  ///
  /// In en, this message translates to:
  /// **'100% payment'**
  String get tour_booking_item_method_payment_text_full_payment;

  /// No description provided for @tour_booking_item_method_payment_text_installment_payment.
  ///
  /// In en, this message translates to:
  /// **'Installment payment'**
  String get tour_booking_item_method_payment_text_installment_payment;

  /// No description provided for @tour_booking_item_method_payment_pay_all_text_discount.
  ///
  /// In en, this message translates to:
  /// **'You get a {discount}% discount'**
  String tour_booking_item_method_payment_pay_all_text_discount(Object discount);

  /// No description provided for @tour_booking_item_method_payment_pay_all_textspan_total_discount.
  ///
  /// In en, this message translates to:
  /// **'Total payable amount of order value after the discount: '**
  String get tour_booking_item_method_payment_pay_all_textspan_total_discount;

  /// No description provided for @tour_booking_title_item_select_service.
  ///
  /// In en, this message translates to:
  /// **'Accompanied services'**
  String get tour_booking_title_item_select_service;

  /// No description provided for @tour_booking_item_select_service_add_service.
  ///
  /// In en, this message translates to:
  /// **'Add service'**
  String get tour_booking_item_select_service_add_service;

  /// No description provided for @tour_booking_pay_installment_textspan_confirmation_code.
  ///
  /// In en, this message translates to:
  /// **'We will send a confirmation code of the payment for the installment order in the next tenors via email: '**
  String get tour_booking_pay_installment_textspan_confirmation_code;

  /// No description provided for @tour_booking_pay_installment_check_email.
  ///
  /// In en, this message translates to:
  /// **'Please double-check your email address.'**
  String get tour_booking_pay_installment_check_email;

  /// No description provided for @tour_booking_pay_installment_number_installments_months.
  ///
  /// In en, this message translates to:
  /// **'Number of installment months'**
  String get tour_booking_pay_installment_number_installments_months;

  /// No description provided for @tour_booking_pay_installment_rate_paid_installment_rate.
  ///
  /// In en, this message translates to:
  /// **'Installment rate'**
  String get tour_booking_pay_installment_rate_paid_installment_rate;

  /// No description provided for @tour_booking_pay_installment_rate_paid_partial_prepayment.
  ///
  /// In en, this message translates to:
  /// **'You must make a partial prepayment of the tour value. The monthly installment amount will be calculated based on the outstanding balance after the successful prepayment.'**
  String get tour_booking_pay_installment_rate_paid_partial_prepayment;

  /// No description provided for @tour_booking_pay_installment_rate_paid_label_text_enter_prepaid.
  ///
  /// In en, this message translates to:
  /// **'Enter your desired prepayment percentage'**
  String get tour_booking_pay_installment_rate_paid_label_text_enter_prepaid;

  /// No description provided for @tour_booking_pay_installment_title_table_Detail_Installment.
  ///
  /// In en, this message translates to:
  /// **'Installment details'**
  String get tour_booking_pay_installment_title_table_Detail_Installment;

  /// No description provided for @tour_booking_pay_installment_table_Detail_Installment_header_stt.
  ///
  /// In en, this message translates to:
  /// **'No.'**
  String get tour_booking_pay_installment_table_Detail_Installment_header_stt;

  /// No description provided for @tour_booking_pay_installment_table_Detail_Installment_header_info.
  ///
  /// In en, this message translates to:
  /// **'Information'**
  String get tour_booking_pay_installment_table_Detail_Installment_header_info;

  /// No description provided for @tour_booking_pay_installment_table_Detail_Installment_header_value.
  ///
  /// In en, this message translates to:
  /// **'Value'**
  String get tour_booking_pay_installment_table_Detail_Installment_header_value;

  /// No description provided for @tour_booking_pay_installment_table_Detail_Installment_info_row_first.
  ///
  /// In en, this message translates to:
  /// **'Order value'**
  String get tour_booking_pay_installment_table_Detail_Installment_info_row_first;

  /// No description provided for @tour_booking_pay_installment_table_Detail_Installment_info_row_second.
  ///
  /// In en, this message translates to:
  /// **'Prepaid rate'**
  String get tour_booking_pay_installment_table_Detail_Installment_info_row_second;

  /// No description provided for @tour_booking_pay_installment_table_Detail_Installment_info_row_third.
  ///
  /// In en, this message translates to:
  /// **'Prepaid value'**
  String get tour_booking_pay_installment_table_Detail_Installment_info_row_third;

  /// No description provided for @tour_booking_pay_installment_table_Detail_Installment_info_row_fourth.
  ///
  /// In en, this message translates to:
  /// **'Remaining balance'**
  String get tour_booking_pay_installment_table_Detail_Installment_info_row_fourth;

  /// No description provided for @tour_booking_pay_installment_table_Detail_Installment_info_row_fifth.
  ///
  /// In en, this message translates to:
  /// **'Information conversion fee'**
  String get tour_booking_pay_installment_table_Detail_Installment_info_row_fifth;

  /// No description provided for @tour_booking_pay_installment_table_Detail_Installment_info_row_sixth.
  ///
  /// In en, this message translates to:
  /// **'Bank payment fee'**
  String get tour_booking_pay_installment_table_Detail_Installment_info_row_sixth;

  /// No description provided for @tour_booking_pay_installment_table_Detail_Installment_info_row_seventh.
  ///
  /// In en, this message translates to:
  /// **'Interest rate (%)'**
  String get tour_booking_pay_installment_table_Detail_Installment_info_row_seventh;

  /// No description provided for @tour_booking_pay_installment_table_Detail_Installment_info_row_eighth.
  ///
  /// In en, this message translates to:
  /// **'Installment interest'**
  String get tour_booking_pay_installment_table_Detail_Installment_info_row_eighth;

  /// No description provided for @tour_booking_pay_installment_table_Detail_Installment_info_row_ninth.
  ///
  /// In en, this message translates to:
  /// **'Total installment amount'**
  String get tour_booking_pay_installment_table_Detail_Installment_info_row_ninth;

  /// No description provided for @tour_booking_pay_installment_table_Detail_Installment_info_row_tenth.
  ///
  /// In en, this message translates to:
  /// **'Installment tenor (Month)'**
  String get tour_booking_pay_installment_table_Detail_Installment_info_row_tenth;

  /// No description provided for @tour_booking_pay_installment_table_Detail_Installment_info_row_eleventh.
  ///
  /// In en, this message translates to:
  /// **'Next installment tenor'**
  String get tour_booking_pay_installment_table_Detail_Installment_info_row_eleventh;

  /// No description provided for @tour_booking_pay_installment_table_Detail_Installment_info_row_twelfth.
  ///
  /// In en, this message translates to:
  /// **'Monthly installment amount'**
  String get tour_booking_pay_installment_table_Detail_Installment_info_row_twelfth;

  /// No description provided for @tour_booking_pay_installment_table_Detail_Installment_value_row_tenth.
  ///
  /// In en, this message translates to:
  /// **'{month} Month'**
  String tour_booking_pay_installment_table_Detail_Installment_value_row_tenth(Object month);

  /// No description provided for @tour_booking_pay_installment_table_Detail_Installment_installment_plan.
  ///
  /// In en, this message translates to:
  /// **'Installment plan'**
  String get tour_booking_pay_installment_table_Detail_Installment_installment_plan;

  /// No description provided for @tour_booking_pay_installment_table_Detail_Installment_installment_plan_details.
  ///
  /// In en, this message translates to:
  /// **'Installment plan details'**
  String get tour_booking_pay_installment_table_Detail_Installment_installment_plan_details;

  /// No description provided for @tour_booking_item_service_init_service_hint_text_accompanied_service.
  ///
  /// In en, this message translates to:
  /// **'Accompanied services'**
  String get tour_booking_item_service_init_service_hint_text_accompanied_service;

  /// No description provided for @tour_booking_item_service_init_service_number_of_travelers.
  ///
  /// In en, this message translates to:
  /// **'Number of passengers'**
  String get tour_booking_item_service_init_service_number_of_travelers;

  /// No description provided for @tour_booking_group_months_installment_label.
  ///
  /// In en, this message translates to:
  /// **'{month} month'**
  String tour_booking_group_months_installment_label(Object month);

  /// No description provided for @tour_detail_screen_theme_text_travel_dreams.
  ///
  /// In en, this message translates to:
  /// **'Travel Dreams'**
  String get tour_detail_screen_theme_text_travel_dreams;

  /// No description provided for @tour_detail_text_number_people_haha_page.
  ///
  /// In en, this message translates to:
  /// **'1,839,017 People Haha this page'**
  String get tour_detail_text_number_people_haha_page;

  /// No description provided for @tour_detail_screen_theme_text_indochina_discovery.
  ///
  /// In en, this message translates to:
  /// **'Indochina discovery: Seasides and Street Food'**
  String get tour_detail_screen_theme_text_indochina_discovery;

  /// No description provided for @tour_detail_text_installment_tour.
  ///
  /// In en, this message translates to:
  /// **'INSTALLMENT TOUR'**
  String get tour_detail_text_installment_tour;

  /// No description provided for @tour_detail_text_view_details.
  ///
  /// In en, this message translates to:
  /// **'View details'**
  String get tour_detail_text_view_details;

  /// No description provided for @tour_detail_number_promotions.
  ///
  /// In en, this message translates to:
  /// **'{promotions} Promotions'**
  String tour_detail_number_promotions(Object promotions);

  /// No description provided for @tour_detail_text_applying.
  ///
  /// In en, this message translates to:
  /// **'applying'**
  String get tour_detail_text_applying;

  /// No description provided for @tour_detail_tab_info.
  ///
  /// In en, this message translates to:
  /// **'Informations'**
  String get tour_detail_tab_info;

  /// No description provided for @tour_detail_tab_tour_parts.
  ///
  /// In en, this message translates to:
  /// **'Itinerary details'**
  String get tour_detail_tab_tour_parts;

  /// No description provided for @tour_detail_tab_promotion.
  ///
  /// In en, this message translates to:
  /// **'Promotions'**
  String get tour_detail_tab_promotion;

  /// No description provided for @tour_detail_tab_privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get tour_detail_tab_privacy_policy;

  /// No description provided for @tour_detail_tab_separate_regulations.
  ///
  /// In en, this message translates to:
  /// **'Private regulations'**
  String get tour_detail_tab_separate_regulations;

  /// No description provided for @tour_detail_tab_contact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get tour_detail_tab_contact;

  /// No description provided for @tour_detail_view_tab_installment.
  ///
  /// In en, this message translates to:
  /// **'Installment plan'**
  String get tour_detail_view_tab_installment;

  /// No description provided for @tour_detail_text_only_from.
  ///
  /// In en, this message translates to:
  /// **'Only from'**
  String get tour_detail_text_only_from;

  /// No description provided for @tour_detail_text_change_date.
  ///
  /// In en, this message translates to:
  /// **'Change date'**
  String get tour_detail_text_change_date;

  /// No description provided for @tour_detail_title_select_departure_month.
  ///
  /// In en, this message translates to:
  /// **'Select departure month'**
  String get tour_detail_title_select_departure_month;

  /// No description provided for @tour_detail_title_upcoming_departure_schedule.
  ///
  /// In en, this message translates to:
  /// **'Upcoming departure schedule'**
  String get tour_detail_title_upcoming_departure_schedule;

  /// No description provided for @tour_detail_schedule_title_departure.
  ///
  /// In en, this message translates to:
  /// **'Departure date'**
  String get tour_detail_schedule_title_departure;

  /// No description provided for @tour_detail_schedule_title_destination.
  ///
  /// In en, this message translates to:
  /// **'End date'**
  String get tour_detail_schedule_title_destination;

  /// No description provided for @tour_detail_text_book_now.
  ///
  /// In en, this message translates to:
  /// **'Book now'**
  String get tour_detail_text_book_now;

  /// No description provided for @tour_detail_view_emptyTitle.
  ///
  /// In en, this message translates to:
  /// **'The tour is no longer available'**
  String get tour_detail_view_emptyTitle;

  /// No description provided for @tour_detail_view_action_menu_time_line.
  ///
  /// In en, this message translates to:
  /// **'Timeline'**
  String get tour_detail_view_action_menu_time_line;

  /// No description provided for @tour_detail_view_action_menu_tour_List.
  ///
  /// In en, this message translates to:
  /// **'Tour List'**
  String get tour_detail_view_action_menu_tour_List;

  /// No description provided for @tour_detail_view_action_menu_introduction.
  ///
  /// In en, this message translates to:
  /// **'Introduction'**
  String get tour_detail_view_action_menu_introduction;

  /// No description provided for @tour_detail_view_action_menu_promotion.
  ///
  /// In en, this message translates to:
  /// **'Promotion'**
  String get tour_detail_view_action_menu_promotion;

  /// No description provided for @tour_detail_view_action_menu_appraise.
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get tour_detail_view_action_menu_appraise;

  /// No description provided for @tour_detail_rate_title_schedule.
  ///
  /// In en, this message translates to:
  /// **'Schedule'**
  String get tour_detail_rate_title_schedule;

  /// No description provided for @tour_detail_rate_title_meal.
  ///
  /// In en, this message translates to:
  /// **'Meal'**
  String get tour_detail_rate_title_meal;

  /// No description provided for @tour_detail_rate_title_property.
  ///
  /// In en, this message translates to:
  /// **'Property'**
  String get tour_detail_rate_title_property;

  /// No description provided for @tour_search_suggest_location_title.
  ///
  /// In en, this message translates to:
  /// **'Outstanding tour destination'**
  String get tour_search_suggest_location_title;

  /// No description provided for @tour_detail_contact_title.
  ///
  /// In en, this message translates to:
  /// **'We are available 24/7! If you have any questions about this service, please contact us using the information below. We will respond within 2 hours!'**
  String get tour_detail_contact_title;

  /// No description provided for @tour_detail_review_there_are_no_reviews_yet.
  ///
  /// In en, this message translates to:
  /// **'There are no reviews yet'**
  String get tour_detail_review_there_are_no_reviews_yet;

  /// No description provided for @tour_detail_rate_title_tour_guide.
  ///
  /// In en, this message translates to:
  /// **'Tour guide'**
  String get tour_detail_rate_title_tour_guide;

  /// No description provided for @tour_detail_rate_title_vehicle.
  ///
  /// In en, this message translates to:
  /// **'Vehicle'**
  String get tour_detail_rate_title_vehicle;

  /// No description provided for @tour_detail_view_tool_bar_number_people_haha_page.
  ///
  /// In en, this message translates to:
  /// **'{people} people Haha this page'**
  String tour_detail_view_tool_bar_number_people_haha_page(Object people);

  /// No description provided for @tour_detail_schedule_error_text_span_not_available.
  ///
  /// In en, this message translates to:
  /// **'The tour schedule by month you selected is not available right now. '**
  String get tour_detail_schedule_error_text_span_not_available;

  /// No description provided for @tour_detail_schedule_error_text_span_choose_schedule_another.
  ///
  /// In en, this message translates to:
  /// **'Please select another tour schedule.'**
  String get tour_detail_schedule_error_text_span_choose_schedule_another;

  /// No description provided for @tour_detail_choose_schedule_title.
  ///
  /// In en, this message translates to:
  /// **'Select schedule'**
  String get tour_detail_choose_schedule_title;

  /// No description provided for @tour_detail_choose_schedule_remain_slot.
  ///
  /// In en, this message translates to:
  /// **'Only {slot} slots left'**
  String tour_detail_choose_schedule_remain_slot(Object slot);

  /// No description provided for @tour_detail_choose_schedule_month_and_year.
  ///
  /// In en, this message translates to:
  /// **'Month {month}, {year}'**
  String tour_detail_choose_schedule_month_and_year(Object month, Object year);

  /// No description provided for @tour_detail_choose_schedule_detail_title.
  ///
  /// In en, this message translates to:
  /// **'Departure schedule'**
  String get tour_detail_choose_schedule_detail_title;

  /// No description provided for @tour_detail_choose_schedule_detail_error_empty_title.
  ///
  /// In en, this message translates to:
  /// **'The departure schedule is not available'**
  String get tour_detail_choose_schedule_detail_error_empty_title;

  /// No description provided for @tour_detail_choose_schedule_detail_cell_departure_date.
  ///
  /// In en, this message translates to:
  /// **'Departure date: {days}'**
  String tour_detail_choose_schedule_detail_cell_departure_date(Object days);

  /// No description provided for @tour_detail_choose_schedule_detail_cell_text_departure.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get tour_detail_choose_schedule_detail_cell_text_departure;

  /// No description provided for @tour_detail_choose_schedule_detail_cell_departure_begin.
  ///
  /// In en, this message translates to:
  /// **'From {city}'**
  String tour_detail_choose_schedule_detail_cell_departure_begin(Object city);

  /// No description provided for @tour_detail_choose_schedule_detail_cell_text_end.
  ///
  /// In en, this message translates to:
  /// **'End'**
  String get tour_detail_choose_schedule_detail_cell_text_end;

  /// No description provided for @tour_detail_choose_schedule_detail_cell_departure_end.
  ///
  /// In en, this message translates to:
  /// **'To {city}'**
  String tour_detail_choose_schedule_detail_cell_departure_end(Object city);

  /// No description provided for @tour_detail_choose_schedule_detail_cell_text_promotion.
  ///
  /// In en, this message translates to:
  /// **'Promotion'**
  String get tour_detail_choose_schedule_detail_cell_text_promotion;

  /// No description provided for @tour_detail_choose_schedule_detail_cell_text_price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get tour_detail_choose_schedule_detail_cell_text_price;

  /// No description provided for @tour_detail_choose_schedule_detail_cell_book_tour_now.
  ///
  /// In en, this message translates to:
  /// **'Book now'**
  String get tour_detail_choose_schedule_detail_cell_book_tour_now;

  /// No description provided for @tour_detail_contact_infor_view_empty_title.
  ///
  /// In en, this message translates to:
  /// **'Contact information is being updated'**
  String get tour_detail_contact_infor_view_empty_title;

  /// No description provided for @tour_detail_contact_infor_view_company_name.
  ///
  /// In en, this message translates to:
  /// **'Company name'**
  String get tour_detail_contact_infor_view_company_name;

  /// No description provided for @tour_detail_infor_view_text_starting_from.
  ///
  /// In en, this message translates to:
  /// **'Start from'**
  String get tour_detail_infor_view_text_starting_from;

  /// No description provided for @tour_detail_infor_view_text_ends_at.
  ///
  /// In en, this message translates to:
  /// **'End at'**
  String get tour_detail_infor_view_text_ends_at;

  /// No description provided for @tour_detail_infor_view_tour_type_domestic.
  ///
  /// In en, this message translates to:
  /// **'Domestic tour'**
  String get tour_detail_infor_view_tour_type_domestic;

  /// No description provided for @tour_detail_infor_view_tour_type_international.
  ///
  /// In en, this message translates to:
  /// **'International tour'**
  String get tour_detail_infor_view_tour_type_international;

  /// No description provided for @tour_detail_infor_view_tour_text_info.
  ///
  /// In en, this message translates to:
  /// **'Information'**
  String get tour_detail_infor_view_tour_text_info;

  /// No description provided for @tour_detail_infor_view_tour_types.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get tour_detail_infor_view_tour_types;

  /// No description provided for @tour_detail_infor_view_tour_service.
  ///
  /// In en, this message translates to:
  /// **'Tour service'**
  String get tour_detail_infor_view_tour_service;

  /// No description provided for @tour_detail_emptyTitle_no_data_found.
  ///
  /// In en, this message translates to:
  /// **'No data found'**
  String get tour_detail_emptyTitle_no_data_found;

  /// No description provided for @tour_detail_promotion_view_empty_title.
  ///
  /// In en, this message translates to:
  /// **'No promotions are available'**
  String get tour_detail_promotion_view_empty_title;

  /// No description provided for @tour_detail_promotion_view_promotion_cell_promotion_level.
  ///
  /// In en, this message translates to:
  /// **'Promotion levels {level}:'**
  String tour_detail_promotion_view_promotion_cell_promotion_level(Object level);

  /// No description provided for @tour_detail_promotion_view_promotion_cell_discount1.
  ///
  /// In en, this message translates to:
  /// **' {price}% off'**
  String tour_detail_promotion_view_promotion_cell_discount1(Object price);

  /// No description provided for @tour_detail_promotion_view_promotion_cell_discount2.
  ///
  /// In en, this message translates to:
  /// **' {price} off'**
  String tour_detail_promotion_view_promotion_cell_discount2(Object price);

  /// No description provided for @tour_detail_promotion_view_promotion_cell_minimum_order.
  ///
  /// In en, this message translates to:
  /// **'Minimum order value: {price}'**
  String tour_detail_promotion_view_promotion_cell_minimum_order(Object price);

  /// No description provided for @tour_detail_promotion_view_promotion_cell_minimum_adults.
  ///
  /// In en, this message translates to:
  /// **'Minimum number of adults: {adult}'**
  String tour_detail_promotion_view_promotion_cell_minimum_adults(Object adult);

  /// No description provided for @tour_detail_error_view_back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get tour_detail_error_view_back;

  /// No description provided for @tour_detail_shimmer_loading_message.
  ///
  /// In en, this message translates to:
  /// **'... people Haha this page'**
  String get tour_detail_shimmer_loading_message;

  /// No description provided for @tour_hand_note_tabs_verify_sent_to_email.
  ///
  /// In en, this message translates to:
  /// **'We sent you a confirmation code to pham54833@gmail.com'**
  String get tour_hand_note_tabs_verify_sent_to_email;

  /// No description provided for @tour_hand_note_tabs_price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get tour_hand_note_tabs_price;

  /// No description provided for @tour_hand_note_tab_tour_view_warning_cancel_order_title.
  ///
  /// In en, this message translates to:
  /// **'Cancel order'**
  String get tour_hand_note_tab_tour_view_warning_cancel_order_title;

  /// No description provided for @tour_hand_note_tab_tour_view_warning_cancel_order_message.
  ///
  /// In en, this message translates to:
  /// **'Do you want to perform this action?'**
  String get tour_hand_note_tab_tour_view_warning_cancel_order_message;

  /// No description provided for @tour_hand_note_tab_tour_view_warning_cancel_order_action_message.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get tour_hand_note_tab_tour_view_warning_cancel_order_action_message;

  /// No description provided for @tour_hand_note_tab_tour_view_warning_cancel_order_negative_message.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get tour_hand_note_tab_tour_view_warning_cancel_order_negative_message;

  /// No description provided for @tour_hand_note_footer_action_total_amount.
  ///
  /// In en, this message translates to:
  /// **'Total amount'**
  String get tour_hand_note_footer_action_total_amount;

  /// No description provided for @tour_hand_note_footer_action_pay.
  ///
  /// In en, this message translates to:
  /// **'Pay'**
  String get tour_hand_note_footer_action_pay;

  /// No description provided for @tour_hand_note_order_payment_view_order_id.
  ///
  /// In en, this message translates to:
  /// **'Order Code'**
  String get tour_hand_note_order_payment_view_order_id;

  /// No description provided for @tour_hand_note_order_payment_view_paid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get tour_hand_note_order_payment_view_paid;

  /// No description provided for @tour_hand_note_order_payment_view_total_price.
  ///
  /// In en, this message translates to:
  /// **'Total price'**
  String get tour_hand_note_order_payment_view_total_price;

  /// No description provided for @tour_hand_note_order_payment_view_remaining_amount.
  ///
  /// In en, this message translates to:
  /// **'Remaining balance'**
  String get tour_hand_note_order_payment_view_remaining_amount;

  /// No description provided for @tour_hand_note_order_payment_view_start_text_installment_tenor.
  ///
  /// In en, this message translates to:
  /// **'Installment tenor'**
  String get tour_hand_note_order_payment_view_start_text_installment_tenor;

  /// No description provided for @tour_hand_note_order_payment_view_end_text_number_month.
  ///
  /// In en, this message translates to:
  /// **'Month: {month}'**
  String tour_hand_note_order_payment_view_end_text_number_month(Object month);

  /// No description provided for @tour_hand_note_order_payment_view_installment_amount.
  ///
  /// In en, this message translates to:
  /// **'Installment amount'**
  String get tour_hand_note_order_payment_view_installment_amount;

  /// No description provided for @tour_hand_note_order_payment_view_next_installment_period.
  ///
  /// In en, this message translates to:
  /// **'Next installment tenor'**
  String get tour_hand_note_order_payment_view_next_installment_period;

  /// No description provided for @tour_hand_note_service_tour_bottom_view_total_payment.
  ///
  /// In en, this message translates to:
  /// **'Total payment'**
  String get tour_hand_note_service_tour_bottom_view_total_payment;

  /// No description provided for @tour_handnote_banner_waring_input_verify_error.
  ///
  /// In en, this message translates to:
  /// **'An error occurred during verification. Please try again or tap \"Resend confirmation code\" to receive a new code via: pham54833@gmail.com'**
  String get tour_handnote_banner_waring_input_verify_error;

  /// No description provided for @tour_lockup_empty_title.
  ///
  /// In en, this message translates to:
  /// **'No tour information found'**
  String get tour_lockup_empty_title;

  /// No description provided for @tour_lockup_title_info.
  ///
  /// In en, this message translates to:
  /// **'Tour information'**
  String get tour_lockup_title_info;

  /// No description provided for @tour_lockup_form_search_hind_text_enter_promo.
  ///
  /// In en, this message translates to:
  /// **'Enter promotion code'**
  String get tour_lockup_form_search_hind_text_enter_promo;

  /// No description provided for @tour_number_date.
  ///
  /// In en, this message translates to:
  /// **'{days, plural, =0{ },=1{{days} day} other{{days} days}}'**
  String tour_number_date(num days);

  /// No description provided for @tour_detail_text_day.
  ///
  /// In en, this message translates to:
  /// **'Day'**
  String get tour_detail_text_day;

  /// No description provided for @tour_detail_page_programs_detail.
  ///
  /// In en, this message translates to:
  /// **'Program details'**
  String get tour_detail_page_programs_detail;

  /// No description provided for @tour_detail_page_passenger_title.
  ///
  /// In en, this message translates to:
  /// **'Passenger'**
  String get tour_detail_page_passenger_title;

  /// No description provided for @tour_detail_info_guest_edit_title.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get tour_detail_info_guest_edit_title;

  /// No description provided for @tour_detail_info_guest_update_title.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get tour_detail_info_guest_update_title;

  /// No description provided for @tab_tour_detail_order_cancel_order.
  ///
  /// In en, this message translates to:
  /// **'Cancel order'**
  String get tab_tour_detail_order_cancel_order;

  /// No description provided for @tab_tour_detail_order_cancel_order_confirm.
  ///
  /// In en, this message translates to:
  /// **'Do you want to cancel the order?'**
  String get tab_tour_detail_order_cancel_order_confirm;

  /// No description provided for @tab_tour_detail_order_cancel_order_confirm_button.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get tab_tour_detail_order_cancel_order_confirm_button;

  /// No description provided for @tab_tour_detail_order_cancel_order_cancel_button.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get tab_tour_detail_order_cancel_order_cancel_button;

  /// No description provided for @tab_tour_detail_order_waiting_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Awaiting confirmation'**
  String get tab_tour_detail_order_waiting_confirmation;

  /// No description provided for @tab_tour_detail_order_code_order_tour_title.
  ///
  /// In en, this message translates to:
  /// **'Booking number'**
  String get tab_tour_detail_order_code_order_tour_title;

  /// No description provided for @tour_detail_stage_view_title.
  ///
  /// In en, this message translates to:
  /// **'Stage {stage}'**
  String tour_detail_stage_view_title(Object stage);

  /// No description provided for @tour_booking_screen_have_apply_voucher_coins.
  ///
  /// In en, this message translates to:
  /// **'Coins have been applied to payment see details below'**
  String get tour_booking_screen_have_apply_voucher_coins;

  /// No description provided for @tour_booking_screen_have_apply_voucher_coupon_code.
  ///
  /// In en, this message translates to:
  /// **'Discount code has been applied to payment see details below'**
  String get tour_booking_screen_have_apply_voucher_coupon_code;

  /// No description provided for @tour_hand_note_banner_warning_update_success.
  ///
  /// In en, this message translates to:
  /// **'Customer information has been completed'**
  String get tour_hand_note_banner_warning_update_success;

  /// No description provided for @tour_hand_note_history_activity_item_infor_cancel_history_payment_information.
  ///
  /// In en, this message translates to:
  /// **'Payment information'**
  String get tour_hand_note_history_activity_item_infor_cancel_history_payment_information;

  /// No description provided for @tour_hand_note_history_activity_item_infor_cancel_history_paid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get tour_hand_note_history_activity_item_infor_cancel_history_paid;

  /// No description provided for @tour_hand_note_history_activity_item_infor_cancel_history_cancel_promo.
  ///
  /// In en, this message translates to:
  /// **'Tour cancelation promotion\n{promo}'**
  String tour_hand_note_history_activity_item_infor_cancel_history_cancel_promo(Object promo);

  /// No description provided for @tour_hand_note_history_activity_item_infor_cancel_history_use_coins.
  ///
  /// In en, this message translates to:
  /// **'Use coins  ({coins})'**
  String tour_hand_note_history_activity_item_infor_cancel_history_use_coins(Object coins);

  /// No description provided for @tour_hand_note_history_activity_item_infor_cancel_history_cancelation_fee.
  ///
  /// In en, this message translates to:
  /// **'Cancelation fee {number}'**
  String tour_hand_note_history_activity_item_infor_cancel_history_cancelation_fee(Object number);

  /// No description provided for @tour_hand_note_history_activity_item_infor_cancel_history_refund_amount.
  ///
  /// In en, this message translates to:
  /// **'Estimated refund amount'**
  String get tour_hand_note_history_activity_item_infor_cancel_history_refund_amount;

  /// No description provided for @tour_hand_note_history_activity_item_infor_cancel_history_refund_time.
  ///
  /// In en, this message translates to:
  /// **'Refund time (From the date of cancelation): 5 to 7 days (For Alepay and Payme payment gateways) or 7 to 15 days (For Stripe payment gateway).'**
  String get tour_hand_note_history_activity_item_infor_cancel_history_refund_time;

  /// No description provided for @tour_hand_note_history_activity_item_infor_cancel_history_reason_cancel.
  ///
  /// In en, this message translates to:
  /// **'Reason for cancelation: '**
  String get tour_hand_note_history_activity_item_infor_cancel_history_reason_cancel;

  /// No description provided for @tour_booking_validation_province_or_city_is_required.
  ///
  /// In en, this message translates to:
  /// **'Province/city is required'**
  String get tour_booking_validation_province_or_city_is_required;

  /// No description provided for @tour_search_place_suggestion_title.
  ///
  /// In en, this message translates to:
  /// **'Choose a destination'**
  String get tour_search_place_suggestion_title;

  /// No description provided for @tour_search_place_suggestion_hint_text.
  ///
  /// In en, this message translates to:
  /// **'Enter departure point...'**
  String get tour_search_place_suggestion_hint_text;

  /// No description provided for @tour_detail_text_full_load.
  ///
  /// In en, this message translates to:
  /// **'Sold out'**
  String get tour_detail_text_full_load;

  /// No description provided for @tour_scheduler_full_load_span1_please.
  ///
  /// In en, this message translates to:
  /// **'Please'**
  String get tour_scheduler_full_load_span1_please;

  /// No description provided for @tour_scheduler_full_load_span2_please.
  ///
  /// In en, this message translates to:
  /// **' contact us '**
  String get tour_scheduler_full_load_span2_please;

  /// No description provided for @tour_scheduler_full_load_span3_please.
  ///
  /// In en, this message translates to:
  /// **'for further details.'**
  String get tour_scheduler_full_load_span3_please;

  /// No description provided for @tour_cancel_order_info_reason_cancel.
  ///
  /// In en, this message translates to:
  /// **'Enter a reason for cancellation.'**
  String get tour_cancel_order_info_reason_cancel;

  /// No description provided for @tour_cancel_order_info_validate_reason_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancellation reason is required'**
  String get tour_cancel_order_info_validate_reason_cancel;

  /// No description provided for @tour_cancel_order_info_refound_invalid_card.
  ///
  /// In en, this message translates to:
  /// **'Account number is required'**
  String get tour_cancel_order_info_refound_invalid_card;

  /// No description provided for @tour_cancel_bank_name_required.
  ///
  /// In en, this message translates to:
  /// **'Bank name is required'**
  String get tour_cancel_bank_name_required;

  /// No description provided for @tour_cancel_bank_wrong_format.
  ///
  /// In en, this message translates to:
  /// **'Bank name is wrong format'**
  String get tour_cancel_bank_wrong_format;

  /// No description provided for @tour_cancel_hahalolo_will_refund_you.
  ///
  /// In en, this message translates to:
  /// **'(Hahalolo will refund you, based on the bank account information you enter below)'**
  String get tour_cancel_hahalolo_will_refund_you;

  /// No description provided for @tour_cancel_enter_bank_name.
  ///
  /// In en, this message translates to:
  /// **'Enter Bank Name'**
  String get tour_cancel_enter_bank_name;

  /// No description provided for @tour_cancel_cancel_order_success.
  ///
  /// In en, this message translates to:
  /// **'Your order has been successfully canceled.'**
  String get tour_cancel_cancel_order_success;

  /// No description provided for @tour_bank_identifier_required.
  ///
  /// In en, this message translates to:
  /// **'Bank identifier is required'**
  String get tour_bank_identifier_required;

  /// No description provided for @tour_booking_fail_payment_price_change.
  ///
  /// In en, this message translates to:
  /// **'Tour price changes from {oldPay} to {newPay}. Do you want to continue paying?'**
  String tour_booking_fail_payment_price_change(Object oldPay, Object newPay);

  /// No description provided for @tour_booking_fail_payment_price_change_and_prepay.
  ///
  /// In en, this message translates to:
  /// **'Tour price changes from {oldPay} to {newPay} and you need to pay {payAmount} in advance. Do you want to continue paying?'**
  String tour_booking_fail_payment_price_change_and_prepay(Object oldPay, Object newPay, Object payAmount);

  /// No description provided for @tour_booking_fail_payment_prepay_change.
  ///
  /// In en, this message translates to:
  /// **'The upfront amount has changed from {oldPay} to {newPay}. Do you want to continue paying?'**
  String tour_booking_fail_payment_prepay_change(Object oldPay, Object newPay);

  /// No description provided for @tour_booking_fail_payment_apply_coin_change.
  ///
  /// In en, this message translates to:
  /// **'The amount applied from coins has a change from {oldPay} to {newPay}. Do you want to continue paying?'**
  String tour_booking_fail_payment_apply_coin_change(Object oldPay, Object newPay);

  /// No description provided for @tour_booking_use_point.
  ///
  /// In en, this message translates to:
  /// **'Use points'**
  String get tour_booking_use_point;

  /// No description provided for @tour_booking_screen_have_apply_points.
  ///
  /// In en, this message translates to:
  /// **'Points have been applied to the payment. Please see details below.'**
  String get tour_booking_screen_have_apply_points;

  /// No description provided for @tour_booking_warning_promotion.
  ///
  /// In en, this message translates to:
  /// **'Your tour is being reserved and the order information cannot be changed. Please make a payment to complete your tour booking.'**
  String get tour_booking_warning_promotion;

  /// No description provided for @tour_booking_warning_back_text_normal.
  ///
  /// In en, this message translates to:
  /// **'Your order has been reserved. If you quit, your order will still be saved in'**
  String get tour_booking_warning_back_text_normal;

  /// No description provided for @tour_booking_warning_back_when_hold_ticket_card_exit_order.
  ///
  /// In en, this message translates to:
  /// **'Quit order'**
  String get tour_booking_warning_back_when_hold_ticket_card_exit_order;

  /// No description provided for @tour_booking_warning_back_when_hold_ticket_card.
  ///
  /// In en, this message translates to:
  /// **'Your cart.'**
  String get tour_booking_warning_back_when_hold_ticket_card;

  /// No description provided for @tour_booking_warning_back_exit.
  ///
  /// In en, this message translates to:
  /// **'Quit'**
  String get tour_booking_warning_back_exit;

  /// No description provided for @tour_booking_update_item_cart_msg_error_order_has_passed_the_payment.
  ///
  /// In en, this message translates to:
  /// **'The order has passed through the payment gateway. The coupon code cannot be unapplied.'**
  String get tour_booking_update_item_cart_msg_error_order_has_passed_the_payment;

  /// No description provided for @tour_booking_point_not_available.
  ///
  /// In en, this message translates to:
  /// **'Points are not available'**
  String get tour_booking_point_not_available;

  /// No description provided for @tour_payment_voucher_exit_dialog_title.
  ///
  /// In en, this message translates to:
  /// **'Payment failed'**
  String get tour_payment_voucher_exit_dialog_title;

  /// No description provided for @tour_total_point_change.
  ///
  /// In en, this message translates to:
  /// **'Your available Points have changed. Please enter the number of Points to apply for the order.'**
  String get tour_total_point_change;

  /// No description provided for @tour_hand_note_text_tour.
  ///
  /// In en, this message translates to:
  /// **'Tour'**
  String get tour_hand_note_text_tour;

  /// No description provided for @tour_hand_note_text_amount_installment_payment.
  ///
  /// In en, this message translates to:
  /// **'Installment payment amount'**
  String get tour_hand_note_text_amount_installment_payment;

  /// No description provided for @tour_detail_tour_has_no_available_schedule.
  ///
  /// In en, this message translates to:
  /// **'No available schedules for this tour'**
  String get tour_detail_tour_has_no_available_schedule;

  /// No description provided for @tour_detail_promotion_view_time_application.
  ///
  /// In en, this message translates to:
  /// **'Applicable period:'**
  String tour_detail_promotion_view_time_application(Object start_days, Object end_days);

  /// No description provided for @tour_detail_promotion_view_up_to_off_title.
  ///
  /// In en, this message translates to:
  /// **'Up to'**
  String get tour_detail_promotion_view_up_to_off_title;

  /// No description provided for @tour_detail_promotion_view_promotion_up_to_off_title.
  ///
  /// In en, this message translates to:
  /// **'{percent}% off'**
  String tour_detail_promotion_view_promotion_up_to_off_title(Object percent);

  /// No description provided for @tour_lockup_title_lookup_tour_code.
  ///
  /// In en, this message translates to:
  /// **'Look up booking number'**
  String get tour_lockup_title_lookup_tour_code;

  /// No description provided for @tour_you_can_sure_cancel_order.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to cancel this order?'**
  String get tour_you_can_sure_cancel_order;

  /// No description provided for @tour_detail_contact_text_hotline.
  ///
  /// In en, this message translates to:
  /// **'Hotline'**
  String get tour_detail_contact_text_hotline;

  /// No description provided for @tour_detail_contact_text_facebook.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get tour_detail_contact_text_facebook;

  /// No description provided for @tour_detail_contact_text_halome.
  ///
  /// In en, this message translates to:
  /// **'Halome'**
  String get tour_detail_contact_text_halome;

  /// No description provided for @tour_detail_reviews.
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get tour_detail_reviews;

  /// No description provided for @tour_lockup_up_tour_header_text.
  ///
  /// In en, this message translates to:
  /// **'Enter tour booking code to look up your tour booking information'**
  String get tour_lockup_up_tour_header_text;

  /// No description provided for @tour_booking_screen_alter_guest_information.
  ///
  /// In en, this message translates to:
  /// **'Note: Customer information has not been completed yet'**
  String get tour_booking_screen_alter_guest_information;

  /// No description provided for @tour_booking_screen_update_information.
  ///
  /// In en, this message translates to:
  /// **'Update now'**
  String get tour_booking_screen_update_information;

  /// No description provided for @tour_review_title_feedback.
  ///
  /// In en, this message translates to:
  /// **'Rate your experience on tour'**
  String get tour_review_title_feedback;

  /// No description provided for @tour_review_title_content.
  ///
  /// In en, this message translates to:
  /// **'Rate your tour overall'**
  String get tour_review_title_content;

  /// No description provided for @tour_review_title_see_review.
  ///
  /// In en, this message translates to:
  /// **'Your review of the tour'**
  String get tour_review_title_see_review;

  /// No description provided for @tour_review_schedule.
  ///
  /// In en, this message translates to:
  /// **'Schedule'**
  String get tour_review_schedule;

  /// No description provided for @tour_review_meal.
  ///
  /// In en, this message translates to:
  /// **'Meal'**
  String get tour_review_meal;

  /// No description provided for @tour_review_accommodation.
  ///
  /// In en, this message translates to:
  /// **'Accommodation'**
  String get tour_review_accommodation;

  /// No description provided for @tour_review_tour_guide.
  ///
  /// In en, this message translates to:
  /// **'Tour guide'**
  String get tour_review_tour_guide;

  /// No description provided for @tour_review_vehicle.
  ///
  /// In en, this message translates to:
  /// **'Vehicle'**
  String get tour_review_vehicle;

  /// No description provided for @tour_review_title_supplier.
  ///
  /// In en, this message translates to:
  /// **'Feedback from Supplier'**
  String get tour_review_title_supplier;

  /// No description provided for @banner_warning_installment_noti.
  ///
  /// In en, this message translates to:
  /// **'Your order is going to reach the next installment payment due date on {nextDay}'**
  String banner_warning_installment_noti(Object nextDay);

  /// No description provided for @banner_warning_installment_.
  ///
  /// In en, this message translates to:
  /// **'Extension'**
  String get banner_warning_installment_;

  /// No description provided for @tour_booking_item_service_in_ticket.
  ///
  /// In en, this message translates to:
  /// **'Included in the ticket price'**
  String get tour_booking_item_service_in_ticket;

  /// No description provided for @tour_booking_item_service_title.
  ///
  /// In en, this message translates to:
  /// **'Service {numberItem}'**
  String tour_booking_item_service_title(Object numberItem);

  /// No description provided for @tour_detail_number_date_applies_promo.
  ///
  /// In en, this message translates to:
  /// **'For every {weekDate}'**
  String tour_detail_number_date_applies_promo(Object weekDate);

  /// No description provided for @tour_detail_prefix_last_date_applies_promo.
  ///
  /// In en, this message translates to:
  /// **' and {lastDay}'**
  String tour_detail_prefix_last_date_applies_promo(Object lastDay);

  /// No description provided for @voucher_search_on_select_voucher_done.
  ///
  /// In en, this message translates to:
  /// **'Unapplied discount code successfully'**
  String get voucher_search_on_select_voucher_done;

  /// No description provided for @voucher_search_on_select_voucher_fail.
  ///
  /// In en, this message translates to:
  /// **'Unapplied discount code failed. Something went wrong. Please try again later.'**
  String get voucher_search_on_select_voucher_fail;

  /// No description provided for @voucher_search_coupon_code_incorrect.
  ///
  /// In en, this message translates to:
  /// **'The coupon code is incorrect'**
  String get voucher_search_coupon_code_incorrect;

  /// No description provided for @voucher_search_check_or_contact_cskh.
  ///
  /// In en, this message translates to:
  /// **'Please double check or contact our Customer Service Center '**
  String get voucher_search_check_or_contact_cskh;

  /// No description provided for @voucher_widget_item_voucher_discount.
  ///
  /// In en, this message translates to:
  /// **'Discount: {number}'**
  String voucher_widget_item_voucher_discount(Object number);

  /// No description provided for @voucher_widget_item_voucher_text_span_discount.
  ///
  /// In en, this message translates to:
  /// **'* {number} off'**
  String voucher_widget_item_voucher_text_span_discount(Object number);

  /// No description provided for @voucher_widget_item_voucher_expiring.
  ///
  /// In en, this message translates to:
  /// **'Expiring: {date}'**
  String voucher_widget_item_voucher_expiring(Object date);

  /// No description provided for @voucher_widget_item_voucher_expry_date.
  ///
  /// In en, this message translates to:
  /// **'Expiry Date: '**
  String get voucher_widget_item_voucher_expry_date;

  /// No description provided for @voucher_widget_item_voucher_info_detail_text_code.
  ///
  /// In en, this message translates to:
  /// **'Code: '**
  String get voucher_widget_item_voucher_info_detail_text_code;

  /// No description provided for @voucher_widget_item_voucher_info_detail_text_program.
  ///
  /// In en, this message translates to:
  /// **'Promotion: '**
  String get voucher_widget_item_voucher_info_detail_text_program;

  /// No description provided for @voucher_widget_item_voucher_info_detail_text_condition.
  ///
  /// In en, this message translates to:
  /// **'Conditon : '**
  String get voucher_widget_item_voucher_info_detail_text_condition;

  /// No description provided for @voucher_widget_item_voucher_info_detail_text_apply_hahalolo.
  ///
  /// In en, this message translates to:
  /// **'* Apply to Hahalolo products.'**
  String get voucher_widget_item_voucher_info_detail_text_apply_hahalolo;

  /// No description provided for @voucher_widget_item_voucher_info_detail_text_maximum.
  ///
  /// In en, this message translates to:
  /// **'* Limit one per customer.'**
  String get voucher_widget_item_voucher_info_detail_text_maximum;

  /// No description provided for @voucher_widget_item_voucher_info_detail_text_for_order.
  ///
  /// In en, this message translates to:
  /// **'on orders from {number}'**
  String voucher_widget_item_voucher_info_detail_text_for_order(Object number);

  /// No description provided for @voucher_widget_item_voucher_text_span_applies_product.
  ///
  /// In en, this message translates to:
  /// **'Products applied to: '**
  String get voucher_widget_item_voucher_text_span_applies_product;

  /// No description provided for @voucher_widget_item_voucher_coupon_code.
  ///
  /// In en, this message translates to:
  /// **'* Maximum discount : '**
  String get voucher_widget_item_voucher_coupon_code;

  /// No description provided for @voucher_apply_voucher_widget_you_save.
  ///
  /// In en, this message translates to:
  /// **'Haha! You save '**
  String get voucher_apply_voucher_widget_you_save;

  /// No description provided for @voucher_apply_voucher_widget_order_from_discount.
  ///
  /// In en, this message translates to:
  /// **'on this order from discount code '**
  String get voucher_apply_voucher_widget_order_from_discount;

  /// No description provided for @cart_screen_main_title.
  ///
  /// In en, this message translates to:
  /// **'Your cart'**
  String get cart_screen_main_title;

  /// No description provided for @cart_screen_main_tour_title.
  ///
  /// In en, this message translates to:
  /// **'Book Tour'**
  String get cart_screen_main_tour_title;

  /// No description provided for @cart_screen_main_flight_title.
  ///
  /// In en, this message translates to:
  /// **'Flight Booking'**
  String get cart_screen_main_flight_title;

  /// No description provided for @cart_screen_main_car_title.
  ///
  /// In en, this message translates to:
  /// **'Car Booking'**
  String get cart_screen_main_car_title;

  /// No description provided for @cart_screen_main_hotel_title.
  ///
  /// In en, this message translates to:
  /// **'Hotel'**
  String get cart_screen_main_hotel_title;

  /// No description provided for @cart_screen_main_tour_title_1.
  ///
  /// In en, this message translates to:
  /// **'Book Tour (1)'**
  String get cart_screen_main_tour_title_1;

  /// No description provided for @cart_screen_main_flight_title_1.
  ///
  /// In en, this message translates to:
  /// **'Flight Booking (1)'**
  String get cart_screen_main_flight_title_1;

  /// No description provided for @cart_screen_main_car_title_1.
  ///
  /// In en, this message translates to:
  /// **'Car Booking (1)'**
  String get cart_screen_main_car_title_1;

  /// No description provided for @cart_screen_main_hotel_title_1.
  ///
  /// In en, this message translates to:
  /// **'Hotel (1)'**
  String get cart_screen_main_hotel_title_1;

  /// No description provided for @cart_screen_domestic_flight_num_passenger.
  ///
  /// In en, this message translates to:
  /// **'Number of passengers'**
  String get cart_screen_domestic_flight_num_passenger;

  /// No description provided for @cart_screen_domestic_flight_subtotal.
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get cart_screen_domestic_flight_subtotal;

  /// No description provided for @cart_screen_domestic_flight_note.
  ///
  /// In en, this message translates to:
  /// **'Your flight reservation has been made. Please make payment to complete the ticket issuance.'**
  String get cart_screen_domestic_flight_note;

  /// No description provided for @cart_screen_empty.
  ///
  /// In en, this message translates to:
  /// **'Your cart is empty'**
  String get cart_screen_empty;

  /// No description provided for @cart_screen_empty_order_now.
  ///
  /// In en, this message translates to:
  /// **'Search & Order now!'**
  String get cart_screen_empty_order_now;

  /// No description provided for @cart_screen_car_delete_order.
  ///
  /// In en, this message translates to:
  /// **'Delete order'**
  String get cart_screen_car_delete_order;

  /// No description provided for @cart_screen_car_delete_order_confirm.
  ///
  /// In en, this message translates to:
  /// **'Do you want to delete this order?'**
  String get cart_screen_car_delete_order_confirm;

  /// No description provided for @cart_screen_tour_schedule_title.
  ///
  /// In en, this message translates to:
  /// **'Schedule'**
  String get cart_screen_tour_schedule_title;

  /// No description provided for @cart_screen_tour_type_title.
  ///
  /// In en, this message translates to:
  /// **'Tour type'**
  String get cart_screen_tour_type_title;

  /// No description provided for @cart_tour_type_domestic.
  ///
  /// In en, this message translates to:
  /// **'Domestic'**
  String get cart_tour_type_domestic;

  /// No description provided for @cart_tour_type_international.
  ///
  /// In en, this message translates to:
  /// **'International'**
  String get cart_tour_type_international;

  /// No description provided for @cart_screen_tour_num_day_num_night.
  ///
  /// In en, this message translates to:
  /// **'{day} day, {night} night'**
  String cart_screen_tour_num_day_num_night(Object day, Object night);

  /// No description provided for @cart_screen_domestic_flight_not_been_reserved.
  ///
  /// In en, this message translates to:
  /// **'Your flight has not been reserved yet. Please complete your payment to reserve and issue the ticket.'**
  String get cart_screen_domestic_flight_not_been_reserved;

  /// No description provided for @cart_screen_domestic_hotel_num_passenger.
  ///
  /// In en, this message translates to:
  /// **'Number of passengers'**
  String get cart_screen_domestic_hotel_num_passenger;

  /// No description provided for @cart_flight_prepayment_required.
  ///
  /// In en, this message translates to:
  /// **'Prepayment required'**
  String get cart_flight_prepayment_required;

  /// No description provided for @cart_tour_along_with.
  ///
  /// In en, this message translates to:
  /// **' along with'**
  String get cart_tour_along_with;

  /// No description provided for @cart_tour_accompanying_services.
  ///
  /// In en, this message translates to:
  /// **' accompanying services'**
  String get cart_tour_accompanying_services;

  /// No description provided for @cart_tour_included_in_the_ticket_price.
  ///
  /// In en, this message translates to:
  /// **'Included in the ticket price'**
  String get cart_tour_included_in_the_ticket_price;

  /// No description provided for @cart_car_not_order.
  ///
  /// In en, this message translates to:
  /// **'There are no orders in your cart.'**
  String get cart_car_not_order;

  /// No description provided for @cart_car_not_item_search_and_order.
  ///
  /// In en, this message translates to:
  /// **'Search & Order Now!'**
  String get cart_car_not_item_search_and_order;

  /// No description provided for @hand_note_input_verify_error.
  ///
  /// In en, this message translates to:
  /// **'An error occurred during verification. Please try again or tap \"Resend confirmation code\" to receive a new code via {email}'**
  String hand_note_input_verify_error(Object email);

  /// No description provided for @hand_note_resend.
  ///
  /// In en, this message translates to:
  /// **'Resend confirmation code'**
  String get hand_note_resend;

  /// No description provided for @hand_note_input_verify.
  ///
  /// In en, this message translates to:
  /// **'We\'ve sent a confirmation code to {email}. Enter the code you received to complete this step'**
  String hand_note_input_verify(Object email);

  /// No description provided for @hand_note_input_verify_code.
  ///
  /// In en, this message translates to:
  /// **'Enter code'**
  String get hand_note_input_verify_code;

  /// No description provided for @hand_note_tour_detail_body_tour_info_title.
  ///
  /// In en, this message translates to:
  /// **'Tour information'**
  String get hand_note_tour_detail_body_tour_info_title;

  /// No description provided for @hand_note_tour_detail_body_tour_time_zone_note.
  ///
  /// In en, this message translates to:
  /// **'(Time is calculated in Vietnam time zone)'**
  String get hand_note_tour_detail_body_tour_time_zone_note;

  /// No description provided for @hand_note_tour_detail_body_tour_total_day_title.
  ///
  /// In en, this message translates to:
  /// **'Total days'**
  String get hand_note_tour_detail_body_tour_total_day_title;

  /// No description provided for @hand_note_tour_detail_body_tour_number_traveler_title.
  ///
  /// In en, this message translates to:
  /// **'Number of travelers'**
  String get hand_note_tour_detail_body_tour_number_traveler_title;

  /// No description provided for @hand_note_tour_detail_body_tour_cancellation_policy_title.
  ///
  /// In en, this message translates to:
  /// **'Cancelation policy'**
  String get hand_note_tour_detail_body_tour_cancellation_policy_title;

  /// No description provided for @hand_note_tour_detail_body_tour_cancellation_policy_des_1.
  ///
  /// In en, this message translates to:
  /// **'Free cancelation timelines are based on the tour booking time zone and Supplier\'s tour cancelation policy'**
  String get hand_note_tour_detail_body_tour_cancellation_policy_des_1;

  /// No description provided for @hand_note_tour_detail_body_tour_cancellation_policy_des_2.
  ///
  /// In en, this message translates to:
  /// **'For tour cancelation, you will be charged the following cancelation fee:'**
  String get hand_note_tour_detail_body_tour_cancellation_policy_des_2;

  /// No description provided for @hand_note_tour_detail_body_tour_cancellation_policy_des_3.
  ///
  /// In en, this message translates to:
  /// **'•{departureDay} days before departure date'**
  String hand_note_tour_detail_body_tour_cancellation_policy_des_3(Object departureDay);

  /// No description provided for @hand_note_tour_detail_body_tour_cancellation_policy_des_4.
  ///
  /// In en, this message translates to:
  /// **'Free cancelation'**
  String get hand_note_tour_detail_body_tour_cancellation_policy_des_4;

  /// No description provided for @hand_note_tour_detail_body_tour_cancellation_policy_des_5.
  ///
  /// In en, this message translates to:
  /// **'Cancelation fee of {cancellationFee} %'**
  String hand_note_tour_detail_body_tour_cancellation_policy_des_5(Object cancellationFee);

  /// No description provided for @hand_promotion_100.
  ///
  /// In en, this message translates to:
  /// **'Promotion for 100% payment'**
  String get hand_promotion_100;

  /// No description provided for @hand_note_install_policy.
  ///
  /// In en, this message translates to:
  /// **'Installment plan'**
  String get hand_note_install_policy;

  /// No description provided for @hand_note_title_status_payment_failure.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get hand_note_title_status_payment_failure;

  /// No description provided for @hand_process_extension.
  ///
  /// In en, this message translates to:
  /// **'Ongoing extension'**
  String get hand_process_extension;

  /// No description provided for @hand_in_installment.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get hand_in_installment;

  /// No description provided for @hand_installment_completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get hand_installment_completed;

  /// No description provided for @hand_note_adults.
  ///
  /// In en, this message translates to:
  /// **'Adults'**
  String get hand_note_adults;

  /// No description provided for @hand_note_children.
  ///
  /// In en, this message translates to:
  /// **'Children'**
  String get hand_note_children;

  /// No description provided for @hand_note_baby.
  ///
  /// In en, this message translates to:
  /// **'Young children'**
  String get hand_note_baby;

  /// No description provided for @hand_note_infant.
  ///
  /// In en, this message translates to:
  /// **'Babies'**
  String get hand_note_infant;

  /// No description provided for @hand_note_tour_service_price.
  ///
  /// In en, this message translates to:
  /// **'Service price'**
  String get hand_note_tour_service_price;

  /// No description provided for @hand_note_total_price.
  ///
  /// In en, this message translates to:
  /// **'Total price'**
  String get hand_note_total_price;

  /// No description provided for @hand_note_prepaid.
  ///
  /// In en, this message translates to:
  /// **'Prepaid'**
  String get hand_note_prepaid;

  /// No description provided for @hand_note_remaining.
  ///
  /// In en, this message translates to:
  /// **'Remaining balance'**
  String get hand_note_remaining;

  /// No description provided for @hand_installment_status.
  ///
  /// In en, this message translates to:
  /// **'Installment status'**
  String get hand_installment_status;

  /// No description provided for @hand_note_installment_payment_count_month_payment.
  ///
  /// In en, this message translates to:
  /// **'Number of installment months'**
  String get hand_note_installment_payment_count_month_payment;

  /// No description provided for @hand_note_installment_payment_count_month_payment_num.
  ///
  /// In en, this message translates to:
  /// **'{month} months'**
  String hand_note_installment_payment_count_month_payment_num(Object month);

  /// No description provided for @hand_note_information_detail_installment_title.
  ///
  /// In en, this message translates to:
  /// **'Installment information'**
  String get hand_note_information_detail_installment_title;

  /// No description provided for @hand_note_information_detail_total_value_title.
  ///
  /// In en, this message translates to:
  /// **'Order total'**
  String get hand_note_information_detail_total_value_title;

  /// No description provided for @hand_note_information_detail_prepayment_amount_title.
  ///
  /// In en, this message translates to:
  /// **'Prepaid amount ({amount}%)'**
  String hand_note_information_detail_prepayment_amount_title(Object amount);

  /// No description provided for @hand_note_amount_payment.
  ///
  /// In en, this message translates to:
  /// **'Total installment amount'**
  String get hand_note_amount_payment;

  /// No description provided for @hand_note_information_detail_installment_tenor_title.
  ///
  /// In en, this message translates to:
  /// **'Installment tenor '**
  String get hand_note_information_detail_installment_tenor_title;

  /// No description provided for @hand_note_information_detail_information_conversion_fee_title.
  ///
  /// In en, this message translates to:
  /// **'Information conversion fee'**
  String get hand_note_information_detail_information_conversion_fee_title;

  /// No description provided for @hand_note_information_detail_bank_fee_title.
  ///
  /// In en, this message translates to:
  /// **'Bank fee'**
  String get hand_note_information_detail_bank_fee_title;

  /// No description provided for @hand_note_information_detail_installment_interest_title.
  ///
  /// In en, this message translates to:
  /// **'Installment interest '**
  String get hand_note_information_detail_installment_interest_title;

  /// No description provided for @hand_note_information_detail_monthly_installment_amount_title.
  ///
  /// In en, this message translates to:
  /// **'Monthly installment amount'**
  String get hand_note_information_detail_monthly_installment_amount_title;

  /// No description provided for @hand_note_information_detail_next_due_date_title.
  ///
  /// In en, this message translates to:
  /// **'Next installment tenor'**
  String get hand_note_information_detail_next_due_date_title;

  /// No description provided for @hand_note_installment.
  ///
  /// In en, this message translates to:
  /// **'Installment'**
  String get hand_note_installment;

  /// No description provided for @hand_note_postpaid.
  ///
  /// In en, this message translates to:
  /// **'Postpaid'**
  String get hand_note_postpaid;

  /// No description provided for @hand_note_installment_history_title.
  ///
  /// In en, this message translates to:
  /// **'Installment history'**
  String get hand_note_installment_history_title;

  /// No description provided for @hand_note_payment_installment_title.
  ///
  /// In en, this message translates to:
  /// **'Installment payment'**
  String get hand_note_payment_installment_title;

  /// No description provided for @hand_note_the_month_current_installment.
  ///
  /// In en, this message translates to:
  /// **'Month: {month}'**
  String hand_note_the_month_current_installment(Object month);

  /// No description provided for @hand_note_fist_payment_title.
  ///
  /// In en, this message translates to:
  /// **'First payment'**
  String get hand_note_fist_payment_title;

  /// No description provided for @hand_note_remaining_balance_title.
  ///
  /// In en, this message translates to:
  /// **'Remaining balance'**
  String get hand_note_remaining_balance_title;

  /// No description provided for @hand_note_extension_info.
  ///
  /// In en, this message translates to:
  /// **'Extension information'**
  String get hand_note_extension_info;

  /// No description provided for @hand_note_price_extension.
  ///
  /// In en, this message translates to:
  /// **'Extended amount'**
  String get hand_note_price_extension;

  /// No description provided for @hand_note_month_paid.
  ///
  /// In en, this message translates to:
  /// **'{month} months paid'**
  String hand_note_month_paid(Object month);

  /// No description provided for @hand_note_month_left.
  ///
  /// In en, this message translates to:
  /// **'{month} months left'**
  String hand_note_month_left(Object month);

  /// No description provided for @hand_note_update_info_title.
  ///
  /// In en, this message translates to:
  /// **'Update your info'**
  String get hand_note_update_info_title;

  /// No description provided for @hand_note_invalid_full_name.
  ///
  /// In en, this message translates to:
  /// **'Invalid full name format'**
  String get hand_note_invalid_full_name;

  /// No description provided for @hand_note_must_enter_full_name.
  ///
  /// In en, this message translates to:
  /// **'You must enter your full name'**
  String get hand_note_must_enter_full_name;

  /// No description provided for @hand_note_adults_num.
  ///
  /// In en, this message translates to:
  /// **'Adult information {num}'**
  String hand_note_adults_num(Object num);

  /// No description provided for @hand_note_children_num.
  ///
  /// In en, this message translates to:
  /// **'Child information {num}'**
  String hand_note_children_num(Object num);

  /// No description provided for @hand_note_baby_num.
  ///
  /// In en, this message translates to:
  /// **'Baby information {num}'**
  String hand_note_baby_num(Object num);

  /// No description provided for @hand_note_infant_num.
  ///
  /// In en, this message translates to:
  /// **'Young child information {num}'**
  String hand_note_infant_num(Object num);

  /// No description provided for @hand_note_over_x_years_old.
  ///
  /// In en, this message translates to:
  /// **'(Over {age} years old)'**
  String hand_note_over_x_years_old(Object age);

  /// No description provided for @hand_note_from_x_to_x_years_old.
  ///
  /// In en, this message translates to:
  /// **'(From {ageFrom} - {ageTo} years old)'**
  String hand_note_from_x_to_x_years_old(Object ageFrom, Object ageTo);

  /// No description provided for @hand_note_under_x_years_old.
  ///
  /// In en, this message translates to:
  /// **'(Under {age} years old)'**
  String hand_note_under_x_years_old(Object age);

  /// No description provided for @hand_note_num_day_title.
  ///
  /// In en, this message translates to:
  /// **'{day} days'**
  String hand_note_num_day_title(Object day);

  /// No description provided for @hand_note_stage_title.
  ///
  /// In en, this message translates to:
  /// **'Part: {stage}'**
  String hand_note_stage_title(Object stage);

  /// No description provided for @hand_note_update_passenger_info_title.
  ///
  /// In en, this message translates to:
  /// **'Update traveler information'**
  String get hand_note_update_passenger_info_title;

  /// No description provided for @hand_note_hotel_reservation_detail_title.
  ///
  /// In en, this message translates to:
  /// **'Reservation details'**
  String get hand_note_hotel_reservation_detail_title;

  /// No description provided for @hand_note_tour_installment_title.
  ///
  /// In en, this message translates to:
  /// **'Installment tour'**
  String get hand_note_tour_installment_title;

  /// No description provided for @hand_note_tour_extensions_payment_title.
  ///
  /// In en, this message translates to:
  /// **'Payment extension'**
  String get hand_note_tour_extensions_payment_title;

  /// No description provided for @hand_note_installment_period.
  ///
  /// In en, this message translates to:
  /// **'Installment tenor'**
  String get hand_note_installment_period;

  /// No description provided for @hand_note_installment_amount.
  ///
  /// In en, this message translates to:
  /// **'Installment amount'**
  String get hand_note_installment_amount;

  /// No description provided for @hand_note_recommend_adjourn.
  ///
  /// In en, this message translates to:
  /// **'Request for extension'**
  String get hand_note_recommend_adjourn;

  /// No description provided for @hand_note_number_extension.
  ///
  /// In en, this message translates to:
  /// **'Number of extension days'**
  String get hand_note_number_extension;

  /// No description provided for @hand_note_new_installment.
  ///
  /// In en, this message translates to:
  /// **'New installment due date'**
  String get hand_note_new_installment;

  /// No description provided for @hand_note_adjourn_notice.
  ///
  /// In en, this message translates to:
  /// **'For each installment tenor, you only have once to get a payment extension of {day} days. If the new installment due date is over and the current tenor payment has not been made, your tour will be canceled.'**
  String hand_note_adjourn_notice(Object day);

  /// No description provided for @hand_note_reason_late.
  ///
  /// In en, this message translates to:
  /// **'Late payment excuse'**
  String get hand_note_reason_late;

  /// No description provided for @hand_note_extension_successful.
  ///
  /// In en, this message translates to:
  /// **'Extension successful'**
  String get hand_note_extension_successful;

  /// No description provided for @hand_note_part_due_note.
  ///
  /// In en, this message translates to:
  /// **'The order is past due. Please contact our Customer Service Center.'**
  String get hand_note_part_due_note;

  /// No description provided for @hand_note_part_due_note_extension.
  ///
  /// In en, this message translates to:
  /// **'Order is overdue. Please contact customer support'**
  String get hand_note_part_due_note_extension;

  /// No description provided for @hand_note_notify_error_extension.
  ///
  /// In en, this message translates to:
  /// **'An error occurred. Please try again.'**
  String get hand_note_notify_error_extension;

  /// No description provided for @hand_note_dialog_input_verify_1.
  ///
  /// In en, this message translates to:
  /// **'We\'ve sent a confirmation code to'**
  String get hand_note_dialog_input_verify_1;

  /// No description provided for @hand_note_dialog_input_verify_2.
  ///
  /// In en, this message translates to:
  /// **'Enter the code you received to complete this step.'**
  String get hand_note_dialog_input_verify_2;

  /// No description provided for @hand_note_verify_input_code_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter confirmation code'**
  String get hand_note_verify_input_code_hint;

  /// No description provided for @hand_note_title_hotel_order.
  ///
  /// In en, this message translates to:
  /// **'Hotel booking orders'**
  String get hand_note_title_hotel_order;

  /// No description provided for @hand_note_title_apply_coin.
  ///
  /// In en, this message translates to:
  /// **'Use coins'**
  String get hand_note_title_apply_coin;

  /// No description provided for @hand_note_request_resent_code_confirm_must_1.
  ///
  /// In en, this message translates to:
  /// **'You should wait a minute before requesting to resend the confirmation code.'**
  String get hand_note_request_resent_code_confirm_must_1;

  /// No description provided for @hand_note_request_resent_code_confirm_must_2.
  ///
  /// In en, this message translates to:
  /// **'You should wait 5 minutes before requesting to resend the confirmation code.'**
  String get hand_note_request_resent_code_confirm_must_2;

  /// No description provided for @hand_note_request_resent_code_confirm_must_3.
  ///
  /// In en, this message translates to:
  /// **'You should wait a day before requesting to resend the confirmation code.'**
  String get hand_note_request_resent_code_confirm_must_3;

  /// No description provided for @hand_note_request_resent_code_confirm_must_4.
  ///
  /// In en, this message translates to:
  /// **'You should wait 9 minutes before requesting to resend the confirmation code.'**
  String get hand_note_request_resent_code_confirm_must_4;

  /// No description provided for @hand_note_request_resent_code_confirm_must_5.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while sending the confirmation code. Please try again.'**
  String get hand_note_request_resent_code_confirm_must_5;

  /// No description provided for @hand_note_history_new_order_created.
  ///
  /// In en, this message translates to:
  /// **'New order created'**
  String get hand_note_history_new_order_created;

  /// No description provided for @hand_note_history_change_customer_information.
  ///
  /// In en, this message translates to:
  /// **'Changed passenger information'**
  String get hand_note_history_change_customer_information;

  /// No description provided for @hand_note_history_cancellation_of_passengers.
  ///
  /// In en, this message translates to:
  /// **'Canceled passenger'**
  String get hand_note_history_cancellation_of_passengers;

  /// No description provided for @hand_note_history_change_flights.
  ///
  /// In en, this message translates to:
  /// **'Changed flight'**
  String get hand_note_history_change_flights;

  /// No description provided for @hand_note_history_cancel_the_flight.
  ///
  /// In en, this message translates to:
  /// **'Canceled flight'**
  String get hand_note_history_cancel_the_flight;

  /// No description provided for @fare_rule_toolbar_title.
  ///
  /// In en, this message translates to:
  /// **'Fare conditions'**
  String get fare_rule_toolbar_title;

  /// No description provided for @hand_note_detail_activity_history.
  ///
  /// In en, this message translates to:
  /// **'Activity history:'**
  String get hand_note_detail_activity_history;

  /// No description provided for @hand_note_coin_refund_amount.
  ///
  /// In en, this message translates to:
  /// **'Expected refund coins'**
  String get hand_note_coin_refund_amount;

  /// No description provided for @hand_note_information_detail_next_due_date_discription.
  ///
  /// In en, this message translates to:
  /// **'{nextDay}\n(Month {installmentPeriod})'**
  String hand_note_information_detail_next_due_date_discription(Object nextDay, Object installmentPeriod);

  /// No description provided for @hand_note_booking_use_point.
  ///
  /// In en, this message translates to:
  /// **'Use Points'**
  String get hand_note_booking_use_point;

  /// No description provided for @hand_note_tour_title.
  ///
  /// In en, this message translates to:
  /// **'Tour'**
  String get hand_note_tour_title;

  /// No description provided for @hand_note_hotel_title.
  ///
  /// In en, this message translates to:
  /// **'Hotel'**
  String get hand_note_hotel_title;

  /// No description provided for @hand_note_flight_title.
  ///
  /// In en, this message translates to:
  /// **'Flight'**
  String get hand_note_flight_title;

  /// No description provided for @hand_note_car_title.
  ///
  /// In en, this message translates to:
  /// **'Car Rental'**
  String get hand_note_car_title;

  /// No description provided for @hand_note_title.
  ///
  /// In en, this message translates to:
  /// **'Handnotes'**
  String get hand_note_title;

  /// No description provided for @payment_card_holder_name.
  ///
  /// In en, this message translates to:
  /// **'Cardholder name'**
  String get payment_card_holder_name;

  /// No description provided for @payment_card_cvv_cvc_name.
  ///
  /// In en, this message translates to:
  /// **'CVV/CVC code'**
  String get payment_card_cvv_cvc_name;

  /// No description provided for @payment_card_number.
  ///
  /// In en, this message translates to:
  /// **'Card number'**
  String get payment_card_number;

  /// No description provided for @payment_payme.
  ///
  /// In en, this message translates to:
  /// **'Wallet payme'**
  String get payment_payme;

  /// No description provided for @payment_card_number_empty.
  ///
  /// In en, this message translates to:
  /// **'Card number is required'**
  String get payment_card_number_empty;

  /// No description provided for @payment_card_day_exit.
  ///
  /// In en, this message translates to:
  /// **'Expiration date is required'**
  String get payment_card_day_exit;

  /// No description provided for @payment_ccv_empty.
  ///
  /// In en, this message translates to:
  /// **'CVV code is required'**
  String get payment_ccv_empty;

  /// No description provided for @payment_domestic.
  ///
  /// In en, this message translates to:
  /// **'ATM or iBanking cards of domestic banks (in Vietnam)'**
  String get payment_domestic;

  /// No description provided for @payment_stripe.
  ///
  /// In en, this message translates to:
  /// **'International payment card (Visa/Master)'**
  String get payment_stripe;

  /// No description provided for @payment_card_date_expired.
  ///
  /// In en, this message translates to:
  /// **'Date expired'**
  String get payment_card_date_expired;

  /// No description provided for @payment_error_secure_long.
  ///
  /// In en, this message translates to:
  /// **'Security code is too long'**
  String get payment_error_secure_long;

  /// No description provided for @payment_error_secure_shorted.
  ///
  /// In en, this message translates to:
  /// **'Security code is too short for this card type'**
  String get payment_error_secure_shorted;

  /// No description provided for @payment_error_secure_alphabet.
  ///
  /// In en, this message translates to:
  /// **'Alphabetic characters are not allowed'**
  String get payment_error_secure_alphabet;

  /// No description provided for @payment_error_no_secure.
  ///
  /// In en, this message translates to:
  /// **'\'No security code given\''**
  String get payment_error_no_secure;

  /// No description provided for @payment_error_no_card_number.
  ///
  /// In en, this message translates to:
  /// **'No input or contains non-numerical characters'**
  String get payment_error_no_card_number;

  /// No description provided for @payment_error_number_card_default.
  ///
  /// In en, this message translates to:
  /// **'The card number is incorrect'**
  String get payment_error_number_card_default;

  /// No description provided for @payment_error_card_has_expired.
  ///
  /// In en, this message translates to:
  /// **'Card has expired'**
  String get payment_error_card_has_expired;

  /// No description provided for @payment_error_card_has_expired_year.
  ///
  /// In en, this message translates to:
  /// **'Card has expired this year'**
  String get payment_error_card_has_expired_year;

  /// No description provided for @payment_error_card_date_must_only_number.
  ///
  /// In en, this message translates to:
  /// **'Must have only numbers in dates'**
  String get payment_error_card_date_must_only_number;

  /// No description provided for @payment_error_card_date_is_3_digits.
  ///
  /// In en, this message translates to:
  /// **'Expiration year is 3 digits long'**
  String get payment_error_card_date_is_3_digits;

  /// No description provided for @payment_error_card_date_is_4_digits.
  ///
  /// In en, this message translates to:
  /// **'Expiration year is longer than 4 digits'**
  String get payment_error_card_date_is_4_digits;

  /// No description provided for @payment_error_card_date_only_number_in_date.
  ///
  /// In en, this message translates to:
  /// **'Must have only numbers in dates'**
  String get payment_error_card_date_only_number_in_date;

  /// No description provided for @payment_error_connect_title.
  ///
  /// In en, this message translates to:
  /// **'Connection error'**
  String get payment_error_connect_title;

  /// No description provided for @payment_error_connect_message.
  ///
  /// In en, this message translates to:
  /// **'The network connection is not stable. Please check the connection on your device again'**
  String get payment_error_connect_message;

  /// No description provided for @payment_error_not_load_title.
  ///
  /// In en, this message translates to:
  /// **'Page load error'**
  String get payment_error_not_load_title;

  /// No description provided for @payment_error_not_load_message.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while connecting to the checkout page.'**
  String get payment_error_not_load_message;

  /// No description provided for @payment_error_card_number_lenght.
  ///
  /// In en, this message translates to:
  /// **'Card number is greater than 19 digits'**
  String get payment_error_card_number_lenght;

  /// No description provided for @payment_error_no_date.
  ///
  /// In en, this message translates to:
  /// **'No date given'**
  String get payment_error_no_date;

  /// No description provided for @payment_error_invalid_date.
  ///
  /// In en, this message translates to:
  /// **'Invalid date format or invalid dates'**
  String get payment_error_invalid_date;

  /// No description provided for @payment_error_invalid_year.
  ///
  /// In en, this message translates to:
  /// **'Must have only numbers in dates'**
  String get payment_error_invalid_year;

  /// No description provided for @payment_error_invalid_ccv.
  ///
  /// In en, this message translates to:
  /// **'Invalid CCV'**
  String get payment_error_invalid_ccv;

  /// No description provided for @payment_error_invalid_card_holder.
  ///
  /// In en, this message translates to:
  /// **'Invalid Card Holder'**
  String get payment_error_invalid_card_holder;

  /// No description provided for @payment_alert_select_payment_method_null.
  ///
  /// In en, this message translates to:
  /// **'Please select a payment method'**
  String get payment_alert_select_payment_method_null;

  /// No description provided for @payment_alert_card_information_incorrect.
  ///
  /// In en, this message translates to:
  /// **'Card information is incorrect. Please check again'**
  String get payment_alert_card_information_incorrect;

  /// No description provided for @payment_alert_dialog_title.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get payment_alert_dialog_title;

  /// No description provided for @payment_alert_message_dialog_message.
  ///
  /// In en, this message translates to:
  /// **'To ensure a successful payment process, please do not close the app or exit during checkout.'**
  String get payment_alert_message_dialog_message;

  /// No description provided for @payment_alert_dialog_message_payment_error.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while processing your payment. Please check and try again.'**
  String get payment_alert_dialog_message_payment_error;

  /// No description provided for @payment_hint_text_country.
  ///
  /// In en, this message translates to:
  /// **'Country...'**
  String get payment_hint_text_country;

  /// No description provided for @payment_hint_text_province.
  ///
  /// In en, this message translates to:
  /// **'City/State...'**
  String get payment_hint_text_province;

  /// No description provided for @payment_show_message_dialog_title.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get payment_show_message_dialog_title;

  /// No description provided for @payment_show_message_dialog_message.
  ///
  /// In en, this message translates to:
  /// **'Do you want to exit the payment ?'**
  String get payment_show_message_dialog_message;

  /// No description provided for @payment_show_message_dialog_negative.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get payment_show_message_dialog_negative;

  /// No description provided for @payment_show_message_dialog_action.
  ///
  /// In en, this message translates to:
  /// **'Agree'**
  String get payment_show_message_dialog_action;

  /// No description provided for @payment_bank_page_title.
  ///
  /// In en, this message translates to:
  /// **'To ensure a smooth payment process, please do not turn off your application before successful payment!'**
  String get payment_bank_page_title;

  /// No description provided for @payment_error_expired_date.
  ///
  /// In en, this message translates to:
  /// **'Card has expired'**
  String get payment_error_expired_date;

  /// No description provided for @payment_coin_not_available.
  ///
  /// In en, this message translates to:
  /// **'Coins not available. Please check again.'**
  String get payment_coin_not_available;

  /// No description provided for @payment_point_not_available.
  ///
  /// In en, this message translates to:
  /// **'Points not available. Please check again.'**
  String get payment_point_not_available;

  /// No description provided for @payment_voucher_not_available.
  ///
  /// In en, this message translates to:
  /// **'Voucher not available. Please check again.'**
  String get payment_voucher_not_available;

  /// No description provided for @payment_fee_change_total_order.
  ///
  /// In en, this message translates to:
  /// **'Total order has changed from'**
  String get payment_fee_change_total_order;

  /// No description provided for @payment_fee_change_to.
  ///
  /// In en, this message translates to:
  /// **'to'**
  String get payment_fee_change_to;

  /// No description provided for @payment_fee_change_choose_voucher_point_coint.
  ///
  /// In en, this message translates to:
  /// **'Please re-select Voucher/Coins/Points if available.'**
  String get payment_fee_change_choose_voucher_point_coint;

  /// No description provided for @payment_halo_wallet.
  ///
  /// In en, this message translates to:
  /// **'Hahalolo payment account'**
  String get payment_halo_wallet;

  /// No description provided for @payment_available_balance.
  ///
  /// In en, this message translates to:
  /// **'Available balance:'**
  String get payment_available_balance;

  /// No description provided for @hotel_hand_note_hotel_policy_check_out.
  ///
  /// In en, this message translates to:
  /// **'- Check-out before {checkout}'**
  String hotel_hand_note_hotel_policy_check_out(Object checkout);

  /// No description provided for @hotel_hand_note_hotel_policy_check_in.
  ///
  /// In en, this message translates to:
  /// **'- Check-in after {checkin}'**
  String hotel_hand_note_hotel_policy_check_in(Object checkin);

  /// No description provided for @hotel_hand_note_hotel_policy_cancelation_title.
  ///
  /// In en, this message translates to:
  /// **'Cancelation policy'**
  String get hotel_hand_note_hotel_policy_cancelation_title;

  /// No description provided for @hotel_hand_note_hotel_policy_cancelation_des.
  ///
  /// In en, this message translates to:
  /// **'Free cancelation timelines are based on the property\'s time zone and specified by the property\'s cancelation policy.'**
  String get hotel_hand_note_hotel_policy_cancelation_des;

  /// No description provided for @hotel_hand_note_hotel_num_room_num_night.
  ///
  /// In en, this message translates to:
  /// **'{room} x room, {night} x night'**
  String hotel_hand_note_hotel_num_room_num_night(Object room, Object night);

  /// No description provided for @hotel_hand_note_detail_tax_fee.
  ///
  /// In en, this message translates to:
  /// **'Taxes and fees'**
  String get hotel_hand_note_detail_tax_fee;

  /// No description provided for @hotel_hand_note_detail_total_amount.
  ///
  /// In en, this message translates to:
  /// **'Total payment'**
  String get hotel_hand_note_detail_total_amount;

  /// No description provided for @hotel_hand_note_detail_success.
  ///
  /// In en, this message translates to:
  /// **'Successful'**
  String get hotel_hand_note_detail_success;

  /// No description provided for @hotel_hand_note_detail_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get hotel_hand_note_detail_failed;

  /// No description provided for @hotel_hand_note_detail_postpaid.
  ///
  /// In en, this message translates to:
  /// **'Postpaid'**
  String get hotel_hand_note_detail_postpaid;

  /// No description provided for @hotel_hand_note_detail_prepaid.
  ///
  /// In en, this message translates to:
  /// **'Prepaid'**
  String get hotel_hand_note_detail_prepaid;

  /// No description provided for @hotel_hand_note_detail_operation_history.
  ///
  /// In en, this message translates to:
  /// **'Activity history'**
  String get hotel_hand_note_detail_operation_history;

  /// No description provided for @hotel_hand_note_detail_order_cancel_info.
  ///
  /// In en, this message translates to:
  /// **'Order cancelation information'**
  String get hotel_hand_note_detail_order_cancel_info;

  /// No description provided for @hotel_hand_note_detail_order_total_order.
  ///
  /// In en, this message translates to:
  /// **'Order total'**
  String get hotel_hand_note_detail_order_total_order;

  /// No description provided for @hotel_hand_note_detail_total_money.
  ///
  /// In en, this message translates to:
  /// **'Total amount paid'**
  String get hotel_hand_note_detail_total_money;

  /// No description provided for @hotel_hand_note_detail_coin.
  ///
  /// In en, this message translates to:
  /// **'coins'**
  String get hotel_hand_note_detail_coin;

  /// No description provided for @hotel_hand_note_detail_fee_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancelation fee'**
  String get hotel_hand_note_detail_fee_cancel;

  /// No description provided for @hotel_hand_note_detail_refund_amount.
  ///
  /// In en, this message translates to:
  /// **'Estimated refund amount'**
  String get hotel_hand_note_detail_refund_amount;

  /// No description provided for @hotel_hand_note_detail_coin_refund_amount.
  ///
  /// In en, this message translates to:
  /// **'Estimated refund coins'**
  String get hotel_hand_note_detail_coin_refund_amount;

  /// No description provided for @hotel_hand_note_detail_payment_info.
  ///
  /// In en, this message translates to:
  /// **'Payment information'**
  String get hotel_hand_note_detail_payment_info;

  /// No description provided for @hotel_hand_note_detail_customer_service.
  ///
  /// In en, this message translates to:
  /// **'The coupon code is not refundable. Please contact our Customer Service Center for returning your coupon code.'**
  String get hotel_hand_note_detail_customer_service;

  /// No description provided for @hotel_hand_note_detail_note_refund.
  ///
  /// In en, this message translates to:
  /// **'Refund time (From the date of cancelation): 5 to 7 days (For Alepay and Payme payment gateways) or 7 to 15 days (For Stripe payment gateway).'**
  String get hotel_hand_note_detail_note_refund;

  /// No description provided for @hotel_hand_note_detail_reason_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancelation reasons'**
  String get hotel_hand_note_detail_reason_cancel;

  /// No description provided for @hotel_hand_note_detail_checking_out.
  ///
  /// In en, this message translates to:
  /// **'Check-in and check-out time'**
  String get hotel_hand_note_detail_checking_out;

  /// No description provided for @hotel_hand_note_detail_check_in_after.
  ///
  /// In en, this message translates to:
  /// **'Check-in after'**
  String get hotel_hand_note_detail_check_in_after;

  /// No description provided for @hotel_hand_note_detail_check_out_before.
  ///
  /// In en, this message translates to:
  /// **'Check-out before'**
  String get hotel_hand_note_detail_check_out_before;

  /// No description provided for @hotel_hand_note_detail_person_day.
  ///
  /// In en, this message translates to:
  /// **'person/day'**
  String get hotel_hand_note_detail_person_day;

  /// No description provided for @hotel_hand_note_detail_free.
  ///
  /// In en, this message translates to:
  /// **'Free.'**
  String get hotel_hand_note_detail_free;

  /// No description provided for @hotel_hand_note_detail_day.
  ///
  /// In en, this message translates to:
  /// **'/day'**
  String get hotel_hand_note_detail_day;

  /// No description provided for @hotel_hand_note_detail_note_hotel.
  ///
  /// In en, this message translates to:
  /// **'Free cancelation timelines are based on the property\'s time zone and specified by the property\'s cancelation policy.'**
  String get hotel_hand_note_detail_note_hotel;

  /// No description provided for @hotel_hand_note_detail_room_service.
  ///
  /// In en, this message translates to:
  /// **'Room services'**
  String get hotel_hand_note_detail_room_service;

  /// No description provided for @hotel_hand_note_detail_facilities_service.
  ///
  /// In en, this message translates to:
  /// **'Facilities and room services'**
  String get hotel_hand_note_detail_facilities_service;

  /// No description provided for @hotel_hand_note_detail_person_contact.
  ///
  /// In en, this message translates to:
  /// **'Contact person'**
  String get hotel_hand_note_detail_person_contact;

  /// No description provided for @hotel_hand_note_detail_telephone_num.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get hotel_hand_note_detail_telephone_num;

  /// No description provided for @hotel_hand_note_detail_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get hotel_hand_note_detail_email;

  /// No description provided for @hotel_hand_note_detail_nationality.
  ///
  /// In en, this message translates to:
  /// **'Nationality'**
  String get hotel_hand_note_detail_nationality;

  /// No description provided for @hotel_hand_note_detail_address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get hotel_hand_note_detail_address;

  /// No description provided for @hotel_hand_note_detail_paid.
  ///
  /// In en, this message translates to:
  /// **'Paid amount'**
  String get hotel_hand_note_detail_paid;

  /// No description provided for @hotel_hand_note_detail_rest.
  ///
  /// In en, this message translates to:
  /// **'Unpaid amount'**
  String get hotel_hand_note_detail_rest;

  /// No description provided for @hotel_hand_note_detail_payment_methods.
  ///
  /// In en, this message translates to:
  /// **'Payment method'**
  String get hotel_hand_note_detail_payment_methods;

  /// No description provided for @hotel_hand_note_detail_check_in_info.
  ///
  /// In en, this message translates to:
  /// **'Check-in Info'**
  String get hotel_hand_note_detail_check_in_info;

  /// No description provided for @hotel_hand_note_detail_guest_name.
  ///
  /// In en, this message translates to:
  /// **'Guest name'**
  String get hotel_hand_note_detail_guest_name;

  /// No description provided for @hotel_hand_note_detail_policy_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancelations made before'**
  String get hotel_hand_note_detail_policy_cancel;

  /// No description provided for @hotel_hand_note_detail_hour.
  ///
  /// In en, this message translates to:
  /// **'{hour} hours'**
  String hotel_hand_note_detail_hour(Object hour);

  /// No description provided for @hotel_hand_note_detail_minutes.
  ///
  /// In en, this message translates to:
  /// **'{minutes} minutes'**
  String hotel_hand_note_detail_minutes(Object hour);

  /// No description provided for @hotel_hand_note_detail_refund.
  ///
  /// In en, this message translates to:
  /// **':will be refunded'**
  String get hotel_hand_note_detail_refund;

  /// No description provided for @hotel_hand_note_detail_price_room.
  ///
  /// In en, this message translates to:
  /// **'of room rate for '**
  String get hotel_hand_note_detail_price_room;

  /// No description provided for @hotel_hand_note_detail_one_night.
  ///
  /// In en, this message translates to:
  /// **'the first night.'**
  String get hotel_hand_note_detail_one_night;

  /// No description provided for @hotel_hand_note_detail_all_night.
  ///
  /// In en, this message translates to:
  /// **'all nights.'**
  String get hotel_hand_note_detail_all_night;

  /// No description provided for @hotel_hand_note_detail_policy.
  ///
  /// In en, this message translates to:
  /// **'Cancelation policy'**
  String get hotel_hand_note_detail_policy;

  /// No description provided for @hotel_hand_note_detail_children_note.
  ///
  /// In en, this message translates to:
  /// **'Children aged from {age} are allowed.'**
  String hotel_hand_note_detail_children_note(Object age);

  /// No description provided for @hotel_hand_note_detail_pet_note.
  ///
  /// In en, this message translates to:
  /// **'Pets are allowed. Pet fee: {fee} (Pet fee is paid at the accommodation).'**
  String hotel_hand_note_detail_pet_note(Object fee);

  /// No description provided for @hotel_hand_note_detail_children.
  ///
  /// In en, this message translates to:
  /// **'Children'**
  String get hotel_hand_note_detail_children;

  /// No description provided for @hotel_hand_note_detail_pet.
  ///
  /// In en, this message translates to:
  /// **'Pets'**
  String get hotel_hand_note_detail_pet;

  /// No description provided for @hotel_hand_note_detail_total_room_rate.
  ///
  /// In en, this message translates to:
  /// **'Total room price'**
  String get hotel_hand_note_detail_total_room_rate;

  /// No description provided for @hotel_hand_note_detail_total_room_order.
  ///
  /// In en, this message translates to:
  /// **'No.of rooms'**
  String get hotel_hand_note_detail_total_room_order;

  /// No description provided for @hotel_hand_note_detail_room_information.
  ///
  /// In en, this message translates to:
  /// **'Room information'**
  String get hotel_hand_note_detail_room_information;

  /// No description provided for @hotel_hand_note_detail_person_x.
  ///
  /// In en, this message translates to:
  /// **'{x} people'**
  String hotel_hand_note_detail_person_x(Object x);

  /// No description provided for @hotel_hand_note_detail_service_utilities.
  ///
  /// In en, this message translates to:
  /// **'Utilities, room services'**
  String get hotel_hand_note_detail_service_utilities;

  /// No description provided for @hotel_hand_note_detail_waiting_service.
  ///
  /// In en, this message translates to:
  /// **'Awaiting fulfillment'**
  String get hotel_hand_note_detail_waiting_service;

  /// No description provided for @hotel_hand_note_detail_in_service.
  ///
  /// In en, this message translates to:
  /// **'Ongoing'**
  String get hotel_hand_note_detail_in_service;

  /// No description provided for @hotel_hand_note_detail_completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get hotel_hand_note_detail_completed;

  /// No description provided for @hotel_hand_note_detail_waiting_cancellation.
  ///
  /// In en, this message translates to:
  /// **'Awaiting cancelation'**
  String get hotel_hand_note_detail_waiting_cancellation;

  /// No description provided for @hotel_hand_note_detail_canceled.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get hotel_hand_note_detail_canceled;

  /// No description provided for @hotel_hand_note_detail_awaiting_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Awaiting confirmation'**
  String get hotel_hand_note_detail_awaiting_confirmation;

  /// No description provided for @hotel_hand_note_detail_not_refund.
  ///
  /// In en, this message translates to:
  /// **'You will not receive a refund or paid amount upon cancelation'**
  String get hotel_hand_note_detail_not_refund;

  /// No description provided for @hotel_hand_note_detail_other_required.
  ///
  /// In en, this message translates to:
  /// **'Other request'**
  String get hotel_hand_note_detail_other_required;

  /// No description provided for @hotel_hand_note_detail_point_refund_amount.
  ///
  /// In en, this message translates to:
  /// **'Estimated refund points'**
  String get hotel_hand_note_detail_point_refund_amount;

  /// No description provided for @hotel_hand_note_detail_point.
  ///
  /// In en, this message translates to:
  /// **'{x} points'**
  String hotel_hand_note_detail_point(Object x);

  /// No description provided for @hotel_input_title_start_date.
  ///
  /// In en, this message translates to:
  /// **'Check-in date'**
  String get hotel_input_title_start_date;

  /// No description provided for @hotel_input_title_end_date.
  ///
  /// In en, this message translates to:
  /// **'Check-out date'**
  String get hotel_input_title_end_date;

  /// No description provided for @hotel_input_title_choose_date.
  ///
  /// In en, this message translates to:
  /// **'Select a date'**
  String get hotel_input_title_choose_date;

  /// No description provided for @hotel_input_title_choose.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get hotel_input_title_choose;

  /// No description provided for @hotel_hand_note_price_detail_payment_type.
  ///
  /// In en, this message translates to:
  /// **'Form of payment'**
  String get hotel_hand_note_price_detail_payment_type;

  /// No description provided for @hotel_hand_note_price_detail_payment_date.
  ///
  /// In en, this message translates to:
  /// **'Payment date '**
  String get hotel_hand_note_price_detail_payment_date;

  /// No description provided for @hotel_hand_note_price_detail_price.
  ///
  /// In en, this message translates to:
  /// **'View price details'**
  String get hotel_hand_note_price_detail_price;

  /// No description provided for @hotel_hand_note_price_detail_title.
  ///
  /// In en, this message translates to:
  /// **'Price details'**
  String get hotel_hand_note_price_detail_title;

  /// No description provided for @hotel_hand_note_price_detail_contact_info.
  ///
  /// In en, this message translates to:
  /// **'Contact\'s information'**
  String get hotel_hand_note_price_detail_contact_info;

  /// No description provided for @hotel_hand_note_utilities_title.
  ///
  /// In en, this message translates to:
  /// **'Amenities'**
  String get hotel_hand_note_utilities_title;

  /// No description provided for @hotel_hand_note_services_title.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get hotel_hand_note_services_title;

  /// No description provided for @hotel_hand_note_search_required_code.
  ///
  /// In en, this message translates to:
  /// **'Booking number is required.'**
  String get hotel_hand_note_search_required_code;

  /// No description provided for @hotel_cancel_hotel.
  ///
  /// In en, this message translates to:
  /// **'Cancelation'**
  String get hotel_cancel_hotel;

  /// No description provided for @hotel_room_number.
  ///
  /// In en, this message translates to:
  /// **'Room'**
  String get hotel_room_number;

  /// No description provided for @hotel_show_list.
  ///
  /// In en, this message translates to:
  /// **'Show list'**
  String get hotel_show_list;

  /// No description provided for @hotel_not_found.
  ///
  /// In en, this message translates to:
  /// **'Hotel not found!'**
  String get hotel_not_found;

  /// No description provided for @hotel_map.
  ///
  /// In en, this message translates to:
  /// **'Map'**
  String get hotel_map;

  /// No description provided for @hotel_list.
  ///
  /// In en, this message translates to:
  /// **'List'**
  String get hotel_list;

  /// No description provided for @hotel_from_the_center.
  ///
  /// In en, this message translates to:
  /// **'From center'**
  String get hotel_from_the_center;

  /// No description provided for @hotel_from_the_location.
  ///
  /// In en, this message translates to:
  /// **'From the search location'**
  String get hotel_from_the_location;

  /// No description provided for @hotel_right_in_the_center.
  ///
  /// In en, this message translates to:
  /// **'In city center'**
  String get hotel_right_in_the_center;

  /// No description provided for @hotel_breakfast_is_served.
  ///
  /// In en, this message translates to:
  /// **'Free breakfast'**
  String get hotel_breakfast_is_served;

  /// No description provided for @hotel_no_breakfast_served.
  ///
  /// In en, this message translates to:
  /// **'No breakfast provided'**
  String get hotel_no_breakfast_served;

  /// No description provided for @hotel_dinner_is_served.
  ///
  /// In en, this message translates to:
  /// **'Dinner provided'**
  String get hotel_dinner_is_served;

  /// No description provided for @hotel_no_dinner_service.
  ///
  /// In en, this message translates to:
  /// **'No dinner provided'**
  String get hotel_no_dinner_service;

  /// No description provided for @hotel_lunch_is_served.
  ///
  /// In en, this message translates to:
  /// **'Lunch provided'**
  String get hotel_lunch_is_served;

  /// No description provided for @hotel_no_lunch_service.
  ///
  /// In en, this message translates to:
  /// **'No lunch provided'**
  String get hotel_no_lunch_service;

  /// No description provided for @hotel_allow_smoking.
  ///
  /// In en, this message translates to:
  /// **'Smoking is allowed'**
  String get hotel_allow_smoking;

  /// No description provided for @hotel_no_smoking.
  ///
  /// In en, this message translates to:
  /// **'Smoking is not allowed'**
  String get hotel_no_smoking;

  /// No description provided for @hotel_no_refund.
  ///
  /// In en, this message translates to:
  /// **'Cancelation without refund'**
  String get hotel_no_refund;

  /// No description provided for @hotel_without_fee.
  ///
  /// In en, this message translates to:
  /// **'Cancelation is charged'**
  String get hotel_without_fee;

  /// No description provided for @hotel_free_cancel.
  ///
  /// In en, this message translates to:
  /// **'FREE cancelation'**
  String get hotel_free_cancel;

  /// No description provided for @hotel_pay_later.
  ///
  /// In en, this message translates to:
  /// **'Book now, pay later'**
  String get hotel_pay_later;

  /// No description provided for @hotel_fee.
  ///
  /// In en, this message translates to:
  /// **'Breakfast provided'**
  String get hotel_fee;

  /// No description provided for @hotel_free.
  ///
  /// In en, this message translates to:
  /// **'FREE breakfast'**
  String get hotel_free;

  /// No description provided for @hotel_not_refund.
  ///
  /// In en, this message translates to:
  /// **'You will not receive a refund or paid amount upon cancelation'**
  String get hotel_not_refund;

  /// No description provided for @hotel_no_vacancy.
  ///
  /// In en, this message translates to:
  /// **'Sold out'**
  String get hotel_no_vacancy;

  /// No description provided for @hotel_choose_room.
  ///
  /// In en, this message translates to:
  /// **'Select room'**
  String get hotel_choose_room;

  /// No description provided for @hotel_change_date.
  ///
  /// In en, this message translates to:
  /// **'Change date'**
  String get hotel_change_date;

  /// No description provided for @hotel_change_price_display.
  ///
  /// In en, this message translates to:
  /// **'Show price'**
  String get hotel_change_price_display;

  /// No description provided for @hotel_continue.
  ///
  /// In en, this message translates to:
  /// **'Only'**
  String get hotel_continue;

  /// No description provided for @hotel_room_available.
  ///
  /// In en, this message translates to:
  /// **'left'**
  String get hotel_room_available;

  /// No description provided for @hotel_room.
  ///
  /// In en, this message translates to:
  /// **'room'**
  String get hotel_room;

  /// No description provided for @hotel_night.
  ///
  /// In en, this message translates to:
  /// **'night'**
  String get hotel_night;

  /// No description provided for @hotel_date_checking.
  ///
  /// In en, this message translates to:
  /// **'Check-in date'**
  String get hotel_date_checking;

  /// No description provided for @hotel_date_checkout.
  ///
  /// In en, this message translates to:
  /// **'Check-out date'**
  String get hotel_date_checkout;

  /// No description provided for @hotel_search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get hotel_search;

  /// No description provided for @hotel_promotion.
  ///
  /// In en, this message translates to:
  /// **'Promotion'**
  String get hotel_promotion;

  /// No description provided for @hotel_promotions.
  ///
  /// In en, this message translates to:
  /// **'Promotions'**
  String get hotel_promotions;

  /// No description provided for @hotel_applying.
  ///
  /// In en, this message translates to:
  /// **'applying'**
  String get hotel_applying;

  /// No description provided for @hotel_promotion_applying.
  ///
  /// In en, this message translates to:
  /// **'applicable promotion'**
  String get hotel_promotion_applying;

  /// No description provided for @hotel_promotions_applying.
  ///
  /// In en, this message translates to:
  /// **'applicable promotions'**
  String get hotel_promotions_applying;

  /// No description provided for @hotel_title_promotions_applying.
  ///
  /// In en, this message translates to:
  /// **'Applicable promotion'**
  String get hotel_title_promotions_applying;

  /// No description provided for @hotel_see_detail.
  ///
  /// In en, this message translates to:
  /// **'View details'**
  String get hotel_see_detail;

  /// No description provided for @hotel_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancelation within {x}hours before check-in time will be refunded {y}% of room rate for'**
  String hotel_cancel(Object x, Object y);

  /// No description provided for @hotel_discount_0.
  ///
  /// In en, this message translates to:
  /// **'Get {x} off per night rate when guests stay between {y}-{z}.'**
  String hotel_discount_0(Object x, Object y, Object z);

  /// No description provided for @hotel_discount_0_max.
  ///
  /// In en, this message translates to:
  /// **'Get {x} off per night rate, (maximum {a} on a booking order) when guests stay between {y}-{z}.'**
  String hotel_discount_0_max(Object x, Object y, Object z, Object a);

  /// No description provided for @hotel_discount_1.
  ///
  /// In en, this message translates to:
  /// **'{x} off for {y} days advance bookings. Applicable when guests stay from {z}'**
  String hotel_discount_1(Object x, Object y, Object z);

  /// No description provided for @hotel_discount_1_max.
  ///
  /// In en, this message translates to:
  /// **'{x} off, maximum {y} for {z} days advance bookings. Applicable when guests stay from {a}'**
  String hotel_discount_1_max(Object x, Object y, Object z, Object a);

  /// No description provided for @hotel_discount_1_max_not_upto.
  ///
  /// In en, this message translates to:
  /// **'{x} off for {z} days advance bookings. Applicable when guests stay from {a}'**
  String hotel_discount_1_max_not_upto(Object x, Object z, Object a);

  /// No description provided for @hotel_discount_2.
  ///
  /// In en, this message translates to:
  /// **'{x} off for bookings of more than {y} nights.  Applicable when guests stay from {a}'**
  String hotel_discount_2(Object x, Object y, Object a);

  /// No description provided for @hotel_discount_2_max.
  ///
  /// In en, this message translates to:
  /// **'{x} off, maximum {y} for bookings of more than {z} nights. Applicable when guests stay from {a}'**
  String hotel_discount_2_max(Object x, Object y, Object z, Object a);

  /// No description provided for @hotel_discount_2_max_not_upto.
  ///
  /// In en, this message translates to:
  /// **'{x} off for bookings of more than {z} nights. Applicable when guests stay from {a}'**
  String hotel_discount_2_max_not_upto(Object x, Object z, Object a);

  /// No description provided for @hotel_all_night.
  ///
  /// In en, this message translates to:
  /// **'all nights'**
  String get hotel_all_night;

  /// No description provided for @hotel_first_night.
  ///
  /// In en, this message translates to:
  /// **'first night'**
  String get hotel_first_night;

  /// No description provided for @hotel_rating.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get hotel_rating;

  /// No description provided for @hotel_wonderful.
  ///
  /// In en, this message translates to:
  /// **'Excellent'**
  String get hotel_wonderful;

  /// No description provided for @hotel_very_good.
  ///
  /// In en, this message translates to:
  /// **'Very good'**
  String get hotel_very_good;

  /// No description provided for @hotel_satisfied.
  ///
  /// In en, this message translates to:
  /// **'Satisfied'**
  String get hotel_satisfied;

  /// No description provided for @hotel_medium.
  ///
  /// In en, this message translates to:
  /// **'Average'**
  String get hotel_medium;

  /// No description provided for @hotel_bad.
  ///
  /// In en, this message translates to:
  /// **'Poor'**
  String get hotel_bad;

  /// No description provided for @hotel_hand_note_consult_book_room.
  ///
  /// In en, this message translates to:
  /// **'Look up booking number'**
  String get hotel_hand_note_consult_book_room;

  /// No description provided for @hotel_hand_note_enter_code_search_info.
  ///
  /// In en, this message translates to:
  /// **'Enter your booking number to look up your reservation information'**
  String get hotel_hand_note_enter_code_search_info;

  /// No description provided for @hotel_hand_note_reservation_code.
  ///
  /// In en, this message translates to:
  /// **'Booking number'**
  String get hotel_hand_note_reservation_code;

  /// No description provided for @hotel_hand_note_can_not_find_hotel.
  ///
  /// In en, this message translates to:
  /// **'Sorry, we couldn\'t find any hotels matching your search.'**
  String get hotel_hand_note_can_not_find_hotel;

  /// No description provided for @hotel_hand_note_search_night.
  ///
  /// In en, this message translates to:
  /// **'No. of nights'**
  String get hotel_hand_note_search_night;

  /// No description provided for @hotel_hand_note_num_room.
  ///
  /// In en, this message translates to:
  /// **'No. of rooms'**
  String get hotel_hand_note_num_room;

  /// No description provided for @hotel_hand_note_status_booking.
  ///
  /// In en, this message translates to:
  /// **'Booking status'**
  String get hotel_hand_note_status_booking;

  /// No description provided for @hotel_hand_note_booked.
  ///
  /// In en, this message translates to:
  /// **'Booked'**
  String get hotel_hand_note_booked;

  /// No description provided for @hotel_hand_note_dont_booked.
  ///
  /// In en, this message translates to:
  /// **'Haven\'t booked yet'**
  String get hotel_hand_note_dont_booked;

  /// No description provided for @hotel_hand_note_total_price.
  ///
  /// In en, this message translates to:
  /// **'Total price'**
  String get hotel_hand_note_total_price;

  /// No description provided for @hotel_hand_note_status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get hotel_hand_note_status;

  /// No description provided for @hotel_hand_note_payment_after.
  ///
  /// In en, this message translates to:
  /// **'Please pay in advance'**
  String get hotel_hand_note_payment_after;

  /// No description provided for @hotel_hand_note_pay_now.
  ///
  /// In en, this message translates to:
  /// **'Pay now'**
  String get hotel_hand_note_pay_now;

  /// No description provided for @hotel_hand_note_info_book_room.
  ///
  /// In en, this message translates to:
  /// **'Booking information '**
  String get hotel_hand_note_info_book_room;

  /// No description provided for @hotel_hand_note_code_book_room.
  ///
  /// In en, this message translates to:
  /// **'Booking number:'**
  String get hotel_hand_note_code_book_room;

  /// No description provided for @hotel_hand_note_checking.
  ///
  /// In en, this message translates to:
  /// **'Check-in '**
  String get hotel_hand_note_checking;

  /// No description provided for @hotel_hand_note_checkout.
  ///
  /// In en, this message translates to:
  /// **'Check-out'**
  String get hotel_hand_note_checkout;

  /// No description provided for @hotel_hand_note_detail.
  ///
  /// In en, this message translates to:
  /// **'View details'**
  String get hotel_hand_note_detail;

  /// No description provided for @hotel_hand_note_kind_room.
  ///
  /// In en, this message translates to:
  /// **'Room type '**
  String get hotel_hand_note_kind_room;

  /// No description provided for @hotel_hand_note_quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get hotel_hand_note_quantity;

  /// No description provided for @hotel_hand_note_room.
  ///
  /// In en, this message translates to:
  /// **'room  '**
  String get hotel_hand_note_room;

  /// No description provided for @hotel_hand_note_visited.
  ///
  /// In en, this message translates to:
  /// **'Guest'**
  String get hotel_hand_note_visited;

  /// No description provided for @hotel_hand_note_adult.
  ///
  /// In en, this message translates to:
  /// **'adult'**
  String get hotel_hand_note_adult;

  /// No description provided for @hotel_hand_note_children.
  ///
  /// In en, this message translates to:
  /// **'children'**
  String get hotel_hand_note_children;

  /// No description provided for @hotel_hand_note_number_nights.
  ///
  /// In en, this message translates to:
  /// **'No. of night stays'**
  String get hotel_hand_note_number_nights;

  /// No description provided for @hotel_hand_note_night.
  ///
  /// In en, this message translates to:
  /// **'night'**
  String get hotel_hand_note_night;

  /// No description provided for @hotel_hand_note_status_payment.
  ///
  /// In en, this message translates to:
  /// **'Payment status'**
  String get hotel_hand_note_status_payment;

  /// No description provided for @hotel_hand_note_cancel_order.
  ///
  /// In en, this message translates to:
  /// **'Cancel order'**
  String get hotel_hand_note_cancel_order;

  /// No description provided for @hotel_hand_note_info_refund.
  ///
  /// In en, this message translates to:
  /// **'Refund information'**
  String get hotel_hand_note_info_refund;

  /// No description provided for @hotel_hand_note_rate_experience.
  ///
  /// In en, this message translates to:
  /// **'Review your experience at'**
  String get hotel_hand_note_rate_experience;

  /// No description provided for @hotel_hand_note_rate.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get hotel_hand_note_rate;

  /// No description provided for @hotel_hand_note_see_rate.
  ///
  /// In en, this message translates to:
  /// **'See reviews'**
  String get hotel_hand_note_see_rate;

  /// No description provided for @hotel_hand_note_rate_overall_rating.
  ///
  /// In en, this message translates to:
  /// **'Your overall review at the hotel'**
  String get hotel_hand_note_rate_overall_rating;

  /// No description provided for @hotel_hand_note_rate_average.
  ///
  /// In en, this message translates to:
  /// **'Average'**
  String get hotel_hand_note_rate_average;

  /// No description provided for @hotel_hand_note_position.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get hotel_hand_note_position;

  /// No description provided for @hotel_hand_note_price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get hotel_hand_note_price;

  /// No description provided for @hotel_hand_note_clean.
  ///
  /// In en, this message translates to:
  /// **'Cleanliness'**
  String get hotel_hand_note_clean;

  /// No description provided for @hotel_hand_note_serve.
  ///
  /// In en, this message translates to:
  /// **'Service'**
  String get hotel_hand_note_serve;

  /// No description provided for @hotel_hand_note_material_facilities.
  ///
  /// In en, this message translates to:
  /// **'Facilities'**
  String get hotel_hand_note_material_facilities;

  /// No description provided for @hotel_hand_note_review.
  ///
  /// In en, this message translates to:
  /// **'Please share your feelings and reviews.'**
  String get hotel_hand_note_review;

  /// No description provided for @hotel_hand_note_review_limit.
  ///
  /// In en, this message translates to:
  /// **'The review should have at least 2 characters.'**
  String get hotel_hand_note_review_limit;

  /// No description provided for @hotel_hand_note_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel  '**
  String get hotel_hand_note_cancel;

  /// No description provided for @hotel_hand_note_submit_review.
  ///
  /// In en, this message translates to:
  /// **'Submit review'**
  String get hotel_hand_note_submit_review;

  /// No description provided for @hotel_hand_note_room_rates.
  ///
  /// In en, this message translates to:
  /// **'Room rate'**
  String get hotel_hand_note_room_rates;

  /// No description provided for @hotel_hand_note_extra_bed.
  ///
  /// In en, this message translates to:
  /// **'Extra bed'**
  String get hotel_hand_note_extra_bed;

  /// No description provided for @hotel_hand_note_service_charge.
  ///
  /// In en, this message translates to:
  /// **'Service fee'**
  String get hotel_hand_note_service_charge;

  /// No description provided for @hotel_hand_note_payment_fees.
  ///
  /// In en, this message translates to:
  /// **'Payment fee'**
  String get hotel_hand_note_payment_fees;

  /// No description provided for @hotel_hand_note_promotion.
  ///
  /// In en, this message translates to:
  /// **'Promotion'**
  String get hotel_hand_note_promotion;

  /// No description provided for @hotel_hand_note_voucher.
  ///
  /// In en, this message translates to:
  /// **'Coupon code'**
  String get hotel_hand_note_voucher;

  /// No description provided for @hotel_hand_note_use_coins.
  ///
  /// In en, this message translates to:
  /// **'Use coins'**
  String get hotel_hand_note_use_coins;

  /// No description provided for @hotel_hand_note_rates_include.
  ///
  /// In en, this message translates to:
  /// **'Inclusive price'**
  String get hotel_hand_note_rates_include;

  /// No description provided for @hotel_hand_note_see_review_title.
  ///
  /// In en, this message translates to:
  /// **'See your review about'**
  String get hotel_hand_note_see_review_title;

  /// No description provided for @hotel_hand_note_see_review_rated_on.
  ///
  /// In en, this message translates to:
  /// **'Reviewed on {a}'**
  String hotel_hand_note_see_review_rated_on(Object a);

  /// No description provided for @hotel_hand_note_review_thank_submit.
  ///
  /// In en, this message translates to:
  /// **'Thank you for your review'**
  String get hotel_hand_note_review_thank_submit;

  /// No description provided for @hotel_hand_note_use_point.
  ///
  /// In en, this message translates to:
  /// **'Use points'**
  String get hotel_hand_note_use_point;

  /// No description provided for @hotel_hand_note_cancellation_policy_x_time_full_rate.
  ///
  /// In en, this message translates to:
  /// **'Free cancelation before {x}.'**
  String hotel_hand_note_cancellation_policy_x_time_full_rate(Object x);

  /// No description provided for @hotel_hand_note_local_time.
  ///
  /// In en, this message translates to:
  /// **'(Local time)'**
  String get hotel_hand_note_local_time;

  /// No description provided for @hotel_hand_note_hotel_apartment.
  ///
  /// In en, this message translates to:
  /// **'Apartment'**
  String get hotel_hand_note_hotel_apartment;

  /// No description provided for @hotel_hand_note_hostel.
  ///
  /// In en, this message translates to:
  /// **'Hostel'**
  String get hotel_hand_note_hostel;

  /// No description provided for @hotel_hand_note_hotel.
  ///
  /// In en, this message translates to:
  /// **'Hotel'**
  String get hotel_hand_note_hotel;

  /// No description provided for @hotel_hand_note_resort.
  ///
  /// In en, this message translates to:
  /// **'Resort'**
  String get hotel_hand_note_resort;

  /// No description provided for @hotel_hand_note_other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get hotel_hand_note_other;

  /// No description provided for @hotel_hand_note_motel.
  ///
  /// In en, this message translates to:
  /// **'Motel'**
  String get hotel_hand_note_motel;

  /// No description provided for @hotel_hand_note_villa.
  ///
  /// In en, this message translates to:
  /// **'Villa'**
  String get hotel_hand_note_villa;

  /// No description provided for @hotel_hand_note_vacation_home.
  ///
  /// In en, this message translates to:
  /// **'Vacation home'**
  String get hotel_hand_note_vacation_home;

  /// No description provided for @hotel_hand_note_homestay.
  ///
  /// In en, this message translates to:
  /// **'Homestay'**
  String get hotel_hand_note_homestay;

  /// No description provided for @hotel_hand_note_farmstay.
  ///
  /// In en, this message translates to:
  /// **'Farm stay'**
  String get hotel_hand_note_farmstay;

  /// No description provided for @hotel_hand_note_condotel.
  ///
  /// In en, this message translates to:
  /// **'Condotel'**
  String get hotel_hand_note_condotel;

  /// No description provided for @hotel_hand_note_cruise_ship.
  ///
  /// In en, this message translates to:
  /// **'Cruise'**
  String get hotel_hand_note_cruise_ship;

  /// No description provided for @hotel_hand_note_boathouse.
  ///
  /// In en, this message translates to:
  /// **'Boat'**
  String get hotel_hand_note_boathouse;

  /// No description provided for @hotel_hand_note_countryhouse.
  ///
  /// In en, this message translates to:
  /// **'Country house'**
  String get hotel_hand_note_countryhouse;

  /// No description provided for @hotel_hand_note_campground.
  ///
  /// In en, this message translates to:
  /// **'Campground'**
  String get hotel_hand_note_campground;

  /// No description provided for @hotel_hand_note_camper.
  ///
  /// In en, this message translates to:
  /// **'Motorhome'**
  String get hotel_hand_note_camper;

  /// No description provided for @hotel_hand_note_lodge.
  ///
  /// In en, this message translates to:
  /// **'Lodge'**
  String get hotel_hand_note_lodge;

  /// No description provided for @hotel_hand_note_guesthouse.
  ///
  /// In en, this message translates to:
  /// **'Guest house'**
  String get hotel_hand_note_guesthouse;

  /// No description provided for @hotel_hand_note_cancel_hotel.
  ///
  /// In en, this message translates to:
  /// **'Cancelation'**
  String get hotel_hand_note_cancel_hotel;

  /// No description provided for @hotel_update_price.
  ///
  /// In en, this message translates to:
  /// **'Updating prices'**
  String get hotel_update_price;

  /// No description provided for @hotel_distance_x_from_center.
  ///
  /// In en, this message translates to:
  /// **'{distance}{x} from center'**
  String hotel_distance_x_from_center(Object distance, Object x);

  /// No description provided for @hotel_distance_x_from_address.
  ///
  /// In en, this message translates to:
  /// **'{distance}{x} from the search location'**
  String hotel_distance_x_from_address(Object distance, Object x);

  /// No description provided for @hotel_discount_0_max_not_price.
  ///
  /// In en, this message translates to:
  /// **'{x} off per night rate when guests stay between {y}-{z}.'**
  String hotel_discount_0_max_not_price(Object x, Object y, Object z);

  /// No description provided for @hotel_add_room_num_passenger.
  ///
  /// In en, this message translates to:
  /// **'No. of rooms & guests'**
  String get hotel_add_room_num_passenger;

  /// No description provided for @hotel_add_room_children.
  ///
  /// In en, this message translates to:
  /// **'Children'**
  String get hotel_add_room_children;

  /// No description provided for @hotel_add_room_age_upto.
  ///
  /// In en, this message translates to:
  /// **'(Ages 0 - 17)'**
  String get hotel_add_room_age_upto;

  /// No description provided for @hotel_add_room_child.
  ///
  /// In en, this message translates to:
  /// **'Child'**
  String get hotel_add_room_child;

  /// No description provided for @hotel_add_room_age.
  ///
  /// In en, this message translates to:
  /// **'age'**
  String get hotel_add_room_age;

  /// No description provided for @hotel_add_room_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get hotel_add_room_cancel;

  /// No description provided for @hotel_add_room_choose_age.
  ///
  /// In en, this message translates to:
  /// **'Select age'**
  String get hotel_add_room_choose_age;

  /// No description provided for @hotel_add_room_done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get hotel_add_room_done;

  /// No description provided for @hotel_add_room_room.
  ///
  /// In en, this message translates to:
  /// **'Room'**
  String get hotel_add_room_room;

  /// No description provided for @hotel_add_room_adult.
  ///
  /// In en, this message translates to:
  /// **'Adult'**
  String get hotel_add_room_adult;

  /// No description provided for @hotel_add_room_adults.
  ///
  /// In en, this message translates to:
  /// **'Adults'**
  String get hotel_add_room_adults;

  /// No description provided for @hotel_add_room_age_children.
  ///
  /// In en, this message translates to:
  /// **'Children\'s age'**
  String get hotel_add_room_age_children;

  /// No description provided for @hotel_add_room_age_child.
  ///
  /// In en, this message translates to:
  /// **'Children\'s age'**
  String get hotel_add_room_age_child;

  /// No description provided for @hotel_add_room_condition.
  ///
  /// In en, this message translates to:
  /// **'Number of rooms and guests per room must not be greater than 9.'**
  String get hotel_add_room_condition;

  /// No description provided for @hotel_add_room_note.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get hotel_add_room_note;

  /// No description provided for @hotel_add_room_save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get hotel_add_room_save;

  /// No description provided for @hotel_cart_child.
  ///
  /// In en, this message translates to:
  /// **'Child'**
  String get hotel_cart_child;

  /// No description provided for @hotel_cart_children.
  ///
  /// In en, this message translates to:
  /// **'Children'**
  String get hotel_cart_children;

  /// No description provided for @hotel_cart_delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get hotel_cart_delete;

  /// No description provided for @hotel_cart_change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get hotel_cart_change;

  /// No description provided for @hotel_cart_book_room.
  ///
  /// In en, this message translates to:
  /// **'Book room'**
  String get hotel_cart_book_room;

  /// No description provided for @hotel_cart_night.
  ///
  /// In en, this message translates to:
  /// **'night'**
  String get hotel_cart_night;

  /// No description provided for @hotel_cart_title_included_texas_fee.
  ///
  /// In en, this message translates to:
  /// **'Taxes and fees inclusive'**
  String get hotel_cart_title_included_texas_fee;

  /// No description provided for @hotel_cart_temporary_price.
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get hotel_cart_temporary_price;

  /// No description provided for @hotel_cart_delete_order.
  ///
  /// In en, this message translates to:
  /// **'Delete order'**
  String get hotel_cart_delete_order;

  /// No description provided for @hotel_screen_cart_delete_order_confirm.
  ///
  /// In en, this message translates to:
  /// **'Do you want to delete this order?'**
  String get hotel_screen_cart_delete_order_confirm;

  /// No description provided for @hotel_order_detail_info_hotel.
  ///
  /// In en, this message translates to:
  /// **'Booking information '**
  String get hotel_order_detail_info_hotel;

  /// No description provided for @hotel_order_detail_done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get hotel_order_detail_done;

  /// No description provided for @hotel_order_detail_detail.
  ///
  /// In en, this message translates to:
  /// **'View details'**
  String get hotel_order_detail_detail;

  /// No description provided for @hotel_order_detail_book_new.
  ///
  /// In en, this message translates to:
  /// **'Book a new room'**
  String get hotel_order_detail_book_new;

  /// No description provided for @hotel_order_detail_success.
  ///
  /// In en, this message translates to:
  /// **'Booking successful'**
  String get hotel_order_detail_success;

  /// No description provided for @hotel_order_detail_requests_success.
  ///
  /// In en, this message translates to:
  /// **'Your booking request has been successfully made'**
  String get hotel_order_detail_requests_success;

  /// No description provided for @hotel_order_detail_paid.
  ///
  /// In en, this message translates to:
  /// **'(Paid).'**
  String get hotel_order_detail_paid;

  /// No description provided for @hotel_order_detail_reservation.
  ///
  /// In en, this message translates to:
  /// **'You can check booking details below.'**
  String get hotel_order_detail_reservation;

  /// No description provided for @hotel_order_detail_thank.
  ///
  /// In en, this message translates to:
  /// **'Thank you for your trust in the services of'**
  String get hotel_order_detail_thank;

  /// No description provided for @hotel_order_detail_support.
  ///
  /// In en, this message translates to:
  /// **'If you have any questions or need further assistance, please contact Hahalolo Help Center'**
  String get hotel_order_detail_support;

  /// No description provided for @hotel_order_detail_instructions.
  ///
  /// In en, this message translates to:
  /// **'for instructions.'**
  String get hotel_order_detail_instructions;

  /// No description provided for @hotel_order_detail_info_rest.
  ///
  /// In en, this message translates to:
  /// **'Property information'**
  String get hotel_order_detail_info_rest;

  /// No description provided for @hotel_order_detail_hotel.
  ///
  /// In en, this message translates to:
  /// **'Hotel'**
  String get hotel_order_detail_hotel;

  /// No description provided for @hotel_order_detail_type.
  ///
  /// In en, this message translates to:
  /// **'Room type'**
  String get hotel_order_detail_type;

  /// No description provided for @hotel_order_detail_check_in.
  ///
  /// In en, this message translates to:
  /// **'Check-in'**
  String get hotel_order_detail_check_in;

  /// No description provided for @hotel_order_detail_check_out.
  ///
  /// In en, this message translates to:
  /// **'Check-out'**
  String get hotel_order_detail_check_out;

  /// No description provided for @hotel_order_detail_visited.
  ///
  /// In en, this message translates to:
  /// **'Number of guests'**
  String get hotel_order_detail_visited;

  /// No description provided for @hotel_order_detail_adult.
  ///
  /// In en, this message translates to:
  /// **'adult'**
  String get hotel_order_detail_adult;

  /// No description provided for @hotel_order_detail_children.
  ///
  /// In en, this message translates to:
  /// **'children'**
  String get hotel_order_detail_children;

  /// No description provided for @hotel_order_detail_baby.
  ///
  /// In en, this message translates to:
  /// **'baby (Under 1 year old)'**
  String get hotel_order_detail_baby;

  /// No description provided for @hotel_order_detail_contact.
  ///
  /// In en, this message translates to:
  /// **'Contact information'**
  String get hotel_order_detail_contact;

  /// No description provided for @hotel_order_detail_lastname.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get hotel_order_detail_lastname;

  /// No description provided for @hotel_order_detail_tel_number.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get hotel_order_detail_tel_number;

  /// No description provided for @hotel_order_detail_nationality.
  ///
  /// In en, this message translates to:
  /// **'Nationality'**
  String get hotel_order_detail_nationality;

  /// No description provided for @hotel_order_detail_note.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get hotel_order_detail_note;

  /// No description provided for @hotel_order_detail_guests.
  ///
  /// In en, this message translates to:
  /// **'Guest information'**
  String get hotel_order_detail_guests;

  /// No description provided for @hotel_order_detail_trade.
  ///
  /// In en, this message translates to:
  /// **'Transaction information'**
  String get hotel_order_detail_trade;

  /// No description provided for @hotel_order_detail_order_form.
  ///
  /// In en, this message translates to:
  /// **'Order'**
  String get hotel_order_detail_order_form;

  /// No description provided for @hotel_order_detail_payment.
  ///
  /// In en, this message translates to:
  /// **'Payment amount'**
  String get hotel_order_detail_payment;

  /// No description provided for @hotel_order_detail_bed_type.
  ///
  /// In en, this message translates to:
  /// **'Bed type'**
  String get hotel_order_detail_bed_type;

  /// No description provided for @hotel_order_detail_extra_bed.
  ///
  /// In en, this message translates to:
  /// **'Extra bed'**
  String get hotel_order_detail_extra_bed;

  /// No description provided for @hotel_order_detail_bed.
  ///
  /// In en, this message translates to:
  /// **'bed'**
  String get hotel_order_detail_bed;

  /// No description provided for @hotel_order_detail_reservation_code.
  ///
  /// In en, this message translates to:
  /// **'Booking number'**
  String get hotel_order_detail_reservation_code;

  /// No description provided for @hotel_order_detail_payer.
  ///
  /// In en, this message translates to:
  /// **'Payer'**
  String get hotel_order_detail_payer;

  /// No description provided for @hotel_search_this_area.
  ///
  /// In en, this message translates to:
  /// **'Search for this area'**
  String get hotel_search_this_area;

  /// No description provided for @hotel_where.
  ///
  /// In en, this message translates to:
  /// **'Where do you want to stay?'**
  String get hotel_where;

  /// No description provided for @hotel_people.
  ///
  /// In en, this message translates to:
  /// **'{y} rooms - {x} guests'**
  String hotel_people(Object y, Object x);

  /// No description provided for @hotel_hand_note_resend_enter_code_to_complete.
  ///
  /// In en, this message translates to:
  /// **'Enter the confirmation code to complete this step.'**
  String get hotel_hand_note_resend_enter_code_to_complete;

  /// No description provided for @hotel_hand_note_refound_resend_code_to_mail.
  ///
  /// In en, this message translates to:
  /// **'We have sent you a confirmation code to email '**
  String get hotel_hand_note_refound_resend_code_to_mail;

  /// No description provided for @hotel_hand_note_refound_resend_enter_code.
  ///
  /// In en, this message translates to:
  /// **'Enter the confirmation code'**
  String get hotel_hand_note_refound_resend_enter_code;

  /// No description provided for @hotel_hand_note_refound_resend_code.
  ///
  /// In en, this message translates to:
  /// **'Resend code'**
  String get hotel_hand_note_refound_resend_code;

  /// No description provided for @hotel_hand_note_refound_resend_enter_code_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter code'**
  String get hotel_hand_note_refound_resend_enter_code_hint;

  /// No description provided for @hotel_hand_note_refound_resend_least_x_chars_error.
  ///
  /// In en, this message translates to:
  /// **'Confirmation code must be {x} characters'**
  String hotel_hand_note_refound_resend_least_x_chars_error(Object x);

  /// No description provided for @hotel_hand_note_refound_resend_empty_error.
  ///
  /// In en, this message translates to:
  /// **'Confirmation code cannot be empty'**
  String get hotel_hand_note_refound_resend_empty_error;

  /// No description provided for @hotel_hand_note_refound_resend_success.
  ///
  /// In en, this message translates to:
  /// **'Confirmation code sent'**
  String get hotel_hand_note_refound_resend_success;

  /// No description provided for @hotel_hand_note_refound_resend_2810_error.
  ///
  /// In en, this message translates to:
  /// **'Verification code sent more than 9 times/day'**
  String get hotel_hand_note_refound_resend_2810_error;

  /// No description provided for @hotel_hand_note_refound_resend_2809_error.
  ///
  /// In en, this message translates to:
  /// **'Please try again in 1 day'**
  String get hotel_hand_note_refound_resend_2809_error;

  /// No description provided for @hotel_hand_note_refound_resend_2808_error.
  ///
  /// In en, this message translates to:
  /// **'Please try again in 5 minute'**
  String get hotel_hand_note_refound_resend_2808_error;

  /// No description provided for @hotel_hand_note_refound_resend_2807_error.
  ///
  /// In en, this message translates to:
  /// **'Please try again in 1 minute'**
  String get hotel_hand_note_refound_resend_2807_error;

  /// No description provided for @hotel_hand_note_refound_resend_2004_error.
  ///
  /// In en, this message translates to:
  /// **'Failure'**
  String get hotel_hand_note_refound_resend_2004_error;

  /// No description provided for @hotel_hand_note_refound_info_2814_error.
  ///
  /// In en, this message translates to:
  /// **'Cancellation is not allowed'**
  String get hotel_hand_note_refound_info_2814_error;

  /// No description provided for @hotel_hand_note_refound_info_2004_error.
  ///
  /// In en, this message translates to:
  /// **'Failure'**
  String get hotel_hand_note_refound_info_2004_error;

  /// No description provided for @hotel_hand_note_refound_2002_error.
  ///
  /// In en, this message translates to:
  /// **'Order not found'**
  String get hotel_hand_note_refound_2002_error;

  /// No description provided for @hotel_hand_note_refound_2004_error.
  ///
  /// In en, this message translates to:
  /// **'Cancellation failed order'**
  String get hotel_hand_note_refound_2004_error;

  /// No description provided for @hotel_hand_note_refound_2816_error.
  ///
  /// In en, this message translates to:
  /// **'Update failed'**
  String get hotel_hand_note_refound_2816_error;

  /// No description provided for @hotel_hand_note_refound_2817_error.
  ///
  /// In en, this message translates to:
  /// **'Update time has expired'**
  String get hotel_hand_note_refound_2817_error;

  /// No description provided for @hotel_hand_note_refound_4001_error.
  ///
  /// In en, this message translates to:
  /// **'Order not available:'**
  String get hotel_hand_note_refound_4001_error;

  /// No description provided for @hotel_hand_note_refound_4001_error_detail_1.
  ///
  /// In en, this message translates to:
  /// **'The order has been serviced'**
  String get hotel_hand_note_refound_4001_error_detail_1;

  /// No description provided for @hotel_hand_note_refound_4001_error_detail_2.
  ///
  /// In en, this message translates to:
  /// **'Or already check in'**
  String get hotel_hand_note_refound_4001_error_detail_2;

  /// No description provided for @hotel_hand_note_refound_4001_error_detail_3.
  ///
  /// In en, this message translates to:
  /// **'Or already checked out'**
  String get hotel_hand_note_refound_4001_error_detail_3;

  /// No description provided for @hotel_hand_note_refound_2811_error.
  ///
  /// In en, this message translates to:
  /// **'Order canceled'**
  String get hotel_hand_note_refound_2811_error;

  /// No description provided for @hotel_hand_note_refound_2806_error.
  ///
  /// In en, this message translates to:
  /// **'Invalid cancellation confirmation code'**
  String get hotel_hand_note_refound_2806_error;

  /// No description provided for @hotel_hand_note_refound_cancel_order.
  ///
  /// In en, this message translates to:
  /// **'Cancel order'**
  String get hotel_hand_note_refound_cancel_order;

  /// No description provided for @hotel_hand_note_refound_refund.
  ///
  /// In en, this message translates to:
  /// **'Refund information update'**
  String get hotel_hand_note_refound_refund;

  /// No description provided for @hotel_hand_note_refound_cancel_success.
  ///
  /// In en, this message translates to:
  /// **'Cancellation successfully'**
  String get hotel_hand_note_refound_cancel_success;

  /// No description provided for @hotel_hand_note_refound_update_success.
  ///
  /// In en, this message translates to:
  /// **'Refund information update successful'**
  String get hotel_hand_note_refound_update_success;

  /// No description provided for @hotel_hand_note_refound_went_wrong.
  ///
  /// In en, this message translates to:
  /// **'something went wrong.\nTry later...'**
  String get hotel_hand_note_refound_went_wrong;

  /// No description provided for @hotel_hand_note_refound_invalid_country.
  ///
  /// In en, this message translates to:
  /// **'Invalid country'**
  String get hotel_hand_note_refound_invalid_country;

  /// No description provided for @hotel_hand_note_refound_country_required.
  ///
  /// In en, this message translates to:
  /// **'Country is required'**
  String get hotel_hand_note_refound_country_required;

  /// No description provided for @hotel_hand_note_refound_error.
  ///
  /// In en, this message translates to:
  /// **'error'**
  String get hotel_hand_note_refound_error;

  /// No description provided for @hotel_hand_note_refound_invalid_number.
  ///
  /// In en, this message translates to:
  /// **'Invalid bank number'**
  String get hotel_hand_note_refound_invalid_number;

  /// No description provided for @hotel_hand_note_refound_invalid_card.
  ///
  /// In en, this message translates to:
  /// **'Invalid card account number'**
  String get hotel_hand_note_refound_invalid_card;

  /// No description provided for @hotel_hand_note_refound_invalid_card_holder.
  ///
  /// In en, this message translates to:
  /// **'Invalid cardholder name'**
  String get hotel_hand_note_refound_invalid_card_holder;

  /// No description provided for @hotel_hand_note_refound_invalid_swift.
  ///
  /// In en, this message translates to:
  /// **'Invalid swift code'**
  String get hotel_hand_note_refound_invalid_swift;

  /// No description provided for @hotel_hand_note_refound_info_bank.
  ///
  /// In en, this message translates to:
  /// **'Information of bank\'s account'**
  String get hotel_hand_note_refound_info_bank;

  /// No description provided for @hotel_hand_note_refound_note_refund.
  ///
  /// In en, this message translates to:
  /// **'(Hahalolo will refund your, based on the bank account information you enter below)'**
  String get hotel_hand_note_refound_note_refund;

  /// No description provided for @hotel_hand_note_refound_bank.
  ///
  /// In en, this message translates to:
  /// **'Bank'**
  String get hotel_hand_note_refound_bank;

  /// No description provided for @hotel_hand_note_refound_enter_bank.
  ///
  /// In en, this message translates to:
  /// **'Enter bank name'**
  String get hotel_hand_note_refound_enter_bank;

  /// No description provided for @hotel_hand_note_refound_card_account.
  ///
  /// In en, this message translates to:
  /// **'Card account number'**
  String get hotel_hand_note_refound_card_account;

  /// No description provided for @hotel_hand_note_refound_account_name.
  ///
  /// In en, this message translates to:
  /// **'Account name'**
  String get hotel_hand_note_refound_account_name;

  /// No description provided for @hotel_hand_note_refound_swift_code.
  ///
  /// In en, this message translates to:
  /// **'SWIFT code'**
  String get hotel_hand_note_refound_swift_code;

  /// No description provided for @hotel_hand_note_refound_enter_swift.
  ///
  /// In en, this message translates to:
  /// **'Enter swift code'**
  String get hotel_hand_note_refound_enter_swift;

  /// No description provided for @hotel_hand_note_refound_national.
  ///
  /// In en, this message translates to:
  /// **'National'**
  String get hotel_hand_note_refound_national;

  /// No description provided for @hotel_hand_note_refound_ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get hotel_hand_note_refound_ok;

  /// No description provided for @hotel_hand_note_refound_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get hotel_hand_note_refound_cancel;

  /// No description provided for @hotel_hand_note_refound_reason.
  ///
  /// In en, this message translates to:
  /// **'Cancellation reason'**
  String get hotel_hand_note_refound_reason;

  /// No description provided for @hotel_hand_note_refound_enter_reason.
  ///
  /// In en, this message translates to:
  /// **'Please you enter the reason'**
  String get hotel_hand_note_refound_enter_reason;

  /// No description provided for @hotel_hand_note_refound_enter_max.
  ///
  /// In en, this message translates to:
  /// **'Enter up to 150 characters'**
  String get hotel_hand_note_refound_enter_max;

  /// No description provided for @hotel_hand_note_refound_contact_support.
  ///
  /// In en, this message translates to:
  /// **'Contact customer service to get a discount code refund.'**
  String get hotel_hand_note_refound_contact_support;

  /// No description provided for @hotel_hand_note_refound_code_not_refund.
  ///
  /// In en, this message translates to:
  /// **'Discount codes are non-refundable.'**
  String get hotel_hand_note_refound_code_not_refund;

  /// No description provided for @hotel_hand_note_refound_amount_info.
  ///
  /// In en, this message translates to:
  /// **'Refund amount information'**
  String get hotel_hand_note_refound_amount_info;

  /// No description provided for @hotel_hand_note_refound_total_order.
  ///
  /// In en, this message translates to:
  /// **'Total order'**
  String get hotel_hand_note_refound_total_order;

  /// No description provided for @hotel_hand_note_refound_total_paid.
  ///
  /// In en, this message translates to:
  /// **'Total amount paid'**
  String get hotel_hand_note_refound_total_paid;

  /// No description provided for @hotel_hand_note_refound_use_coins.
  ///
  /// In en, this message translates to:
  /// **'Use coins {num}'**
  String hotel_hand_note_refound_use_coins(Object num);

  /// No description provided for @hotel_hand_note_refound_coins.
  ///
  /// In en, this message translates to:
  /// **'{num} Coins'**
  String hotel_hand_note_refound_coins(Object num);

  /// No description provided for @hotel_hand_note_refound_voucher.
  ///
  /// In en, this message translates to:
  /// **'Voucher'**
  String get hotel_hand_note_refound_voucher;

  /// No description provided for @hotel_hand_note_refound_fee_cancel.
  ///
  /// In en, this message translates to:
  /// **'Fee cancel'**
  String get hotel_hand_note_refound_fee_cancel;

  /// No description provided for @hotel_hand_note_refound_refund_amount.
  ///
  /// In en, this message translates to:
  /// **'Estimated refund amount'**
  String get hotel_hand_note_refound_refund_amount;

  /// No description provided for @hotel_hand_note_refound_refund_coins.
  ///
  /// In en, this message translates to:
  /// **'Estimated number of coins refunded {num}'**
  String hotel_hand_note_refound_refund_coins(Object num);

  /// No description provided for @hotel_hand_note_item_view_booking_code_title.
  ///
  /// In en, this message translates to:
  /// **'Booking number'**
  String get hotel_hand_note_item_view_booking_code_title;

  /// No description provided for @hotel_hand_note_title_hotel_order.
  ///
  /// In en, this message translates to:
  /// **'Hotel booking orders'**
  String get hotel_hand_note_title_hotel_order;

  /// No description provided for @hotel_order_detail_view_information_order.
  ///
  /// In en, this message translates to:
  /// **'Order information'**
  String get hotel_order_detail_view_information_order;

  /// No description provided for @hotel_search_code_total_price.
  ///
  /// In en, this message translates to:
  /// **'Total price'**
  String get hotel_search_code_total_price;

  /// No description provided for @hotel_search_code_voucher.
  ///
  /// In en, this message translates to:
  /// **'Coupon code'**
  String get hotel_search_code_voucher;

  /// No description provided for @hotel_search_code_use_coin.
  ///
  /// In en, this message translates to:
  /// **'Use coins'**
  String get hotel_search_code_use_coin;

  /// No description provided for @hotel_search_code_use_point.
  ///
  /// In en, this message translates to:
  /// **'Use points'**
  String get hotel_search_code_use_point;

  /// No description provided for @hotel_search_code_total_pay.
  ///
  /// In en, this message translates to:
  /// **'Total payment'**
  String get hotel_search_code_total_pay;

  /// No description provided for @hotel_search_code_detail_pay.
  ///
  /// In en, this message translates to:
  /// **'Payment details'**
  String get hotel_search_code_detail_pay;

  /// No description provided for @hotel_detail_similar_hotels.
  ///
  /// In en, this message translates to:
  /// **'Similar properties'**
  String get hotel_detail_similar_hotels;

  /// No description provided for @hotel_detail_hotel_images.
  ///
  /// In en, this message translates to:
  /// **'Hotel images'**
  String get hotel_detail_hotel_images;

  /// No description provided for @hotel_detail_reviews_latest.
  ///
  /// In en, this message translates to:
  /// **'Latest'**
  String get hotel_detail_reviews_latest;

  /// No description provided for @hotel_detail_reviews_oldest.
  ///
  /// In en, this message translates to:
  /// **'Oldest'**
  String get hotel_detail_reviews_oldest;

  /// No description provided for @hotel_detail_reviews_highest.
  ///
  /// In en, this message translates to:
  /// **'Highest score'**
  String get hotel_detail_reviews_highest;

  /// No description provided for @hotel_detail_reviews_lowest.
  ///
  /// In en, this message translates to:
  /// **'Lowest score'**
  String get hotel_detail_reviews_lowest;

  /// No description provided for @hotel_detail_review_sort_by.
  ///
  /// In en, this message translates to:
  /// **'Sort by'**
  String get hotel_detail_review_sort_by;

  /// No description provided for @hotel_detail_reviews.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get hotel_detail_reviews;

  /// No description provided for @hotel_detail_rate_location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get hotel_detail_rate_location;

  /// No description provided for @hotel_detail_rate_price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get hotel_detail_rate_price;

  /// No description provided for @hotel_detail_rate_cleanliness.
  ///
  /// In en, this message translates to:
  /// **'Cleanliness'**
  String get hotel_detail_rate_cleanliness;

  /// No description provided for @hotel_detail_rate_service.
  ///
  /// In en, this message translates to:
  /// **'Service'**
  String get hotel_detail_rate_service;

  /// No description provided for @hotel_detail_rate_facilities.
  ///
  /// In en, this message translates to:
  /// **'Facilities'**
  String get hotel_detail_rate_facilities;

  /// No description provided for @hotel_detail_one_user_review.
  ///
  /// In en, this message translates to:
  /// **'1 review'**
  String get hotel_detail_one_user_review;

  /// No description provided for @hotel_detail_x_user_reviews.
  ///
  /// In en, this message translates to:
  /// **'{x} reviews'**
  String hotel_detail_x_user_reviews(Object x);

  /// No description provided for @hotel_detail_book_2004_error.
  ///
  /// In en, this message translates to:
  /// **'Booking failed'**
  String get hotel_detail_book_2004_error;

  /// No description provided for @hotel_detail_please_fill_ci_co_date.
  ///
  /// In en, this message translates to:
  /// **'Please enter check-in and check-out dates'**
  String get hotel_detail_please_fill_ci_co_date;

  /// No description provided for @hotel_detail_allow_pet_contact_hotel.
  ///
  /// In en, this message translates to:
  /// **'Pets are allowed. For pet policies, please contact the accommodation directly.'**
  String get hotel_detail_allow_pet_contact_hotel;

  /// No description provided for @hotel_detail_allow_pet_and_x_fee.
  ///
  /// In en, this message translates to:
  /// **'Pets are allowed.  Pet fee: {x} (Pet fee is paid at the accommodation).'**
  String hotel_detail_allow_pet_and_x_fee(Object x);

  /// No description provided for @hotel_detail_free_cancellation.
  ///
  /// In en, this message translates to:
  /// **'FREE cancelation'**
  String get hotel_detail_free_cancellation;

  /// No description provided for @hotel_detail_cancellation_with_refund.
  ///
  /// In en, this message translates to:
  /// **'Cancelation is charged'**
  String get hotel_detail_cancellation_with_refund;

  /// No description provided for @hotel_detail_cancellation_without_refund.
  ///
  /// In en, this message translates to:
  /// **'Cancelation without refund'**
  String get hotel_detail_cancellation_without_refund;

  /// No description provided for @hotel_detail_cancel_non_refund.
  ///
  /// In en, this message translates to:
  /// **'You will not receive a refund or paid amount upon cancelation.'**
  String get hotel_detail_cancel_non_refund;

  /// No description provided for @hotel_detail_breakfast_served.
  ///
  /// In en, this message translates to:
  /// **'Breakfast provided'**
  String get hotel_detail_breakfast_served;

  /// No description provided for @hotel_detail_lunch_served.
  ///
  /// In en, this message translates to:
  /// **'Lunch provided'**
  String get hotel_detail_lunch_served;

  /// No description provided for @hotel_detail_dinner_served.
  ///
  /// In en, this message translates to:
  /// **'Dinner provided'**
  String get hotel_detail_dinner_served;

  /// No description provided for @hotel_detail_smoking_allow.
  ///
  /// In en, this message translates to:
  /// **'Smoking is allowed'**
  String get hotel_detail_smoking_allow;

  /// No description provided for @hotel_detail_smoking_not_allow.
  ///
  /// In en, this message translates to:
  /// **'Smoking is not allowed'**
  String get hotel_detail_smoking_not_allow;

  /// No description provided for @hotel_detail_contact_hotel.
  ///
  /// In en, this message translates to:
  /// **'Contact hotel'**
  String get hotel_detail_contact_hotel;

  /// No description provided for @hotel_detail_book_first_pay_later.
  ///
  /// In en, this message translates to:
  /// **'Book now, pay later'**
  String get hotel_detail_book_first_pay_later;

  /// No description provided for @hotel_detail_policy.
  ///
  /// In en, this message translates to:
  /// **'Policies'**
  String get hotel_detail_policy;

  /// No description provided for @hotel_detail_choose_the_bed_arrangement.
  ///
  /// In en, this message translates to:
  /// **'Select bed case'**
  String get hotel_detail_choose_the_bed_arrangement;

  /// No description provided for @hotel_detail_cancellation_policy_x_time_y_date_z_rate_first_night.
  ///
  /// In en, this message translates to:
  /// **'Cancelations made prior to {x} on {y}: get a {z}% refund of room rate for the first night.'**
  String hotel_detail_cancellation_policy_x_time_y_date_z_rate_first_night(Object x, Object y, Object z);

  /// No description provided for @hotel_detail_room_service.
  ///
  /// In en, this message translates to:
  /// **'Room services'**
  String get hotel_detail_room_service;

  /// No description provided for @hotel_detail_amenities.
  ///
  /// In en, this message translates to:
  /// **'Amenities'**
  String get hotel_detail_amenities;

  /// No description provided for @hotel_detail_general_rules.
  ///
  /// In en, this message translates to:
  /// **'House rules'**
  String get hotel_detail_general_rules;

  /// No description provided for @hotel_detail_change_reservation.
  ///
  /// In en, this message translates to:
  /// **'Change reservation'**
  String get hotel_detail_change_reservation;

  /// No description provided for @hotel_detail_services_and_facilities.
  ///
  /// In en, this message translates to:
  /// **'Facilities and services'**
  String get hotel_detail_services_and_facilities;

  /// No description provided for @hotel_detail_x_room_and_y_night.
  ///
  /// In en, this message translates to:
  /// **'{x} room/{y} night'**
  String hotel_detail_x_room_and_y_night(Object x, Object y);

  /// No description provided for @hotel_detail_x_rooms_and_y_nights.
  ///
  /// In en, this message translates to:
  /// **'{x} rooms/{y} nights'**
  String hotel_detail_x_rooms_and_y_nights(Object x, Object y);

  /// No description provided for @hotel_detail_room_and_x_nights.
  ///
  /// In en, this message translates to:
  /// **'1 room/{x} nights'**
  String hotel_detail_room_and_x_nights(Object x);

  /// No description provided for @hotel_detail_x_rooms_and_night.
  ///
  /// In en, this message translates to:
  /// **'{x} rooms/1 night'**
  String hotel_detail_x_rooms_and_night(Object x);

  /// No description provided for @hotel_detail_room_and_night.
  ///
  /// In en, this message translates to:
  /// **'1 room/1 night'**
  String get hotel_detail_room_and_night;

  /// No description provided for @hotel_detail_x_rooms_and_y_adults.
  ///
  /// In en, this message translates to:
  /// **'{x} rooms - {y} guests'**
  String hotel_detail_x_rooms_and_y_adults(Object x, Object y);

  /// No description provided for @hotel_detail_room_and_x_adults.
  ///
  /// In en, this message translates to:
  /// **'1 room - {x} guests'**
  String hotel_detail_room_and_x_adults(Object x);

  /// No description provided for @hotel_detail_room_and_adult.
  ///
  /// In en, this message translates to:
  /// **'1 room - 1 guest'**
  String get hotel_detail_room_and_adult;

  /// No description provided for @hotel_detail_child_count.
  ///
  /// In en, this message translates to:
  /// **'1 child'**
  String get hotel_detail_child_count;

  /// No description provided for @hotel_detail_x_children.
  ///
  /// In en, this message translates to:
  /// **'{x} children'**
  String hotel_detail_x_children(Object x);

  /// No description provided for @hotel_detail_room_detail.
  ///
  /// In en, this message translates to:
  /// **'Room details'**
  String get hotel_detail_room_detail;

  /// No description provided for @hotel_detail_room_policy_and_conditions.
  ///
  /// In en, this message translates to:
  /// **'Conditions and Policies'**
  String get hotel_detail_room_policy_and_conditions;

  /// No description provided for @hotel_detail_person_count.
  ///
  /// In en, this message translates to:
  /// **'1 guest'**
  String get hotel_detail_person_count;

  /// No description provided for @hotel_detail_x_people.
  ///
  /// In en, this message translates to:
  /// **'{x} guests'**
  String hotel_detail_x_people(Object x);

  /// No description provided for @hotel_detail_distance_x_from_center.
  ///
  /// In en, this message translates to:
  /// **'{distance}{x} from center'**
  String hotel_detail_distance_x_from_center(Object distance, Object x);

  /// No description provided for @hotel_detail_distance_x_from_address.
  ///
  /// In en, this message translates to:
  /// **'{distance}{x} from the search location'**
  String hotel_detail_distance_x_from_address(Object distance, Object x);

  /// No description provided for @hotel_detail_distance_at_center.
  ///
  /// In en, this message translates to:
  /// **'In city center'**
  String get hotel_detail_distance_at_center;

  /// No description provided for @hotel_detail_check_in.
  ///
  /// In en, this message translates to:
  /// **'Check-in'**
  String get hotel_detail_check_in;

  /// No description provided for @hotel_detail_check_out.
  ///
  /// In en, this message translates to:
  /// **'Check-out'**
  String get hotel_detail_check_out;

  /// No description provided for @hotel_detail_cancelation_policy.
  ///
  /// In en, this message translates to:
  /// **'Cancelation'**
  String get hotel_detail_cancelation_policy;

  /// No description provided for @hotel_detail_child_policy.
  ///
  /// In en, this message translates to:
  /// **'Children'**
  String get hotel_detail_child_policy;

  /// No description provided for @hotel_detail_pet_policy.
  ///
  /// In en, this message translates to:
  /// **'Pets'**
  String get hotel_detail_pet_policy;

  /// No description provided for @hotel_detail_check_in_x.
  ///
  /// In en, this message translates to:
  /// **'After {x}'**
  String hotel_detail_check_in_x(Object x);

  /// No description provided for @hotel_detail_check_out_x.
  ///
  /// In en, this message translates to:
  /// **'Before {x}'**
  String hotel_detail_check_out_x(Object x);

  /// No description provided for @hotel_detail_only_room_count.
  ///
  /// In en, this message translates to:
  /// **'Only 1 left'**
  String get hotel_detail_only_room_count;

  /// No description provided for @hotel_detail_only_x_room.
  ///
  /// In en, this message translates to:
  /// **'Only {x} left'**
  String hotel_detail_only_x_room(Object x);

  /// No description provided for @hotel_detail_child_policy_allow_range.
  ///
  /// In en, this message translates to:
  /// **'Children aged from {range} are allowed.'**
  String hotel_detail_child_policy_allow_range(Object range);

  /// No description provided for @hotel_detail_pet_policy_allow.
  ///
  /// In en, this message translates to:
  /// **'Pets are allowed. Pet fee is paid at the hotel.'**
  String get hotel_detail_pet_policy_allow;

  /// No description provided for @hotel_detail_pet_policy_do_not_allow.
  ///
  /// In en, this message translates to:
  /// **'Pets are not allowed.'**
  String get hotel_detail_pet_policy_do_not_allow;

  /// No description provided for @hotel_detail_cancelation_policy_x_time_y_rate_first_night.
  ///
  /// In en, this message translates to:
  /// **'Cancelations made {x}hours prior to check-in time: get a {y}% refund of room rate for the first night.'**
  String hotel_detail_cancelation_policy_x_time_y_rate_first_night(Object x, Object y);

  /// No description provided for @hotel_detail_cancelation_policy_x_time_y_rate_all_night.
  ///
  /// In en, this message translates to:
  /// **'Cancelations made {x}hours prior to check-in time: get a {y}% refund of room rate for all nights.'**
  String hotel_detail_cancelation_policy_x_time_y_rate_all_night(Object x, Object y);

  /// No description provided for @hotel_detail_cancellation_policy_x_time_full_rate.
  ///
  /// In en, this message translates to:
  /// **'Free cancelation before {x}'**
  String hotel_detail_cancellation_policy_x_time_full_rate(Object x);

  /// No description provided for @hotel_detail_book_room.
  ///
  /// In en, this message translates to:
  /// **'Book 1 room'**
  String get hotel_detail_book_room;

  /// No description provided for @hotel_detail_book_x_room.
  ///
  /// In en, this message translates to:
  /// **'Book {x} rooms'**
  String hotel_detail_book_x_room(Object x);

  /// No description provided for @hotel_detail_best_price.
  ///
  /// In en, this message translates to:
  /// **'Best price'**
  String get hotel_detail_best_price;

  /// No description provided for @hotel_detail_bed.
  ///
  /// In en, this message translates to:
  /// **'1 bed'**
  String get hotel_detail_bed;

  /// No description provided for @hotel_detail_x_beds.
  ///
  /// In en, this message translates to:
  /// **'{x} beds'**
  String hotel_detail_x_beds(Object x);

  /// No description provided for @hotel_detail_x_discount_percent.
  ///
  /// In en, this message translates to:
  /// **'-{x}% off today only'**
  String hotel_detail_x_discount_percent(Object x);

  /// No description provided for @hotel_detail_choose_room.
  ///
  /// In en, this message translates to:
  /// **'Select room'**
  String get hotel_detail_choose_room;

  /// No description provided for @hotel_detail_has_x_room_types.
  ///
  /// In en, this message translates to:
  /// **'(Total {x} room types available'**
  String hotel_detail_has_x_room_types(Object x);

  /// No description provided for @hotel_detail_has_room_type.
  ///
  /// In en, this message translates to:
  /// **'(Total 1 room type available)'**
  String get hotel_detail_has_room_type;

  /// No description provided for @hotel_detail_children_policy_do_not_allow.
  ///
  /// In en, this message translates to:
  /// **'The hotel does not have child policies. Children will not be counted in the number of searches. Please contact the hotel if there are any accompanying children.'**
  String get hotel_detail_children_policy_do_not_allow;

  /// No description provided for @hotel_detail_children_policy_range_allow.
  ///
  /// In en, this message translates to:
  /// **'The hotel\'s children policy allows children aged {range}. For information on hotel policies and regulations, please refer to the hotel\'s House rules section or contact the hotel for futher information.'**
  String hotel_detail_children_policy_range_allow(Object range);

  /// No description provided for @hotel_detail_room_information.
  ///
  /// In en, this message translates to:
  /// **'Room information'**
  String get hotel_detail_room_information;

  /// No description provided for @hotel_detail_x_fee_person_and_day.
  ///
  /// In en, this message translates to:
  /// **'{x}/guest/day'**
  String hotel_detail_x_fee_person_and_day(Object x);

  /// No description provided for @hotel_detail_x_fee_car_and_day.
  ///
  /// In en, this message translates to:
  /// **'{x}/car/day'**
  String hotel_detail_x_fee_car_and_day(Object x);

  /// No description provided for @hotel_detail_breakfast.
  ///
  /// In en, this message translates to:
  /// **'Breakfast'**
  String get hotel_detail_breakfast;

  /// No description provided for @hotel_detail_lunch.
  ///
  /// In en, this message translates to:
  /// **'Lunch'**
  String get hotel_detail_lunch;

  /// No description provided for @hotel_detail_dinner.
  ///
  /// In en, this message translates to:
  /// **'Dinner'**
  String get hotel_detail_dinner;

  /// No description provided for @hotel_detail_smoking.
  ///
  /// In en, this message translates to:
  /// **'Tobacco'**
  String get hotel_detail_smoking;

  /// No description provided for @hotel_detail_parking.
  ///
  /// In en, this message translates to:
  /// **'Parking'**
  String get hotel_detail_parking;

  /// No description provided for @hotel_detail_local_time.
  ///
  /// In en, this message translates to:
  /// **'(Local time)'**
  String get hotel_detail_local_time;

  /// No description provided for @hotel_detail_cancelation_policy_x_time_y_date_z_rate.
  ///
  /// In en, this message translates to:
  /// **'Cancelations made prior to {x} on {y}: Get a {z}% refund of room rate for all nights.'**
  String hotel_detail_cancelation_policy_x_time_y_date_z_rate(Object x, Object y, Object z);

  /// No description provided for @hotel_detail_cancelation_policy_x_time_y_date_z_amount.
  ///
  /// In en, this message translates to:
  /// **'Cancelations made prior to {x} on {y}: Get a refund of {z} of room rate.'**
  String hotel_detail_cancelation_policy_x_time_y_date_z_amount(Object x, Object y, Object z);

  /// No description provided for @hotel_detail_promotion.
  ///
  /// In en, this message translates to:
  /// **'Deals'**
  String get hotel_detail_promotion;

  /// No description provided for @hotel_detail_free_breakfast.
  ///
  /// In en, this message translates to:
  /// **'Free breakfast'**
  String get hotel_detail_free_breakfast;

  /// No description provided for @hotel_detail_free_lunch.
  ///
  /// In en, this message translates to:
  /// **'Free lunch'**
  String get hotel_detail_free_lunch;

  /// No description provided for @hotel_detail_free_dinner.
  ///
  /// In en, this message translates to:
  /// **'Free dinner'**
  String get hotel_detail_free_dinner;

  /// No description provided for @hotel_detail_allow_smoking.
  ///
  /// In en, this message translates to:
  /// **'Smoking is allowed'**
  String get hotel_detail_allow_smoking;

  /// No description provided for @hotel_detail_free_parking.
  ///
  /// In en, this message translates to:
  /// **'Free parking'**
  String get hotel_detail_free_parking;

  /// No description provided for @hotel_detail_room_not_found.
  ///
  /// In en, this message translates to:
  /// **'No rooms found!'**
  String get hotel_detail_room_not_found;

  /// No description provided for @hotel_detail_no_result.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t find any results matching your search. Please try again.'**
  String get hotel_detail_no_result;

  /// No description provided for @hotel_detail_similar_hotels_title.
  ///
  /// In en, this message translates to:
  /// **'Similar properties'**
  String get hotel_detail_similar_hotels_title;

  /// No description provided for @hotel_booking_dialog_the_order_not_eligible.
  ///
  /// In en, this message translates to:
  /// **'The order is not eligible for payment'**
  String get hotel_booking_dialog_the_order_not_eligible;

  /// No description provided for @hotel_booking_dialog_qualified_orders.
  ///
  /// In en, this message translates to:
  /// **'The order is eligible with a total amount of'**
  String get hotel_booking_dialog_qualified_orders;

  /// No description provided for @hotel_booking_dialog_coupon_code_coins_points.
  ///
  /// In en, this message translates to:
  /// **'You can change the Coupon Code, Coins or Points to be eligible for payment'**
  String get hotel_booking_dialog_coupon_code_coins_points;

  /// No description provided for @hotel_booking_dialog_or_minimum.
  ///
  /// In en, this message translates to:
  /// **'or minimum of'**
  String get hotel_booking_dialog_or_minimum;

  /// No description provided for @hotel_booking_widget_dialog_cannot_used_information.
  ///
  /// In en, this message translates to:
  /// **'This information cannot be used at this time. Please use another or save a new one.'**
  String get hotel_booking_widget_dialog_cannot_used_information;

  /// No description provided for @hotel_booking_component_applied_points_successfully.
  ///
  /// In en, this message translates to:
  /// **'You have applied points successfully'**
  String get hotel_booking_component_applied_points_successfully;

  /// No description provided for @hotel_booking_use_point.
  ///
  /// In en, this message translates to:
  /// **'Use points'**
  String get hotel_booking_use_point;

  /// No description provided for @hotel_booking_point_switch_on_hint.
  ///
  /// In en, this message translates to:
  /// **'Turn off using points to cancel applying points for this order'**
  String get hotel_booking_point_switch_on_hint;

  /// No description provided for @hotel_booking_point_switch_off_hint.
  ///
  /// In en, this message translates to:
  /// **'Turn on using points to enter the number of points you will use for this order'**
  String get hotel_booking_point_switch_off_hint;

  /// No description provided for @hotel_booking_point_user_point.
  ///
  /// In en, this message translates to:
  /// **'Available points'**
  String get hotel_booking_point_user_point;

  /// No description provided for @hotel_booking_point_available_point.
  ///
  /// In en, this message translates to:
  /// **'Available to orders'**
  String get hotel_booking_point_available_point;

  /// No description provided for @hotel_booking_point_user_want_to_use_hint.
  ///
  /// In en, this message translates to:
  /// **'Number of points you want to use'**
  String get hotel_booking_point_user_want_to_use_hint;

  /// No description provided for @hotel_booking_point_equivalent_to.
  ///
  /// In en, this message translates to:
  /// **'Equivalent to'**
  String get hotel_booking_point_equivalent_to;

  /// No description provided for @hotel_booking_point_press.
  ///
  /// In en, this message translates to:
  /// **'Press'**
  String get hotel_booking_point_press;

  /// No description provided for @hotel_booking_point_apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get hotel_booking_point_apply;

  /// No description provided for @hotel_booking_point_apply_for_payment.
  ///
  /// In en, this message translates to:
  /// **'to apply the amount to the payment'**
  String get hotel_booking_point_apply_for_payment;

  /// No description provided for @hotel_booking_points_apply_hint.
  ///
  /// In en, this message translates to:
  /// **'The amount will be used to pay for this order.'**
  String get hotel_booking_points_apply_hint;

  /// No description provided for @hotel_booking_payment_3001_error.
  ///
  /// In en, this message translates to:
  /// **'The card is not supported. Please try again.'**
  String get hotel_booking_payment_3001_error;

  /// No description provided for @hotel_booking_payment_3002_error.
  ///
  /// In en, this message translates to:
  /// **'An error occurred during the payment process. Please try again.'**
  String get hotel_booking_payment_3002_error;

  /// No description provided for @hotel_booking_payment_3003_error.
  ///
  /// In en, this message translates to:
  /// **'An error occurred during the payment process. Please try again.'**
  String get hotel_booking_payment_3003_error;

  /// No description provided for @hotel_booking_payment_3004_error.
  ///
  /// In en, this message translates to:
  /// **'An error occurred during the payment process. Please try again.'**
  String get hotel_booking_payment_3004_error;

  /// No description provided for @hotel_booking_payment_3005_error.
  ///
  /// In en, this message translates to:
  /// **'An error occurred during the payment process. Please try again.'**
  String get hotel_booking_payment_3005_error;

  /// No description provided for @hotel_booking_payment_3006_error.
  ///
  /// In en, this message translates to:
  /// **'The card has expired. Please try again.'**
  String get hotel_booking_payment_3006_error;

  /// No description provided for @hotel_booking_payment_3007_error.
  ///
  /// In en, this message translates to:
  /// **'Invalid CVC code. Please try again.'**
  String get hotel_booking_payment_3007_error;

  /// No description provided for @hotel_booking_payment_3008_error.
  ///
  /// In en, this message translates to:
  /// **'Invalid card number. Please try again.'**
  String get hotel_booking_payment_3008_error;

  /// No description provided for @hotel_booking_payment_3009_error.
  ///
  /// In en, this message translates to:
  /// **'This currency is not supported. Please try again.'**
  String get hotel_booking_payment_3009_error;

  /// No description provided for @hotel_booking_payment_3010_error.
  ///
  /// In en, this message translates to:
  /// **'An error occurred during the payment process. Please try again.'**
  String get hotel_booking_payment_3010_error;

  /// No description provided for @hotel_booking_modify_coin_applied.
  ///
  /// In en, this message translates to:
  /// **'Coins have been applied to the payment. Please view details in Total.'**
  String get hotel_booking_modify_coin_applied;

  /// No description provided for @hotel_booking_modify_voucher_applied.
  ///
  /// In en, this message translates to:
  /// **'Coins have been applied to the payment. Please view details in Total.'**
  String get hotel_booking_modify_voucher_applied;

  /// No description provided for @hotel_booking_modify_point_applied.
  ///
  /// In en, this message translates to:
  /// **'Points have been applied to the payment. Please view details in Total.'**
  String get hotel_booking_modify_point_applied;

  /// No description provided for @hotel_booking_modify_point_canceled.
  ///
  /// In en, this message translates to:
  /// **'Applying Points to the payment for this order has been canceled.'**
  String get hotel_booking_modify_point_canceled;

  /// No description provided for @hotel_booking_modify_4006_error.
  ///
  /// In en, this message translates to:
  /// **'Voucher unavailable'**
  String get hotel_booking_modify_4006_error;

  /// No description provided for @hotel_booking_modify_4007_error.
  ///
  /// In en, this message translates to:
  /// **'Voucher has been kept'**
  String get hotel_booking_modify_4007_error;

  /// No description provided for @hotel_booking_modify_4008_error.
  ///
  /// In en, this message translates to:
  /// **'The order is not eligible for a coupon code. Please check and try again.'**
  String get hotel_booking_modify_4008_error;

  /// No description provided for @hotel_booking_modify_2004_error.
  ///
  /// In en, this message translates to:
  /// **'Failed to apply'**
  String get hotel_booking_modify_2004_error;

  /// No description provided for @hotel_booking_pay_1005_error.
  ///
  /// In en, this message translates to:
  /// **'Incorrect value'**
  String get hotel_booking_pay_1005_error;

  /// No description provided for @hotel_booking_pay_2002_error.
  ///
  /// In en, this message translates to:
  /// **'No orders found'**
  String get hotel_booking_pay_2002_error;

  /// No description provided for @hotel_booking_pay_2004_error.
  ///
  /// In en, this message translates to:
  /// **'Payment failed'**
  String get hotel_booking_pay_2004_error;

  /// No description provided for @hotel_booking_6001_error.
  ///
  /// In en, this message translates to:
  /// **'Wrong param'**
  String get hotel_booking_6001_error;

  /// No description provided for @hotel_booking_pay_6002_error.
  ///
  /// In en, this message translates to:
  /// **'Incorrect card information'**
  String get hotel_booking_pay_6002_error;

  /// No description provided for @hotel_booking_pay_6003_error.
  ///
  /// In en, this message translates to:
  /// **'The card is not accepted'**
  String get hotel_booking_pay_6003_error;

  /// No description provided for @hotel_booking_pay_6004_error.
  ///
  /// In en, this message translates to:
  /// **'Order creation error'**
  String get hotel_booking_pay_6004_error;

  /// No description provided for @hotel_booking_pay_6005_error.
  ///
  /// In en, this message translates to:
  /// **'TVP booking error'**
  String get hotel_booking_pay_6005_error;

  /// No description provided for @hotel_booking_required_city.
  ///
  /// In en, this message translates to:
  /// **'City is required'**
  String get hotel_booking_required_city;

  /// No description provided for @hotel_booking_sub_bed.
  ///
  /// In en, this message translates to:
  /// **'Extra bed'**
  String get hotel_booking_sub_bed;

  /// No description provided for @hotel_booking_information.
  ///
  /// In en, this message translates to:
  /// **'Booking information'**
  String get hotel_booking_information;

  /// No description provided for @hotel_booking_room_information.
  ///
  /// In en, this message translates to:
  /// **'Room information'**
  String get hotel_booking_room_information;

  /// No description provided for @hotel_booking_room_hotel.
  ///
  /// In en, this message translates to:
  /// **'Hotel'**
  String get hotel_booking_room_hotel;

  /// No description provided for @hotel_booking_x_nights.
  ///
  /// In en, this message translates to:
  /// **'{x} nights'**
  String hotel_booking_x_nights(Object x);

  /// No description provided for @hotel_booking_night_count.
  ///
  /// In en, this message translates to:
  /// **'1 night'**
  String get hotel_booking_night_count;

  /// No description provided for @hotel_booking_change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get hotel_booking_change;

  /// No description provided for @hotel_booking_user_contact.
  ///
  /// In en, this message translates to:
  /// **'Contact information'**
  String get hotel_booking_user_contact;

  /// No description provided for @hotel_bookng_without_tone_marks.
  ///
  /// In en, this message translates to:
  /// **'(without tone marks)'**
  String get hotel_bookng_without_tone_marks;

  /// No description provided for @hotel_booking_first_name.
  ///
  /// In en, this message translates to:
  /// **'First name'**
  String get hotel_booking_first_name;

  /// No description provided for @hotel_booking_last_name.
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get hotel_booking_last_name;

  /// No description provided for @hotel_booking_middle_name.
  ///
  /// In en, this message translates to:
  /// **'Middle name'**
  String get hotel_booking_middle_name;

  /// No description provided for @hotel_booking_given_name.
  ///
  /// In en, this message translates to:
  /// **'Middle & First/Given name'**
  String get hotel_booking_given_name;

  /// No description provided for @hotel_booking_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get hotel_booking_phone_number;

  /// No description provided for @hotel_booking_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get hotel_booking_email;

  /// No description provided for @hotel_booking_country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get hotel_booking_country;

  /// No description provided for @hotel_booking_im_a_guest.
  ///
  /// In en, this message translates to:
  /// **'I\'m a guest'**
  String get hotel_booking_im_a_guest;

  /// No description provided for @hotel_booking_guest_information.
  ///
  /// In en, this message translates to:
  /// **'Guest information'**
  String get hotel_booking_guest_information;

  /// No description provided for @hotel_booking_fill_contact_information.
  ///
  /// In en, this message translates to:
  /// **'Enter contact information of you or of the person responsible for keeping in touch with the accommodation service supplier.'**
  String get hotel_booking_fill_contact_information;

  /// No description provided for @hotel_booking_name_as_in_passport.
  ///
  /// In en, this message translates to:
  /// **'Full name as indicated on the ID card/Passport'**
  String get hotel_booking_name_as_in_passport;

  /// No description provided for @hotel_booking_payments.
  ///
  /// In en, this message translates to:
  /// **'Payment options'**
  String get hotel_booking_payments;

  /// No description provided for @hotel_booking_prepay.
  ///
  /// In en, this message translates to:
  /// **'Pay now'**
  String get hotel_booking_prepay;

  /// No description provided for @hotel_booking_postpaid.
  ///
  /// In en, this message translates to:
  /// **'Pay later'**
  String get hotel_booking_postpaid;

  /// No description provided for @hotel_booking_prepay_description.
  ///
  /// In en, this message translates to:
  /// **'Hahalolo will help process your payment. You will pay the full amount today upon completion of the booking'**
  String get hotel_booking_prepay_description;

  /// No description provided for @hotel_booking_postpaid_description.
  ///
  /// In en, this message translates to:
  /// **'The property will process your payment. Depending on booking conditions, you can pay in part or in full at the property.'**
  String get hotel_booking_postpaid_description;

  /// No description provided for @hotel_booking_bill_information.
  ///
  /// In en, this message translates to:
  /// **'Payment information'**
  String get hotel_booking_bill_information;

  /// No description provided for @hotel_booking_use_contact_information.
  ///
  /// In en, this message translates to:
  /// **'Use contact\'s information'**
  String get hotel_booking_use_contact_information;

  /// No description provided for @hotel_booking_state.
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get hotel_booking_state;

  /// No description provided for @hotel_booking_city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get hotel_booking_city;

  /// No description provided for @hotel_booking_save_payment_information.
  ///
  /// In en, this message translates to:
  /// **'Save payment information for next time'**
  String get hotel_booking_save_payment_information;

  /// No description provided for @hotel_booking_use_x_y_to_pay.
  ///
  /// In en, this message translates to:
  /// **'Use {x} {y} for payment'**
  String hotel_booking_use_x_y_to_pay(Object x, Object y);

  /// No description provided for @hotel_booking_equal_to_x_unit.
  ///
  /// In en, this message translates to:
  /// **'Equivalent to {x} {unit}'**
  String hotel_booking_equal_to_x_unit(Object x, Object unit);

  /// No description provided for @hotel_booking_payment_methods.
  ///
  /// In en, this message translates to:
  /// **'Payment method'**
  String get hotel_booking_payment_methods;

  /// No description provided for @hotel_booking_payment_note.
  ///
  /// In en, this message translates to:
  /// **'Note: HAHALOLO shall support users with FREE bank charges'**
  String get hotel_booking_payment_note;

  /// No description provided for @hotel_booking_free.
  ///
  /// In en, this message translates to:
  /// **'Free'**
  String get hotel_booking_free;

  /// No description provided for @hotel_booking_hahalolo.
  ///
  /// In en, this message translates to:
  /// **'HAHALOLO'**
  String get hotel_booking_hahalolo;

  /// No description provided for @hotel_booking_anything_else.
  ///
  /// In en, this message translates to:
  /// **'Is there anything else we can help you with?'**
  String get hotel_booking_anything_else;

  /// No description provided for @hotel_booking_inform_the_accommodation.
  ///
  /// In en, this message translates to:
  /// **'We will inform the property that you are interested in these services. Please note.'**
  String get hotel_booking_inform_the_accommodation;

  /// No description provided for @hotel_booking_can_not_guaranteed.
  ///
  /// In en, this message translates to:
  /// **'Your request cannot be guaranteed. Do not worry! The property will try to fulfill your needs.'**
  String get hotel_booking_can_not_guaranteed;

  /// No description provided for @hotel_booking_additional_services.
  ///
  /// In en, this message translates to:
  /// **'These are extra services that arise beyond your booking request and may incur additional fees for the property when used.'**
  String get hotel_booking_additional_services;

  /// No description provided for @hotel_booking_note.
  ///
  /// In en, this message translates to:
  /// **'Note:'**
  String get hotel_booking_note;

  /// No description provided for @hotel_booking_promo_apply_rule.
  ///
  /// In en, this message translates to:
  /// **'Coins and Coupon Code are not applied to the following forms of payment.'**
  String get hotel_booking_promo_apply_rule;

  /// No description provided for @hotel_booking_saved_payment_information.
  ///
  /// In en, this message translates to:
  /// **'Payment information saved'**
  String get hotel_booking_saved_payment_information;

  /// No description provided for @hotel_booking_fill_new_payer_information.
  ///
  /// In en, this message translates to:
  /// **'Enter new payer information'**
  String get hotel_booking_fill_new_payer_information;

  /// No description provided for @hotel_booking_maximum_coins_can_be_use.
  ///
  /// In en, this message translates to:
  /// **'The maximum number of coins can be used for this order.'**
  String get hotel_booking_maximum_coins_can_be_use;

  /// No description provided for @hotel_booking_coins.
  ///
  /// In en, this message translates to:
  /// **'Coins'**
  String get hotel_booking_coins;

  /// No description provided for @hotel_booking_unknown.
  ///
  /// In en, this message translates to:
  /// **'I don\'t know'**
  String get hotel_booking_unknown;

  /// No description provided for @hotel_booking_planning_arrive_after_x_date.
  ///
  /// In en, this message translates to:
  /// **'If you plan to arrive after {x}, please inform the host of your scheduled check-in time:'**
  String hotel_booking_planning_arrive_after_x_date(Object x);

  /// No description provided for @hotel_booking_other_services_may_charge.
  ///
  /// In en, this message translates to:
  /// **'Additional services can be charged. Please contact the accommodation in advance for further information.'**
  String get hotel_booking_other_services_may_charge;

  /// No description provided for @hotel_booking_term_and_policies.
  ///
  /// In en, this message translates to:
  /// **'Terms - Policies'**
  String get hotel_booking_term_and_policies;

  /// No description provided for @hotel_booking_privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get hotel_booking_privacy_policy;

  /// No description provided for @hotel_booking_tp_and_pp.
  ///
  /// In en, this message translates to:
  /// **'By proceeding with the next step, I confirm that I have read and agreed to Hahalolo\'s Terms - Policies and Privacy Policy'**
  String get hotel_booking_tp_and_pp;

  /// No description provided for @hotel_booking_important_note.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get hotel_booking_important_note;

  /// No description provided for @hotel_booking_select_time.
  ///
  /// In en, this message translates to:
  /// **'Select time'**
  String get hotel_booking_select_time;

  /// No description provided for @hotel_booking_room_x_night.
  ///
  /// In en, this message translates to:
  /// **'Room x 1, 1 night'**
  String get hotel_booking_room_x_night;

  /// No description provided for @hotel_booking_x_rooms_x_night.
  ///
  /// In en, this message translates to:
  /// **'Room x {x}, 1 night'**
  String hotel_booking_x_rooms_x_night(Object x);

  /// No description provided for @hotel_booking_x_rooms_x_y_nights.
  ///
  /// In en, this message translates to:
  /// **'Room x {x}, {y} nights'**
  String hotel_booking_x_rooms_x_y_nights(Object x, Object y);

  /// No description provided for @hotel_booking_room_x_x_nights.
  ///
  /// In en, this message translates to:
  /// **'Room x 1, {x} nights'**
  String hotel_booking_room_x_x_nights(Object x);

  /// No description provided for @hotel_booking_taxes_and_fees.
  ///
  /// In en, this message translates to:
  /// **'Taxes & fees'**
  String get hotel_booking_taxes_and_fees;

  /// No description provided for @hotel_booking_service_charge.
  ///
  /// In en, this message translates to:
  /// **'Service fee'**
  String get hotel_booking_service_charge;

  /// No description provided for @hotel_booking_payment_fees.
  ///
  /// In en, this message translates to:
  /// **'Payment fee'**
  String get hotel_booking_payment_fees;

  /// No description provided for @hotel_booking_accommodation_currency.
  ///
  /// In en, this message translates to:
  /// **'Property currency'**
  String get hotel_booking_accommodation_currency;

  /// No description provided for @hotel_booking_points_fees.
  ///
  /// In en, this message translates to:
  /// **'Use points'**
  String get hotel_booking_points_fees;

  /// No description provided for @hotel_booking_coins_fees.
  ///
  /// In en, this message translates to:
  /// **'Use coins'**
  String get hotel_booking_coins_fees;

  /// No description provided for @hotel_booking_voucher_fees.
  ///
  /// In en, this message translates to:
  /// **'Coupon code'**
  String get hotel_booking_voucher_fees;

  /// No description provided for @hotel_booking_discount.
  ///
  /// In en, this message translates to:
  /// **'Promotion '**
  String get hotel_booking_discount;

  /// No description provided for @hotel_booking_meal_service.
  ///
  /// In en, this message translates to:
  /// **'Meal service'**
  String get hotel_booking_meal_service;

  /// No description provided for @hotel_booking_meal_service_description.
  ///
  /// In en, this message translates to:
  /// **'Below are the breakfast services that the accommodation can provide to you. If you would like to apply for this service, please contact the accommodation\'s front desk directly.'**
  String get hotel_booking_meal_service_description;

  /// No description provided for @hotel_booking_meal_price_per_breakfast.
  ///
  /// In en, this message translates to:
  /// **'Price per type of breakfast'**
  String get hotel_booking_meal_price_per_breakfast;

  /// No description provided for @hotel_booking_extended_service.
  ///
  /// In en, this message translates to:
  /// **'Extra services'**
  String get hotel_booking_extended_service;

  /// No description provided for @hotel_booking_extended_service_description.
  ///
  /// In en, this message translates to:
  /// **'Select the total number of extra beds you want to add to this order. You are only allowed to add up to {x} extra beds.'**
  String hotel_booking_extended_service_description(Object x);

  /// No description provided for @hotel_booking_quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get hotel_booking_quantity;

  /// No description provided for @hotel_booking_total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get hotel_booking_total;

  /// No description provided for @hotel_booking_unit_price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get hotel_booking_unit_price;

  /// No description provided for @hotel_booking_x_price_per_person_per_day.
  ///
  /// In en, this message translates to:
  /// **'{x} people/day'**
  String hotel_booking_x_price_per_person_per_day(Object x);

  /// No description provided for @hotel_booking_x_price_per_bed_per_person_per_day.
  ///
  /// In en, this message translates to:
  /// **'{x} beds/person/day'**
  String hotel_booking_x_price_per_bed_per_person_per_day(Object x);

  /// No description provided for @hotel_booking_price_details.
  ///
  /// In en, this message translates to:
  /// **'Price details'**
  String get hotel_booking_price_details;

  /// No description provided for @hotel_booking_billings_information.
  ///
  /// In en, this message translates to:
  /// **'Payment information'**
  String get hotel_booking_billings_information;

  /// No description provided for @hotel_booking_service_charge_description.
  ///
  /// In en, this message translates to:
  /// **'We will keep this fee as a commission for the service and support in your reservation-related issues on the Hahalolo system. '**
  String get hotel_booking_service_charge_description;

  /// No description provided for @hotel_booking_payment_fees_description.
  ///
  /// In en, this message translates to:
  /// **'Payment fee is the amount of transaction fees per transaction that you need to pay online payment services suppliers.'**
  String get hotel_booking_payment_fees_description;

  /// No description provided for @hotel_booking_taxes_and_fees_description.
  ///
  /// In en, this message translates to:
  /// **'Taxes and fees are the amount of money charged under the regulations of the property (hotel) that you are required to pay when using their accommodation services. Please read the Terms of Use for further details.'**
  String get hotel_booking_taxes_and_fees_description;

  /// No description provided for @hotel_booking_accommodation_currency_description.
  ///
  /// In en, this message translates to:
  /// **'The price has been converted based on the available currency of the Supplier.'**
  String get hotel_booking_accommodation_currency_description;

  /// No description provided for @hotel_booking_accommodation_currency_sub_descr_1.
  ///
  /// In en, this message translates to:
  /// **'The exchange rate is subject to change before you pay.'**
  String get hotel_booking_accommodation_currency_sub_descr_1;

  /// No description provided for @hotel_booking_accommodation_currency_sub_descr_2.
  ///
  /// In en, this message translates to:
  /// **'Your card issuer can charge a foreign transaction fee.'**
  String get hotel_booking_accommodation_currency_sub_descr_2;

  /// No description provided for @hotel_booking_enter_maximum_x_char.
  ///
  /// In en, this message translates to:
  /// **'Enter a maximum of {x} characters'**
  String hotel_booking_enter_maximum_x_char(Object x);

  /// No description provided for @hotel_booking_point_not_available.
  ///
  /// In en, this message translates to:
  /// **'Points are not available.'**
  String get hotel_booking_point_not_available;

  /// No description provided for @hotel_booking_coin_not_available.
  ///
  /// In en, this message translates to:
  /// **'Coins are not available.'**
  String get hotel_booking_coin_not_available;

  /// No description provided for @hotel_booking_voucher_not_available.
  ///
  /// In en, this message translates to:
  /// **'Coupon code is not available.'**
  String get hotel_booking_voucher_not_available;

  /// No description provided for @hotel_booking_please_check_again.
  ///
  /// In en, this message translates to:
  /// **'Please check again.'**
  String get hotel_booking_please_check_again;

  /// No description provided for @hotel_booking_point_change.
  ///
  /// In en, this message translates to:
  /// **'The number of points applied has changed due to the change of total payment.'**
  String get hotel_booking_point_change;

  /// No description provided for @hotel_booking_hold_warning.
  ///
  /// In en, this message translates to:
  /// **'Your property reservation has been made, so you cannot change the order information. Please make a payment to complete your reservation.'**
  String get hotel_booking_hold_warning;

  /// No description provided for @hotel_booking_total_point_change.
  ///
  /// In en, this message translates to:
  /// **'Your available Points have changed. Please enter the number of Points to apply for the order.'**
  String get hotel_booking_total_point_change;

  /// No description provided for @search_city_city_or_state_hint.
  ///
  /// In en, this message translates to:
  /// **'Where do you want to stay?'**
  String get search_city_city_or_state_hint;

  /// No description provided for @search_city_no_result.
  ///
  /// In en, this message translates to:
  /// **'No matching locations found...'**
  String get search_city_no_result;

  /// No description provided for @search_city_choose_the_city.
  ///
  /// In en, this message translates to:
  /// **'Search for hotels'**
  String get search_city_choose_the_city;

  /// No description provided for @advanced_search_pick_a_hotel.
  ///
  /// In en, this message translates to:
  /// **'Select a hotel'**
  String get advanced_search_pick_a_hotel;

  /// No description provided for @advanced_search_any_review.
  ///
  /// In en, this message translates to:
  /// **'Any'**
  String get advanced_search_any_review;

  /// No description provided for @advanced_search_star_rating.
  ///
  /// In en, this message translates to:
  /// **'Star rating'**
  String get advanced_search_star_rating;

  /// No description provided for @advanced_search_any_star.
  ///
  /// In en, this message translates to:
  /// **'Unrated'**
  String get advanced_search_any_star;

  /// No description provided for @advanced_search_a_star.
  ///
  /// In en, this message translates to:
  /// **'1 star'**
  String get advanced_search_a_star;

  /// No description provided for @advanced_search_x_star.
  ///
  /// In en, this message translates to:
  /// **'{x} stars'**
  String advanced_search_x_star(Object x);

  /// No description provided for @advanced_search_business_type.
  ///
  /// In en, this message translates to:
  /// **'Property type'**
  String get advanced_search_business_type;

  /// No description provided for @advanced_search_reset_button.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get advanced_search_reset_button;

  /// No description provided for @advanced_search_search_button.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get advanced_search_search_button;

  /// No description provided for @advanced_search_evaluation_point.
  ///
  /// In en, this message translates to:
  /// **'Review score'**
  String get advanced_search_evaluation_point;

  /// No description provided for @advanced_search_no_city_error.
  ///
  /// In en, this message translates to:
  /// **'No property selected'**
  String get advanced_search_no_city_error;

  /// No description provided for @advanced_search_title.
  ///
  /// In en, this message translates to:
  /// **'Advanced search'**
  String get advanced_search_title;

  /// No description provided for @advanced_search_clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get advanced_search_clear;

  /// No description provided for @advanced_search_no_date_error.
  ///
  /// In en, this message translates to:
  /// **'No date selected'**
  String get advanced_search_no_date_error;

  /// No description provided for @hotel_search_near_by.
  ///
  /// In en, this message translates to:
  /// **'Near by'**
  String get hotel_search_near_by;

  /// No description provided for @advanced_search_less_x_unit.
  ///
  /// In en, this message translates to:
  /// **'Less {x}{unit}'**
  String advanced_search_less_x_unit(Object x, Object unit);

  /// No description provided for @advanced_search_over_x_unit.
  ///
  /// In en, this message translates to:
  /// **'From {x}{unit} and over'**
  String advanced_search_over_x_unit(Object x, Object unit);

  /// No description provided for @advanced_search_from_x_to_less_y_unit.
  ///
  /// In en, this message translates to:
  /// **'From {x}{unit} to under {y}{unit}'**
  String advanced_search_from_x_to_less_y_unit(Object x, Object y, Object unit);

  /// No description provided for @advanced_search_distance_from_center.
  ///
  /// In en, this message translates to:
  /// **'Distance from center'**
  String get advanced_search_distance_from_center;

  /// No description provided for @hotel_booking_do_you_want_to_remove_a_user.
  ///
  /// In en, this message translates to:
  /// **'Do you really want to remove {user} from the list?'**
  String hotel_booking_do_you_want_to_remove_a_user(Object user);

  /// No description provided for @hotel_surcharge.
  ///
  /// In en, this message translates to:
  /// **'Surcharge'**
  String get hotel_surcharge;

  /// No description provided for @hotel_map_filter.
  ///
  /// In en, this message translates to:
  /// **'Sort by'**
  String get hotel_map_filter;

  /// No description provided for @hotel_map_default.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get hotel_map_default;

  /// No description provided for @hotel_map_high_star.
  ///
  /// In en, this message translates to:
  /// **'Star rating: High to low'**
  String get hotel_map_high_star;

  /// No description provided for @hotel_map_low_star.
  ///
  /// In en, this message translates to:
  /// **'Star rating: Low to high'**
  String get hotel_map_low_star;

  /// No description provided for @hotel_map_distance_center.
  ///
  /// In en, this message translates to:
  /// **'Distance from center'**
  String get hotel_map_distance_center;

  /// No description provided for @hotel_map_high_rate.
  ///
  /// In en, this message translates to:
  /// **'Top rated'**
  String get hotel_map_high_rate;

  /// No description provided for @hotel_map_high_order.
  ///
  /// In en, this message translates to:
  /// **'Most booked'**
  String get hotel_map_high_order;

  /// No description provided for @hotel_hand_note_reply.
  ///
  /// In en, this message translates to:
  /// **'Property\'s response'**
  String get hotel_hand_note_reply;

  /// No description provided for @hotel_booking_payment_3011_error.
  ///
  /// In en, this message translates to:
  /// **'Card was declined. Please try another card or contact your card issuer for assistance!'**
  String get hotel_booking_payment_3011_error;

  /// No description provided for @hotel_hand_note_utilities_title_room.
  ///
  /// In en, this message translates to:
  /// **'ROOM AMENITIES'**
  String get hotel_hand_note_utilities_title_room;

  /// No description provided for @flight_luggage_handle.
  ///
  /// In en, this message translates to:
  /// **'Luggage handle'**
  String get flight_luggage_handle;

  /// No description provided for @flight_checked_baggage.
  ///
  /// In en, this message translates to:
  /// **'Checked baggage (can buy more)'**
  String get flight_checked_baggage;

  /// No description provided for @flight_airline_operator_by.
  ///
  /// In en, this message translates to:
  /// **'Operated by {organization}'**
  String get flight_airline_operator_by;

  /// No description provided for @flight_adult_count.
  ///
  /// In en, this message translates to:
  /// **'Adult (x{count})'**
  String flight_adult_count(Object count);

  /// No description provided for @flight_child_count.
  ///
  /// In en, this message translates to:
  /// **'Child (x{count})'**
  String flight_child_count(Object count);

  /// No description provided for @flight_kid_count.
  ///
  /// In en, this message translates to:
  /// **'Kid (x{count})'**
  String flight_kid_count(Object count);
}

class _StringAppDelegate extends LocalizationsDelegate<StringApp> {
  const _StringAppDelegate();

  @override
  Future<StringApp> load(Locale locale) {
    return SynchronousFuture<StringApp>(lookupStringApp(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_StringAppDelegate old) => false;
}

StringApp lookupStringApp(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return StringAppEn();
    case 'vi': return StringAppVi();
  }

  throw FlutterError(
    'StringApp.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
