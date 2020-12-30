
/// 
/// 最长公共前缀
/// 
/// 编写一个函数来查找字符串数组中的最长公共前缀。如果不存在公共前缀，则返回""
/// 
/// 示例1:
/// 
/// 输入: ["flower","flow","flight"]
/// 输出: "fl"
/// 
/// 示例 2:
/// 
/// 输入: ["dog","racecar","car"]
/// 输出: ""
/// 
/// 解释:
/// 
/// 输入不存在公共前缀。
/// 
/// 说明：
/// 
/// 所有输入只包含小写字母 a-z
/// 

void main() {
  var strs = ['flower', 'flow', 'flight'];
  print('input :$strs');
  var ret = maxPrefix(strs);
  print('result:$ret');
}

String maxPrefix(List strs) {
  var ret = strs[0];
  for (var str in strs) {
    if (str.length == 0) {
      ret = '';
      break;
    }
    var tmp = ret;
    for (int i = 0; i < tmp.length; i++) {
      if (str.indexOf(ret) != 0) {
        ret = ret.substring(0, ret.length - 1);
      } else {
        break;
      }
    }
    if (ret.length == 0) {
      break;
    }
  }
  return ret;
}
