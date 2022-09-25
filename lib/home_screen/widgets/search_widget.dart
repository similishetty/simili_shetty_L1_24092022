
import 'package:flutter/material.dart';
import 'package:simili_shetty_l1_24092022/common_widget/custom_icon_button.dart';
import 'package:simili_shetty_l1_24092022/utils/app_colors.dart';
import 'package:simili_shetty_l1_24092022/utils/app_data.dart';
class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController searchController = TextEditingController();
  bool showClearIcon = false;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      margin: const EdgeInsets.all(10),
     // padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: searchController,
              onChanged: (value){
                if(value.isEmpty){
                  setState(() {
                    showClearIcon = false;
                  });
                }else{
                  setState(() {
                    showClearIcon = true;
                  });
                }
              },
              decoration: InputDecoration(
                  border: getOutlinedBorder(),
                  enabledBorder:  getOutlinedBorder(),
                  focusedBorder: getOutlinedBorder(),
                  filled: true,
                  suffixIcon: showClearIcon?IconButton(
                    splashColor: AppColors.transparent,
                    onPressed: searchController.clear,
                    icon:  Icon(Icons.clear,color: AppColors.black,),
                  ):null,
                  hintStyle: TextStyle(color: AppColors.hintText),
                  hintText: AppData.searchHere,
                  fillColor: AppColors.white),
            ),
          ),
          const CustomIconButton(icon: Icons.search,),
        ],
      ),
    );
  }

  OutlineInputBorder getOutlinedBorder(){
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: AppColors.transparent)
    );
  }
}
