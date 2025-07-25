import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodyman/presentation/theme/theme.dart';

class CustomToggle extends StatefulWidget {
  final String title;
  final VoidCallback onChange;
  final ValueNotifier<bool>? controller;
  final bool isChecked;

  const CustomToggle(
      {super.key,
      required this.title,
      required this.isChecked,
      required this.onChange,
      this.controller});

  @override
  State<CustomToggle> createState() => _CustomToggleState();
}

class _CustomToggleState extends State<CustomToggle> {

  @override
  void initState() {
    widget.controller?.addListener(() {
      widget.onChange();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 18.w),
      decoration: BoxDecoration(
          color: AppStyle.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(10.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: AppStyle.interNoSemi(
              size: 16,
              color: AppStyle.black,
            ),
          ),
          Row(
            children: [
              AdvancedSwitch(
                initialValue: widget.controller?.value ?? false,
                controller: widget.controller,
                activeColor: AppStyle.primary,
                inactiveColor: AppStyle.orderStatusProgressBack,
                borderRadius: BorderRadius.circular(10.r),
                width: 60.w,
                height: 30.h,
                enabled: true,
                disabledOpacity: 0.5,
                thumb: Container(
                  margin: EdgeInsets.all(3.r),
                  padding:
                      EdgeInsets.symmetric(vertical: 7.h, horizontal: 9.w),
                  decoration: BoxDecoration(
                      color: AppStyle.white,
                      borderRadius: BorderRadius.all(Radius.circular(7.r))),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppStyle.switchBg,
                      boxShadow: [
                        BoxShadow(
                          color: AppStyle.white.withOpacity(0.07),
                          spreadRadius: 0,
                          blurRadius: 2,
                          offset: const Offset(
                              0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              12.horizontalSpace,
              SizedBox(
                width: 24.w,
                child: Text(
                  widget.isChecked ? "On" : "Off",
                  style: AppStyle.interNormal(
                    size: 14,
                    color: AppStyle.textGrey,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
