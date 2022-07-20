List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC
      .map((num) => double.parse((((num * 9) / 5) + 32).toStringAsFixed(2)))
      .toList();
}
