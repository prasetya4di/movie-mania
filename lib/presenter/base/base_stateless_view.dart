import 'package:flutter/material.dart';
import 'package:movie_mania/presenter/base/base_view_model.dart';
import 'package:movie_mania/presenter/widgets/error_page.dart';
import 'package:provider/provider.dart';

abstract class BaseStatelessView<V extends BaseViewModel>
    extends StatelessWidget {
  const BaseStatelessView({super.key});

  Widget createView(BuildContext context);

  Widget loadingView(BuildContext context);

  bool get useRootNavigator => true;

  bool get checkIsLoading => false;

  int get timeoutSecond => 2;

  void pageErrorRetry();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        createView(context),
        _createErrorView(),
        _createLoading(),
      ],
    );
  }

  Widget _createErrorView() {
    return Consumer<V>(
      builder: (ctx, data, _) {
        final pageError = data.pageMessage.observer();
        if (pageError != null) {
          return ErrorPage(
            message: pageError,
            retry: () {
              pageErrorRetry();
            },
          );
        }

        return const SizedBox();
      },
    );
  }

  Widget _createLoading() {
    if (checkIsLoading) {
      return Consumer<V>(builder: (context, data, _) {
        final isLoading = data.loading.observer();
        if (isLoading == true) {
          return loadingView(context);
        }

        return const SizedBox();
      });
    }
    return const SizedBox();
  }
}
