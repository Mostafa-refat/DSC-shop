import 'package:dsc_shop/model/products.dart';
import 'package:dsc_shop/provider/app_provider.dart';
import 'package:dsc_shop/view/auth_screen.dart';
import 'package:dsc_shop/widgets/appdrawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  void initState() {
    super.initState();
  }

  late Future<List<Products>> users;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    users = Provider.of<GetDataProvider>(context, listen: false).getData();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: AppDrawer(),
          appBar: AppBar(
            title: Text('DSC SHOP'),
          ),
          body: FutureBuilder<List<Products>>(
            future: users,
            builder: (context, snapShot) {
              print(snapShot.hasData);
              if (snapShot.hasData) {
                return GridView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(12),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 265,
                    childAspectRatio: 0.85,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: snapShot.data!.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: double.infinity,
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 5,
                                child: Image.network(
                                  "${snapShot.data![index].image}",
                                  height: 100,
                                  width: double.infinity,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  '${snapShot.data![index].title}',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  '${snapShot.data![index].category}',
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${snapShot.data![index].price}',
                                      textAlign: TextAlign.start,
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.favorite))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
      ),
    );
  }
}
