import 'package:flutter/material.dart';
import 'package:loader_project/src/core/base_screen/base_view.dart';
import 'package:loader_project/src/features/home/presentation/controller/home_provider_.dart';

class OtherScreen extends StatelessWidget {
  const OtherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      vmBuilder: (context) => HomeViewModel(context: context),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Other Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Start Loading',
            ),
            const SizedBox(
              height: 5,
            ),
            MaterialButton(
              onPressed: () => viewModel.startLoading(isOtherScreen: true),
              color: Theme.of(context).primaryColor,
              child: Text(
                "Start Loading with provider",
                style:
                    TextStyle(color: Theme.of(context).scaffoldBackgroundColor),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            MaterialButton(
              onPressed: () =>
                  viewModel.startLoadingOverlay(isOtherScreen: true),
              color: Theme.of(context).primaryColor,
              child: Text(
                "Start Loading with overlay",
                style:
                    TextStyle(color: Theme.of(context).scaffoldBackgroundColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
