import 'package:crashlyticsexample/model/promotions.dart';
import 'package:meta/meta.dart';

@immutable
// ignore: must_be_immutable
class BawaState {
  final List<Promotions> manageItems;
  String value = "";
  // final List<TiffinData> manageNewItems;
  // final List<Tiffin> manageTiffin;
  // final List<Item> manageExtraItems;
  // final List<Coupon> manageCoupon;
  // final bool fetchError;
  // final bool isLoading;
  // final String error;

  BawaState({
    required this.manageItems,
    required this.value,
    // this.manageNewItems,
    // this.manageTiffin,
    // this.manageExtraItems,
    // this.manageCoupon,
    // @required this.fetchError,
    // @required this.error,
    // @required this.isLoading,
  });
  factory BawaState.initial() {
    return new BawaState(
      manageItems: const [],
      value: "",
      // manageNewItems: const [],
      // manageTiffin: const [],
      // manageExtraItems: const [],
      // manageCoupon: const [],
      // fetchError: false,
      // error: null,
      // isLoading: false,
    );
  }

  BawaState copyWith({
    List<BawaState>? manageItems,
    String? value,
    // List<BawaState> manageNewItems,
    // List<BawaState> manageTiffin,
    // List<BawaState> manageExtraItems,
    // List<BawaState> manageCoupon,
    // bool fetchError,
    // String error,
    // bool isLoading
  }) {
    return new BawaState(
      manageItems: this.manageItems,
      value: value ?? this.value,
      // manageNewItems: manageNewItems ?? this.manageNewItems,
      // manageTiffin: manageTiffin ?? this.manageTiffin,
      // manageExtraItems: manageExtraItems ?? this.manageExtraItems,
      // manageCoupon: manageCoupon ?? this.manageCoupon,
      // fetchError: fetchError ?? false,
      // error: error ?? null,
      // isLoading: isLoading ?? false,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BawaState &&
          runtimeType == other.runtimeType &&
          manageItems == other.manageItems &&
          value == other.value;
  // manageNewItems == other.manageNewItems &&
  // manageTiffin == other.manageTiffin &&
  // manageExtraItems == other.manageExtraItems &&
  // manageCoupon == other.manageCoupon &&
  // fetchError == other.fetchError &&
  // error == other.error &&
  // isLoading == other.isLoading;

  @override
  int get hashCode => manageItems.hashCode^
  value.hashCode;
  // manageNewItems.hashCode ^
  // manageTiffin.hashCode ^
  // manageExtraItems.hashCode ^
  // manageCoupon.hashCode ^
  // fetchError.hashCode ^
  // error.hashCode ^
  // isLoading.hashCode;

  void dispatch(takeTiffin) {}
}
