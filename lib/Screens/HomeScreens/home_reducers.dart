

import 'package:crashlyticsexample/Screens/HomeScreens/home_actions.dart';
import 'package:crashlyticsexample/Screens/HomeScreens/home_state.dart';

BawaState bawaReducer(
    BawaState state, dynamic action) {
  if (action == BawaAction.FetchingItems) {
    return new BawaState(
      manageItems: state.manageItems, 
      value: state.value,
      // manageNewItems: state.manageNewItems,
      // manageTiffin: state.manageTiffin,
      // manageExtraItems:state.manageExtraItems,
      // manageCoupon:state.manageCoupon,
      // fetchError: false,
      // error: null,
      // isLoading: true,
    );
  } else if (action == BawaAction.StopFetching) {
    return new BawaState(
      manageItems: state.manageItems, 
      value: state.value,
      // manageNewItems: state.manageNewItems,
      // manageTiffin: state.manageTiffin,
      // manageExtraItems:state.manageExtraItems,
      // manageCoupon:state.manageCoupon,
      // fetchError: false,
      // error: null,
      // isLoading: false,
    );
  }

  switch (action.runtimeType) {
    case GetPromotion:
      return new BawaState(
        manageItems: action.manageItems,
         value: state.value,
        // manageNewItems: state.manageNewItems,
        // manageTiffin: state.manageTiffin,
        // manageExtraItems:state.manageExtraItems,
        // manageCoupon:state.manageCoupon,

      );
      break;

    case GetPromotionError:
      return new BawaState(
        manageItems: [], 
        value: '',
        // fetchError: true,
        // error: action.error,
        // isLoading: false,
      );
      break;
    //   case GetTiffinNew:
    //   return new BawaState(
    //     manageItems: state.manageItems,
    //     manageNewItems: action.manageNewItems,
    //     manageTiffin: state.manageTiffin,
    //     manageExtraItems:state.manageExtraItems,
    //     manageCoupon:state.manageCoupon,
    //     fetchError: false,
    //     error: null,
    //     isLoading: false,
    //   );
    //   break;

    // case GetTiffinNewError:
    //   return new BawaState(
    //     manageNewItems: null,
    //     fetchError: true,
    //     error: action.error,
    //     isLoading: false,
    //   );
    //   break;

    //   case GetTiffin:
    //   return new BawaState(
    //     manageItems: state.manageItems,
    //     manageNewItems: state.manageNewItems,
    //     manageTiffin: action.manageTiffin,
    //     manageExtraItems:state.manageExtraItems,
    //     manageCoupon:state.manageCoupon,
    //     fetchError: false,
    //     error: null,
    //     isLoading: false,
    //   );
    //   break;

    // case GetTiffinError:
    //   return new BawaState(
    //     manageNewItems: null,
    //     fetchError: true,
    //     error: action.error,
    //     isLoading: false,
    //   );
    //   break;

    //   case GetItems:
    //   return new BawaState(
    //     manageItems: state.manageItems,
    //     manageNewItems: state.manageNewItems,
    //     manageTiffin: state.manageTiffin,
    //     manageExtraItems:action.manageExtraItems,
    //     manageCoupon:state.manageCoupon,
    //     fetchError: false,
    //     error: null,
    //     isLoading: false,
    //   );
    //   break;

    // case GetItemsError:
    //   return new BawaState(
    //     manageExtraItems: null,
    //     fetchError: true,
    //     error: action.error,
    //     isLoading: false,
    //   );
    //   break;

    //   case GetCoupon:
    //   return new BawaState(
    //     manageItems: state.manageItems,
    //     manageNewItems: state.manageNewItems,
    //     manageTiffin: state.manageTiffin,
    //     manageExtraItems:state.manageExtraItems,
    //     manageCoupon:action.manageCoupon,
    //     fetchError: false,
    //     error: null,
    //     isLoading: false,
    //   );
    //   break;

    // case GetCouponError:
    //   return new BawaState(
    //     manageCoupon: null,
    //     fetchError: true,
    //     error: action.error,
    //     isLoading: false,
    //   );
    //   break;
    default:
      return state;
      break;
  }
}