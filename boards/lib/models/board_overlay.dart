class BoardOverlay {
  List<int> _positions = [];

  List<int> get positions {
    return _positions;
  }

  void addPosition(int position) {
    _positions.add(position);
  }

  BoardOverlay(List<int> positions) {
    _positions = positions;
  }
}