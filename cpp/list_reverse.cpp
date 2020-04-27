#include <iostream>

class Node {
private:
  int value;

public:
  Node(int value_): value(value_) {}
  int getValue() { return value; }

  Node *next = nullptr;
};

class List {
private:
  Node *current = nullptr;

public:
  void fill();
  void reverse();
  void print();

  ~List();
};

void List::fill() {
  Node *head = new Node(0);
  current = head;
  for (int i = 1; i < 10; i++) {
    Node *newNode = new Node(i);
    current->next = newNode;
    current = current->next;
  }
  current = head;
}

void List::reverse() {
}

// TODO:: make iter
void List::print() {
  Node *head = current;

  std::cout << "List data: " << std::endl;
  while (current != nullptr) {
    std::cout << current->getValue() << std::endl;
    current = current->next;
  }

  current = head;
}

List::~List() {
  std::cout << "GB called" << std::endl;
  if (current == nullptr) {
    return;
  }

  while (current->next != nullptr) {
    Node *next = current->next;
    delete current;
    current = next;
  }
  delete current;
  current = nullptr;
}

int main() {
  List list;
  list.fill();
  list.print();
  list.reverse();
  list.print();
}
