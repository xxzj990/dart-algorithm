import 'dart:math' as Math;

void main() {
  var a = [5, 7, 8, 3, 3];
  var b = [7, 4, 3, 8, 9, 8, 3];

  a.sort();
  b.sort();
  print('a:$a ,b:$b');

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
  print('ret:$ret');
}
