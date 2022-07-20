int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  var t1 = 0;
  var t2 = 0;

  teamA.forEach((key, value) {
    if (key == 'Free throws')
      t1 += value;
    else if (key == '2 pointer')
      t1 += value * 2;
    else if (key == '3 pointer') t1 += value * 3;
  });

  teamB.forEach((key, value) {
    if (key == 'Free throws')
      t2 += value;
    else if (key == '2 pointer')
      t2 += value * 2;
    else if (key == '3 pointer') t2 += value * 3;
  });

  if (t1 > t2)
    return 1;
  else if (t1 == t2)
    return 0;
  else
    return 2;
}
