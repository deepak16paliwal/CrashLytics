import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crashlyticsexample/model/promotions.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';




ThunkAction getPromotions() {
  return (Store store) async {
    try {
      List<Promotions> itemList = [];
FirebaseFirestore.instance
          .collection("PromoImages").get()
          .then((QuerySnapshot snapshot) {
            snapshot.docs.forEach((DocumentSnapshot documentSnapshot) {
              final Map<String, dynamic>? data = documentSnapshot.data() as Map<String, dynamic>?;
              itemList.add(Promotions.fromJson(data!));
             });
        store.dispatch(GetPromotion(itemList));
        store.dispatch(BawaAction.StopFetching);
      });
    } catch (e) {
      store.dispatch(BawaAction.StopFetching);
      switch(e.hashCode){
        default:
          store.dispatch(
            GetPromotionError('Something went wrong. Please try again.'),
          );
          break;
      }
      // switch (e.code) {
      //   default:
      //     store.dispatch(
      //       GetPromotionError('Something went wrong. Please try again.'),
      //     );
      //     break;
      // }
    }
  };
}
// ThunkAction getTiffin() {
//   return (Store store) async {
//     try {
//       print("Lolo");
//       List<TiffinData> itemList = [];
//       // print("${Firestore.instance.collection("Tiffin").document("TiffinName").get().}");
//       Firestore.instance
//           .collection("Tiffin")
//           .getDocuments()
//           .then((QuerySnapshot snapshot) {
//             print(" ki");
//         snapshot.documents.forEach((item) {
// print("Hii Hello Aa Jao");

//           print("marJaava ${TiffinData.fromJson(item.data).tiffinName}");
//           // print("item.data ++ ${item.data}");
//           // if(TiffinData.fromJson(item.data).tiffinType == s.toString()|| TiffinData.fromJson(item.data).tiffinType == "Both"){
// itemList.add(TiffinData.fromJson(item.data));
//           // }
            
          
//         });

//         store.dispatch(GetTiffinNew(itemList));
//         store.dispatch(BawaAction.StopFetching);
//       });
//     } catch (e) {
//       store.dispatch(BawaAction.StopFetching);
//       switch (e.code) {
//         default:
//           store.dispatch(
//             GetTiffinNewError('Something went wrong. Please try again.'),
//           );
//           break;
//       }
//     }
//   };
// }
// ThunkAction getLunchTiffin() {
//   return (Store store) async {
//     try {
//       print("Lolo");
//       List<TiffinData> itemList = [];
//       // print("${Firestore.instance.collection("Tiffin").document("TiffinName").get().}");
//       Firestore.instance
//           .collection("Tiffin")
//           .getDocuments()
//           .then((QuerySnapshot snapshot) {
//             print(" ki");
//         snapshot.documents.forEach((item) {
// print("Hii Hello Aa Jao");

//           print("marJaava ${TiffinData.fromJson(item.data).tiffinName}");
//           // print("item.data ++ ${item.data}");
//           if(TiffinData.fromJson(item.data).tiffinType == "Lunch"|| TiffinData.fromJson(item.data).tiffinType == "Both"){
// itemList.add(TiffinData.fromJson(item.data));
//           }
            
          
//         });

//         store.dispatch(GetTiffinNew(itemList));
//         store.dispatch(BawaAction.StopFetching);
//       });
//     } catch (e) {
//       store.dispatch(BawaAction.StopFetching);
//       switch (e.code) {
//         default:
//           store.dispatch(
//             GetTiffinNewError('Something went wrong. Please try again.'),
//           );
//           break;
//       }
//     }
//   };
// }

// ThunkAction getDinnerTiffin() {
//   return (Store store) async {
//     try {
//       print("Lolo");
//       List<TiffinData> itemList = [];
//       // print("${Firestore.instance.collection("Tiffin").document("TiffinName").get().}");
//       Firestore.instance
//           .collection("Tiffin")
//           .getDocuments()
//           .then((QuerySnapshot snapshot) {
//             print(" ki");
//         snapshot.documents.forEach((item) {
// print("Hii Hello Aa Jao");

//           print("marJaava ${TiffinData.fromJson(item.data).tiffinName}");
//           // print("item.data ++ ${item.data}");
//           if(TiffinData.fromJson(item.data).tiffinType == "Dinner"|| TiffinData.fromJson(item.data).tiffinType == "Both"){
// itemList.add(TiffinData.fromJson(item.data));
//           }
            
          
//         });

//         store.dispatch(GetTiffinNew(itemList));
//         store.dispatch(BawaAction.StopFetching);
//       });
//     } catch (e) {
//       store.dispatch(BawaAction.StopFetching);
//       switch (e.code) {
//         default:
//           store.dispatch(
//             GetTiffinNewError('Something went wrong. Please try again.'),
//           );
//           break;
//       }
//     }
//   };
// }

// ThunkAction takeTiffin(String tiffinName, tiffinDay, tiffinId) {
//   return (Store store) async {
//     try {
//       List<Tiffin> itemList = [];
//       print("$tiffinDay");
//       print("$tiffinName");
//       print(tiffinId.toString());
//       // print("${Firestore.instance.collection("Tiffin").document("TiffinName").get().}");
//       Firestore.instance
//           .collection("Tiffin").document(tiffinId).collection("$tiffinName")
//           .getDocuments()
//           .then((QuerySnapshot snapshot) {
            
//         snapshot.documents.forEach((item) {
//           print("here we compare ${item.documentID.toString()}");
//           print(" or ${tiffinDay.toString()}");
//           if(item.documentID.toString() == tiffinDay.toString())
//           {

// itemList.add(Tiffin.fromJson(item.data));
//           }
            
          
//         });

//         store.dispatch(GetTiffin(itemList));
//         store.dispatch(BawaAction.StopFetching);
//       });
//     } catch (e) {
//       store.dispatch(BawaAction.StopFetching);
//       switch (e.code) {
//         default:
//           store.dispatch(
//             GetTiffinError('Something went wrong. Please try again.'),
//           );
//           break;
//       }
//     }
//   };
// }


// ThunkAction getItems() {
//   return (Store store) async {
//     try {
//       List<Item> itemList = [];
//       Firestore.instance
//           .collection("Items")
//           .getDocuments()
//           .then((QuerySnapshot snapshot) {
//         snapshot.documents.forEach((item) {
          
//             itemList.add(Item.fromJson(item.data));
          
//         });

//         store.dispatch(GetItems(itemList));
//         store.dispatch(BawaAction.StopFetching);
//       });
//     } catch (e) {
//       store.dispatch(BawaAction.StopFetching);
//       switch (e.code) {
//         default:
//           store.dispatch(
//             GetItemsError('Something went wrong. Please try again.'),
//           );
//           break;
//       }
//     }
//   };
// }


// ThunkAction getCoupons() {
//   return (Store store) async {
//     try {
//       List<Coupon> itemList = [];
//       Firestore.instance
//           .collection("Coupons")
//           .getDocuments()
//           .then((QuerySnapshot snapshot) {
//         snapshot.documents.forEach((item) {
//             itemList.add(Coupon.fromJson(item.data));
//         });
//         store.dispatch(GetCoupon(itemList));
//         store.dispatch(BawaAction.StopFetching);
//       });
//     } catch (e) {
//       store.dispatch(BawaAction.StopFetching);
//       switch (e.code) {
//         default:
//           store.dispatch(
//             GetCouponError('Something went wrong. Please try again.'),
//           );
//           break;
//       }
//     }
//   };
// }



enum BawaAction { FetchingItems, StopFetching }

class GetPromotion {
  List<Promotions> _manageItems;
  List<Promotions> get manageItems => this._manageItems;

  GetPromotion(this._manageItems);
}

class GetPromotionError {
  String _error;
  String get error => this._error;
  GetPromotionError(this._error);
}

// class GetTiffinNew {
//   List<TiffinData> _manageNewItems;
//   List<TiffinData> get manageNewItems => this._manageNewItems;

//   GetTiffinNew(this._manageNewItems);
// }

// class GetTiffinNewError {
//   String _error;
//   String get error => this._error;
//   GetTiffinNewError(this._error);
// }


// class GetTiffin {
//   List<Tiffin> _manageTiffin;
//   List<Tiffin> get manageTiffin => this._manageTiffin;

//   GetTiffin(this._manageTiffin);
// }

// class GetTiffinError {
//   String _error;
//   String get error => this._error;
//   GetTiffinError(this._error);
// }

// class GetItems {
//   List<Item> _manageExtraItems;
//   List<Item> get manageExtraItems => this._manageExtraItems;

//   GetItems(this._manageExtraItems);
// }

// class GetItemsError {
//   String _error;
//   String get error => this._error;
//   GetItemsError(this._error);
// }

// class GetCoupon {
//   List<Coupon> _manageCoupon;
//   List<Coupon> get manageCoupon => this._manageCoupon;

//   GetCoupon(this._manageCoupon);
// }

// class GetCouponError {
//   String _error;
//   String get error => this._error;
//   GetCouponError(this._error);
// }