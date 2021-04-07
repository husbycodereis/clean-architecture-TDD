# Clean architecture and TDD principals implementaion with BLoC state management



## Clean Architecture

Clean Architecture divides a software project into three main layers.

Data ⇨ Local and / or Remote(API) data sources
Domain ⇨ business logic(use cases) and business objects(entities) to modify or shape the data source
Presentation ⇨ How modified data source is shown to user

These layers help build a Flutter application that is;

Easier to modify
Easier to test
Easier to detect bugs & errors

For further information please see the [official documentation](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html).

## Test Driven Development

The course has various methods to make unit tests for almost every use cases inside a Flutter application. However the BLoC state management tool testing methods are outdated and therefore it shouldn't be taken into account.

For further information about BLoC testing, the [official documentation](https://bloclibrary.dev/#/testing) should be studied.


## BLoC State Management

Taken from original documentation;

When building production quality applications, managing state becomes critical.

Bloc was designed with three core values in mind:

Simple: Easy to understand & can be used by developers with varying skill levels.
Powerful: Help make amazing, complex applications by composing them of smaller components.
Testable: Easily test every aspect of an application so that we can iterate with confidence.
Overall, Bloc attempts to make state changes predictable by regulating when a state change can occur and enforcing a single way to change state throughout an entire application.

## The Course

The course is prepared by ResoCoder which guides the developer through the Clean Architecture and TDD concepts by creating a sample app from scratch. 

As an end product, a number trivia application is being built that fetches information about any given input number.

The app consists of many business-level project scenarios that are mainly;

- Remote Data Source with HTTP
- Local Data Source with SharedPreferences
- State Management with BLoC
- Dependency Injection with get_it
- Entities, data models and json parsing
- Folder Structure based on Clean Architecture Principals
- Unit Testing

Link : https://resocoder.com/flutter-clean-architecture-tdd/
