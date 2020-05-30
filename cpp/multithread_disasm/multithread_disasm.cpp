#include <atomic>
#include <condition_variable>
#include <iostream>
#include <mutex>
#include <thread>

#define MAX 1000000

void producer(std::mutex &_m, std::condition_variable &_cvp,
            std::condition_variable &_cvc, int &_buffer) {
  for (int i = 0; i < MAX; i++) {
    std::unique_lock<std::mutex> _lock(_m);

    while (_buffer != 0) {
      _cvp.wait(_lock);
    }

    _buffer = i;
    std::cout << "Producer: buffer = " << _buffer << std::endl;
    _lock.unlock();
    _cvc.notify_one();
  }
}

void consumer(std::mutex &_m, std::condition_variable &_cvp,
            std::condition_variable &_cvc, int &_buffer) {
  for (int i = 0; i < MAX; i++) {
    std::unique_lock<std::mutex> _lock(_m);

    while (_buffer == 0) {
      _cvc.wait(_lock);
    }

    _buffer = 0;
    std::cout << "Consumer: buffer = " << _buffer << std::endl;
    _lock.unlock();
    _cvp.notify_one();
  }
}

int main() {
  std::atomic<int> _at_int;
  std::mutex _m;
  std::recursive_mutex _rm;
  std::condition_variable _cvp, _cvc;
  int _buffer = 0;

  std::thread _prod(producer, std::ref(_m), std::ref(_cvp), std::ref(_cvc), std::ref(_buffer));
  std::thread _cons(consumer, std::ref(_m), std::ref(_cvp), std::ref(_cvc), std::ref(_buffer));

  _prod.join();
  _cons.join();

  return 0;
}
