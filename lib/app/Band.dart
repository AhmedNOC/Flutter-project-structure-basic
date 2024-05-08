import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nocassist/Domain/Models.dart';
import 'BANDBloc.dart';

class BAND {
  late BuildContext contextBAND;
  BAND();

// ------- fake data here -------------
  List<Catagory> catagoryList = [
    Catagory(id: '1', name: 'catagory 1', products: [
      Product(id: '11', name: 'product 11', price: 100),
      Product(id: '12', name: 'product 12', price: 100),
      Product(id: '13', name: 'product 13', price: 100),
    ]),
    Catagory(id: '2', name: 'catagory 2', products: [
      Product(id: '21', name: 'product 21', price: 200),
      Product(id: '22', name: 'product 22', price: 200),
      Product(id: '23', name: 'product 23', price: 200),
    ]),
    Catagory(id: '3', name: 'catagory 3', products: [
      Product(id: '31', name: 'product 31', price: 300),
      Product(id: '32', name: 'product 32', price: 300),
      Product(id: '33', name: 'product 33', price: 300),
    ]),
  ];

  List<Order> Orderlist = [
    Order(
        id: '1',
        name: 'order 1',
        productsOrdered: [Product(id: '11', name: 'product 11', price: 100)],
        IsDelivered: false)
  ];

  List<Product> cart = [];
  String id = Random().toString();

// --------- fake methods that return fake data here ---------------

  void addProducttocart(Product product) {
    cart.add(product);
    refreshPages();
  }

  void makeanorder(List<Product> cartlist) {
    Orderlist.add(Order(
        id: Random().toString(),
        name: Random().toString(),
        productsOrdered: cartlist,
        IsDelivered: false));
    refreshPages();
  }

// ---------------  do not change these below ----------------------
  void SetBuildContext(BuildContext contexting) {
    contextBAND = contexting;
  }

  Future<bool> testRefreshBandBloc() async {
    // todo : do something here

    // this function is resposible to update all the pages
    refreshPages();

    return true;
  }

  void refreshPages() => contextBAND.read<BANDBloc>().add(RefreshBandEvent());
}
