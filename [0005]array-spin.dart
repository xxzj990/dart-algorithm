void main() {
  var data = [6, 4, 3, 4, 5, 2, 7];
  var k = 3;
  print('arr:$data k:$k');
  print('ret:${rotate(data, k)}');
}

List rotate(List arr, int k) {
  var tmp = arr.reversed.toList();
  var ret = [];
  ret.addAll(tmp.take(k % arr.length).toList().reversed.toList());
  ret.addAll(tmp.skip(k % arr.length).toList().reversed.toList());
  return ret;
}