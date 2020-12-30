import 'dart:math' as Math;

///
/// 两个数组的交集(进阶):
/// 
/// 如果给定的数组已经排好序呢？将如何优化你的算法呢？
/// 思路：设定两个为0的指针，比较两个指针的元素是否相等。如果指针的元素相等，我们将两个指针一起向后移动，并且将相等的元素放入空白数组。
/// 

void main() {
  var a = [5, 7, 8, 3, 3];
  var b = [7, 4, 3, 8, 9, 8, 3];

  a.sort();
  b.sort();
  print('input :a=$a b=$b');

  var ret = mix(a, b);
  print('result:$ret');
}

List mix(List a, List b) {
  var lenMax = Math.max(a.length, b.length);
  var lenMin = Math.min(a.length, b.length);
  var ret = [];
  var m = 0, n = 0;
  for (int i = 0; i < lenMax; i++) {
    if (i >= lenMin) {
      break;
    }
    if (a[i] > b[i]) {
      m++;
    } else if (a[i] < b[i]) {
      n++;
    } else {
      ret.add(a[i]);
      m++;
      n++;
    }
  }
  return ret;
}
