import 'package:flutter_screenutil/flutter_screenutil.dart';

double designWidth = 750;
double designHeight = 1334;

Map<double, double> widths = {};
Map<double, double> heights = {};
Map<double, double> fontSizes = {};

// 宽度
getWidth(double width) {
  return widths[width] ?? ScreenUtil.getInstance().setWidth(width);
}

// 高度
getHeight(double height) {
  return heights[height] ?? ScreenUtil.getInstance().setWidth(height);
}

// 尺寸，一般是字体的大小
getSize(double size) {
  return fontSizes[size] ?? ScreenUtil.getInstance().setSp(size);
}

// 获取屏幕的宽度
getScreenWidth() {
  return ScreenUtil.screenWidth;
}

// 获取屏幕的高度
getScreenHeight() {
  return ScreenUtil.screenHeight;
}

// 状态栏的高度，刘海屏跟高
getStatusBarHeight() {
  return ScreenUtil.statusBarHeight;
}

// 底部安全区
getBottomBarHeight() {
  return ScreenUtil.bottomBarHeight;
}

// 初始化尺寸,在
// 假如设计稿是按iPhone6的尺寸设计的(iPhone6 750*1334)
// ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
initSize() {
  var size = designHeight > designWidth ? designHeight : designWidth;
  for (double i = 0; i <= size; i++) {
    widths[i] = getWidth(i);
    heights[i] = getHeight(i);
    fontSizes[i] = getSize(i);
  }
}

// 重置尺寸
resetSize() {
  widths = {};
  heights = {};
  fontSizes = {};
}

setDesign({double width = 750, double height = 1334}) {
  designWidth = width;
  designHeight = height;
}

// 初始化
initSizeWithContext(context) {
  ScreenUtil.instance = ScreenUtil(width: designWidth, height: designHeight)
    ..init(context);
}
