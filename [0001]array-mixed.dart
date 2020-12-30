/// 
/// 两个数组的交集
/// 
/// 给定两个数组，编写一个函数来计算它们的交集。
/// 
/// 示例 1:
/// 
/// 输入: nums1 = [1,2,2,1], nums2 = [2,2]
/// 输出: [2,2]
/// 
/// 示例 2:
/// 
/// 输入: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
/// 输出: [4,9]
/// 
/// 说明：
/// 
/// 输出结果中每个元素出现的次数，应与元素在两个数组中出现的次数一致。
/// 我们可以不考虑输出结果的顺序。

void main() {
  var a = [4, 9, 5];
  var b = [9, 4, 9, 8, 4];
  print('input :a=$a b=$b');
  var ret = mix(a, b);
  print('result:$ret');
}

List mix(List a, List b) {
  var am = {};
  for (var i in a) {
    if (am[i] != null) {
      am[i] += 1;
    } else {
      am[i] = 1;
    }
  }

  var ret = [];
  for (var j in b) {
    if (am[j] != null && am[j] > 0) {
      am[j] -= 1;
      ret.add(j);
    }
  }
  return ret;
}


