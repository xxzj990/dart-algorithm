void main() {
  var strs = ['flower', 'flow', 'flight'];
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
        print('tmp:$ret');
      }
    }
    if (ret.length == 0) {
      break;
    }
    print('->:$ret');
  }
  print('ret:$ret');
}
