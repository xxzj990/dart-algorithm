void main() {
  var a = [5, 7, 8, 3, 3];
  var b = [7, 4, 3, 8, 9, 8, 3];

  var am = {};
  for (var i in a) {
    if (am[i] != null) {
      am[i] += 1;
    } else {
      am[i] = 1;
    }
  }
  print('am:$am');

  var ret = [];
  for (var j in b) {
    if (am[j] != null && am[j] > 0) {
      am[j] -= 1;
      ret.add(j);
    }
  }
  print('ret:$ret');
}
