import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'blck/account.dart';

//Add providers here
List<SingleChildWidget> providers = [
   ChangeNotifierProvider<AccountBloc>(create: (_) => AccountBloc( page:1 )),
];