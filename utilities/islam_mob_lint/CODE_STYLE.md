# Islam Mob Code Style Guidelines

This document outlines the code style guidelines for all Islam Mob projects. Following these guidelines ensures consistency across the codebase and makes it easier for developers to understand and maintain the code.

## General Guidelines

### File Organization

- One class per file, with the file name matching the class name in snake_case
- Group related files in directories
- Keep files under 300 lines when possible
- Use the following order for file contents:
  1. Imports (organized by `directives_ordering` lint rule)
  2. Constants
  3. Class declaration
  4. Static variables and methods
  5. Instance variables
  6. Constructors
  7. Public methods
  8. Private methods

### Naming Conventions

- **Classes, enums, extensions, typedefs**: Use `UpperCamelCase`
- **Variables, methods, parameters**: Use `lowerCamelCase`
- **Constants**: Use `lowerCamelCase` for constants that are not compile-time constants
- **Compile-time constants**: Use `kConstantName` for compile-time constants
- **Private members**: Prefix with underscore (`_privateMember`)
- **Files**: Use `lowercase_with_underscores.dart`
- **Packages**: Use `lowercase_with_underscores`
- **Directories**: Use `lowercase_with_underscores`

### Comments and Documentation

- Use `///` for documentation comments
- Document all public APIs
- Include examples in documentation when appropriate
- Use `//` for implementation comments
- Keep comments up-to-date with code changes
## Dart-Specific Guidelines

### Variables

- Use `final` for variables that don't change
- Use `const` for compile-time constants
- Specify types for public APIs
- Consider using type inference for local variables when the type is obvious

### Functions and Methods

- Keep functions short and focused on a single task
- Use named parameters for methods with 3 or more parameters
- Use required for required named parameters
- Return early from functions to reduce nesting

### Classes

- Prefer composition over inheritance
- Use factory constructors when appropriate
- Make fields `final` when possible
- Use getters and setters appropriately
- Implement `toString()` for classes that are logged or displayed

### Asynchronous Code

- Always await Futures in async methods
- Use `unawaited` from `package:pedantic` when deliberately not awaiting a Future
- Handle errors in async code
- Don't use async when not needed

## Flutter-Specific Guidelines

### Widgets

- Use `const` constructors when possible
- Extract reusable widgets into separate classes
- Keep build methods simple and readable
- Use named constructors for different configurations of the same widget
- Use keys when necessary for widget identity

### State Management

- Keep business logic out of widget classes
- Use appropriate state management solutions (BLoC, Provider, etc.)
- Minimize the use of StatefulWidget when possible
- Use StatefulWidget when managing local UI state

### Performance

- Use const constructors
- Avoid unnecessary rebuilds
- Use ListView.builder for long lists
- Use cached_network_image for network images
- Profile and optimize performance bottlenecks

## Testing Guidelines

- Write unit tests for business logic
- Write widget tests for UI components
- Use mocks and fakes appropriately
- Test edge cases and error conditions
- Keep tests independent and focused

## Resources

- [Effective Dart](https://dart.dev/guides/language/effective-dart)
- [Flutter Style Guide](https://github.com/flutter/flutter/wiki/Style-guide-for-Flutter-repo)
- [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style)