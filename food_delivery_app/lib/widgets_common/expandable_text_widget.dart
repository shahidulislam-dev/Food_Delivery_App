import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/colors.dart';
import 'package:food_delivery_app/core/utils/dimensions.dart';
import 'package:food_delivery_app/widgets_common/description_text.dart';
import 'package:food_delivery_app/widgets_common/small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({
    super.key,
    required this.text
  });

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
   late String firstHalf;
   late String secondHalf;
   bool isExpanded = true;
   double textHeight = Dimensions.screenHeight / 5.63;


   @override
  void initState() {
    super.initState();
    if(widget.text.length > textHeight){
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt()+1, widget.text.length);
    }else{
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty ? DescriptionText(text: firstHalf) : Column(
        children: [
          DescriptionText(text: isExpanded ? ("$firstHalf...") : (firstHalf + secondHalf), size: Dimensions.font16,height: 1.8, color: AppColors.paracolor,),
          SizedBox(height: Dimensions.height5,),
          GestureDetector(
            onTap: (){
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DescriptionText(text: isExpanded?  "Show more" : "Show less", color: AppColors.mainColor, size: Dimensions.font14,),
                SizedBox(width: Dimensions.width5,),
                Icon(
                  !isExpanded
                      ? Icons.keyboard_arrow_up_sharp
                      : Icons.keyboard_arrow_down_sharp,
                  color: AppColors.mainColor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
