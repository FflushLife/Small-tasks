#include <atomic>
#include <condition_variable>
#include <iostream>
#include <mutex>

int main() {
  std::atomic<int> _at_int;
  std::mutex _lock;
  std::recursive_mutex _rlock;
  std::condition_variable _cv;
  return 0;
}
