void main() {
  var data = [6, 4, 3, 4, 5, 2, 7];
  var k = 3;
  print('arr:$data k:$k');
  print('ret:${rotate(data, k)}');
}

List rotate(List arr, int k) {
  var tmp = arr.reversed;
  var ret = [];
  ret.addAll(tmp.take(k % arr.length).toList().reversed);
  ret.addAll(tmp.skip(k % arr.length).toList().reversed);
  return ret;
}