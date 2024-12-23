class RecentCounter {
  RecentCounter() {}
  List<int> pingList = [];
  int ping(int t) {
    if (pingList.length == 0 || pingList[0] >= t - 3000) {
      pingList.add(t);
    } else if (pingList[0] < t - 3000) {
      int tRange = t - 3000;
      pingList.add(t);
      while (true) {
        if (pingList[0] < t - 3000) {
          pingList.removeAt(0);
        } else {
          break;
        }
      }
    }
    return pingList.length;
  }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * RecentCounter obj = RecentCounter();
 * int param1 = obj.ping(t);
 */