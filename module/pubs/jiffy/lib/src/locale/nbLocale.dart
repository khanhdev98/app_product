import 'package:jiffy/src/locale/locale.dart';
import 'package:jiffy/src/locale/relativeTime.dart';
import 'package:jiffy/src/enums/startOfWeek.dart';

class NbLocale extends Locale {
  StartOfWeek strtOfWeek;
  NbLocale(this.strtOfWeek);

  @override
  RelativeTime relativeTime() => NbRelativeTime();

  @override
  List<String>? ordinals() => ['.', '.', '.', '.'];

  @override
  StartOfWeek startOfWeek() => strtOfWeek;
}

class NbRelativeTime extends RelativeTime {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => 'om';
  @override
  String suffixAgo() => 'siden';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'noen sekunder';
  @override
  String aboutAMinute(int minutes) => 'ett minutt';
  @override
  String minutes(int minutes) => '$minutes minutter';
  @override
  String aboutAnHour(int minutes) => 'en time';
  @override
  String hours(int hours) => '$hours timer';
  @override
  String aDay(int hours) => 'en dag';
  @override
  String days(int days) => '$days dager';
  @override
  String aboutAMonth(int days) => 'en måned';
  @override
  String months(int months) => '$months måneder';
  @override
  String aboutAYear(int year) => 'ett år';
  @override
  String years(int years) => '$years år';
  @override
  String wordSeparator() => ' ';
}
