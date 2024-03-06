import 'package:admin_template_responsive/src/presentation/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

final providers = [
  ChangeNotifierProvider(
    create: (context) => HomeProvider(),
  ),
];
