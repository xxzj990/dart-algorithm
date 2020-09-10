import 'dart:math' as Math;

void main() {
  var data = [6, 4, 3, 4, 5, 2, 7];
  var tmp = List(data.length);
  tmp[0] = [0, -data[0]];

  for (int i = 1; i < data.length; i++) {
    int m = tmp[i - 1][0];
    int n = tmp[i - 1][1];
    tmp[i] = [Math.max(m, n + data[i]), Math.max(m - data[i], n)];
    print('tmp: $tmp');
  }
  var ret = tmp[data.length - 1][0];
  print('ret:$ret');
}