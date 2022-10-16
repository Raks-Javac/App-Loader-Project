//MARK: PROVIDERS
import 'package:loader_project/src/features/home/presentation/controller/home_provider_.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> appProviders = [
  ChangeNotifierProvider(create: ((context) => HomeViewModel()))
];
