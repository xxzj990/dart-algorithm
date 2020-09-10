void main() {
  var data = [6, 4, 3, 4, 5, 2, 7];
  var k = 3;
  var tmp = data.reversed.toList();
  var ret = [];
  ret.addAll(tmp.take(k % data.length).toList().reversed.toList());
  ret.addAll(tmp.skip(k % data.length).toList().reversed.toList());
  print('ret:$ret');
}