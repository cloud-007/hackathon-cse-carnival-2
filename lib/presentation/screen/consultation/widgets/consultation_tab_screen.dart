import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reachout/presentation/routes.dart';
import 'package:reachout/presentation/screen/consultation/notifier/providers.dart';
import 'package:reachout/presentation/screen/service_detail/service_detail_screen.dart';
import 'package:reachout/presentation/theme/color.dart';
import 'package:reachout/presentation/widgets/generic_error_widget.dart';

class ConsultationTabScreen extends ConsumerWidget {
  final bool? shouldAutoFocus;

  const ConsultationTabScreen({
    super.key,
    this.shouldAutoFocus = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String searchData = '';
    final uiState = ref.watch(consultationNotifierProvider(''));
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // search field
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey.shade200,
            ),
            child: FormBuilderTextField(
              name: 'answer',
              maxLines: 1,
              scrollPadding: const EdgeInsets.all(0),
              keyboardType: TextInputType.multiline,
              autofocus: shouldAutoFocus ?? false,
              cursorColor: colorPrimary,
              cursorWidth: 0.8,
              decoration: const InputDecoration.collapsed(hintText: 'Search'),
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: colorTextLight),
              onChanged: (value) {
                searchData = value!;
              },
              onTapOutside: (value) {
                FocusScope.of(context).unfocus();
              },
              onSubmitted: (value) {
                ref
                    .read(consultationNotifierProvider(searchData).notifier)
                    .fetchConsultationData(key: searchData);
              },
              textInputAction: TextInputAction.search,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
            child: Text(
              'Services',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: colorTextLight),
            ),
          ),

          uiState.when(
            loading: () => const SizedBox(
              height: 400,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            success: (services) {
              return ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(vertical: 16),
                itemCount: services.length,
                itemBuilder: (context, index) {
                  final item = services[index];
                  return GestureDetector(
                    onTap: () async {
                      Navigator.of(context).pushNamed(
                        Routes.serviceDetail,
                        arguments: ServiceDetailScreenArgs(service: item),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade200,
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Image.network(
                                item.user.picture ?? '',
                                height: 64,
                                loadingBuilder: (context, child, progress) {
                                  if (progress == null) return child;
                                  return const CircleAvatar(
                                    radius: 24,
                                  );
                                },
                                errorBuilder: (context, error, stackTrace) {
                                  return const CircleAvatar(
                                    radius: 24,
                                  );
                                },
                              ),
                              const SizedBox(height: 4),
                              Text(
                                item.user.lastName,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(color: colorTextLight),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(color: colorTextLight),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  item.description,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(color: colorTextLight),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 4),
                                Container(
                                  height: 0.4,
                                  color: colorText,
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${item.totalSessions} sessions',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            color: colorTextLight,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      "${item.duration} min's",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            color: colorTextLight,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      item.price == 0
                                          ? 'Free'
                                          : '${item.price}\$',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            color: colorTextLight,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 16);
                },
              );
            },
            error: (message) {
              return Container(
                height: 400,
                alignment: Alignment.center,
                child: GenericErrorWidget(
                  title: message,
                  onRetry: () {
                    ref
                        .read(consultationNotifierProvider(null).notifier)
                        .fetchConsultationData(key: null);
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
