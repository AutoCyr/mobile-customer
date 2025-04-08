import 'package:autocyr/domain/models/features/demande.dart';
import 'package:autocyr/presentation/notifier/customer_notifier.dart';
import 'package:autocyr/presentation/ui/atoms/buttons/progress_button.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label10.dart';
import 'package:autocyr/presentation/ui/atoms/labels/label14.dart';
import 'package:autocyr/presentation/ui/core/theme.dart';
import 'package:autocyr/presentation/ui/helpers/state.dart';
import 'package:autocyr/presentation/ui/organisms/loaders/loader.dart';
import 'package:autocyr/presentation/ui/screens/helpers/request_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:refresh_loadmore/refresh_loadmore.dart';

class RequestListScreen extends StatefulWidget {
  final int state;
  const RequestListScreen({super.key, required this.state});

  @override
  State<RequestListScreen> createState() => _RequestListScreenState();
}

class _RequestListScreenState extends State<RequestListScreen> {

  int view = 0;
  bool _search = false;

  List<Demande> requests = [];
  List<Demande> filteredRequests = [];

  Map<String, dynamic> getParams(int view) {
    Map<String, dynamic> params = {
      "page": view,
      "limit": 50,
      "statut": widget.state
    };
    return params;
  }

  retrieveRequests(int view, bool more) async {
    final customer = Provider.of<CustomerNotifier>(context, listen: false);

    Map<String, dynamic> params = getParams(view);
    await customer.retrieveRequests(context: context, params: params, more: more);
    filteredRequests = requests = customer.requests;
  }

  void filterList(String searchQuery) {
    List<Demande> filtered = [];
    for (var value in requests) {
      if(value.reference.toLowerCase().contains(searchQuery.toLowerCase()) || value.article.name.toLowerCase().contains(searchQuery.toLowerCase()) || value.typeEngin.libelle.toLowerCase().contains(searchQuery.toLowerCase())) {
        filtered.add(value);
      }
    }
    setState(() {
      filteredRequests = filtered;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      view++;
      retrieveRequests(view, false);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Consumer<CustomerNotifier>(
          builder: (context, customer, child) {

            if(customer.loading) {
              return Loader(context: context, size: size, message: "Chargement des demandes...").animate().fadeIn();
            }

            if(customer.errorRequests.isNotEmpty && !customer.loading) {
              return StateScreen(icon: Icons.running_with_errors_sharp, message: customer.errorRequests, isError: true, function: () => retrieveRequests(view, false));
            }

            if(customer.errorRequests.isEmpty && filteredRequests.isEmpty && !customer.loading) {
              return const StateScreen(icon: Icons.inbox_sharp, message: "Aucune demande trouvée.", isError: false,);
            }

            return RefreshLoadmore(
                onRefresh: () async {
                  setState(() {
                    view = 1;
                  });
                  retrieveRequests(view, false);
                },
                onLoadmore: () async {
                  setState(() {
                    view++;
                  });
                  retrieveRequests(view, true);
                },
                noMoreWidget: Center(
                  child: Label10(text: "Plus de demandes trouvées", color: GlobalThemeData.lightColorScheme.outline, weight: FontWeight.bold, maxLines: 2),
                ).animate().fadeIn(),
                loadingWidget: ProgressButton(
                    widthSize: size.width * 0.2,
                    context: context,
                    bgColor: GlobalThemeData.lightColorScheme.onTertiary,
                    shimmerColor: GlobalThemeData.lightColorScheme.primary
                ).animate().fadeIn(),
                isLastPage: customer.requestMeta.currentPage < customer.requestMeta.lastPage ? false : true,
                child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      Demande request = filteredRequests[index];
                      return RequestWidget(demande: request).animate().fadeIn();
                    },
                    itemCount: filteredRequests.length
                )
            );
          }
      ),
    );
  }
}
