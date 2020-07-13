import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'blck/account.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var accountBloc = Provider.of<AccountBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider & Bloc example"),
      ),
      body: Stack(
        children: <Widget>[
              ListView.builder(
                itemCount: accountBloc.getList().length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                        leading:
                        Image.network(accountBloc.getList()[index].avatar),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child:
                              Text('${accountBloc.getList()[index].name}'),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.star),
                                Text('${accountBloc.getList()[index].star}'),
                              ],
                            )
                          ],
                        ),
                        subtitle: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                  '${accountBloc.getList()[index].description}'),
                            )
                          ],
                        )),
                  );
                },
              ),
        ],
      ),
    );
  }

  Widget _loader(BuildContext context,accountModel) {
    return accountModel.getLoading()
        ? Align(
      child: Container(
        width: 200.0,
        height: 150.0,
        child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(child: CircularProgressIndicator())),
      ),
      alignment: FractionalOffset.bottomCenter,
    )
        : SizedBox(
      width: 0.0,
      height: 0.0,
    );
  }
}
