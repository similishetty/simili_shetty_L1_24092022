import 'package:flutter/foundation.dart';

class AppBarActionNotifier{
  static final isSearchSelected = ValueNotifier<bool>(false);
  static final isCartSelected = ValueNotifier<bool>(false);
  static final isLoginSelected = ValueNotifier<bool>(false);
  static final isMenuSelected = ValueNotifier<bool>(false);
  static updateAppBarAction(String tabName){
    if(tabName=="search"){
      isSearchSelected.value = !isSearchSelected.value;
      isCartSelected.value= false;
      isLoginSelected.value = false;
      isMenuSelected.value = false;
    }else if(tabName=="cart"){
      isSearchSelected.value = false;
      isCartSelected.value= !isCartSelected.value;
      isLoginSelected.value = false;
      isMenuSelected.value = false;
    }else if(tabName=="login"){
      isSearchSelected.value = false;
      isCartSelected.value= false;
      isLoginSelected.value = ! isLoginSelected.value;
      isMenuSelected.value = false;
    }else if(tabName=="menu"){
      isSearchSelected.value = false;
      isCartSelected.value= false;
      isMenuSelected.value = ! isMenuSelected.value;
      isLoginSelected.value = false;
    }
    else{
      isSearchSelected.value = false;
      isCartSelected.value= false;
      isLoginSelected.value = false;
      isMenuSelected.value = false;
    }

  }

}