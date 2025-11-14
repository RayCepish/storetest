import 'package:flutter/material.dart';
import 'package:storetest/features/browser/cubit/browser_cubit.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BrowserScreen extends StatefulWidget {
  const BrowserScreen({super.key});

  @override
  State<BrowserScreen> createState() => _BrowserScreenState();
}

class _BrowserScreenState extends State<BrowserScreen> {
  late final WebViewController controller;
  bool hasError = false;

  @override
  void initState() {
    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (progress) {
            context.read<BrowserCubit>().updateProgress(progress / 100);
          },
          onWebResourceError: (error) {
            setState(() => hasError = true);
          },
        ),
      )
      ..loadRequest(Uri.parse("https://google.com"));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBody: true,
        body: Column(
          children: [
            BlocBuilder<BrowserCubit, double>(
              builder: (context, progress) {
                return progress < 1
                    ? LinearProgressIndicator(value: progress)
                    : const SizedBox.shrink();
              },
            ),

            if (hasError)
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("Failed to download"),
                      const SizedBox(height: 12),
                      FilledButton(
                        onPressed: () {
                          setState(() => hasError = false);
                          controller.reload();
                        },
                        child: const Text("Try again"),
                      ),
                    ],
                  ),
                ),
              )
            else
              Expanded(child: WebViewWidget(controller: controller)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => controller.goBack(),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  onPressed: () => controller.goForward(),
                ),
                IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () => controller.reload(),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
