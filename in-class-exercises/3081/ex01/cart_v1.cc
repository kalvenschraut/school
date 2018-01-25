#include <iostream>

// A class for a single element in a cart
class CartEntry {
private:
  float price_;
  int quantity_;
public:
  CartEntry( float p=0, int q=0) {
    price_ = p;
    quantity_ = q;
  }
};

// A collection of elements in a cart
// CartContents "has a" CartEntry - using composition
class CartContents{
private:
  int itemCount_; // number of elements in cart
  CartEntry* items_;
};

// An order is the combination of a cart and tax
// different states apply different salesTax rates.
class Order {
private:
  CartContents cart_;
  float salesTax_;
public:
  Order( CartContents c, float s ) {
    cart_ = c;
    salesTax_ = s;
  }
  float OrderTotal() {
    float cartTotal = 0;
    for (int i=0; i < cart_.itemCount_; i++) {
      cartTotal += cart_.items_[i].price_ * cart_.items_[i].quantity_;
    }
    cartTotal += cartTotal * salesTax_;
    return cartTotal;
  }
};

int main() {

  // Create an array of CartEntry's to put in the cart
  // Arbitrary values for price and quantity
  CartEntry inCart[5];
  for (int i=0; i<5; i++) {
    inCart[i].price_ = i*2;
    inCart[i].quantity_ = i;
  }

  // Place the CartEntry array in a CartContents
  CartContents purchases;
  purchases.items_ = inCart;
  purchases.itemCount_ = 5;

  // Make this an order with associated tax
  Order order1(purchases, .077);

  // Get total price of order
  std::cout << '$' << order1.OrderTotal() << std::endl;

  return 0;
}
