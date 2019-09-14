# provider_demo

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

### Provider 
A mixture between dependency injection (DI) and state management, built with widgets for widgets.

It purposefully uses widgets for DI/state management instead of dart-only classes like Stream. The reason is, widgets are very simple yet robust and scalable.

By using widgets for state management, provider can guarantee:

maintainability, through a forced uni-directional data-flow
testability/composability, since it is always possible to mock/override a value
robustness, as it is harder to forget to handle the update scenario of a model/widget
https://pub.dev/packages/provider#-readme-tab-
