# Islam Mob Lint

A package that provides lint rules and code style guidelines for Islam Mob projects.

## Features

- Comprehensive set of lint rules for Dart and Flutter
- Custom lint rules specific to Islam Mob projects
- Consistent code style across all projects
- Documentation requirements
- Error prevention rules

## Getting Started

To use this package, add it as a dependency in your `pubspec.yaml`:

```yaml
dev_dependencies:
  islam_mob_lint:
    path: ../islam_mob_lint
```

Then, include the analysis options in your `analysis_options.yaml`:

```yaml
include: package:islam_mob_lint/analysis_options.yaml
```

## Lint Rules

### Error Prevention

These rules help prevent common programming errors:

- `always_declare_return_types`: Methods must declare return types
- `avoid_catching_errors`: Don't catch Error objects
- `avoid_empty_else`: Avoid empty else statements
- `avoid_print`: Don't use print in production code
- `avoid_void_async`: Avoid returning void from async functions
- `await_only_futures`: Only await expressions that evaluate to a Future
- `cast_nullable_to_non_nullable`: Avoid casting nullable types to non-nullable types
- `empty_catches`: Don't use empty catch blocks
- `null_check_on_nullable_type_parameter`: Don't use null check on nullable type parameters
- `unawaited_futures`: Don't forget to handle returned futures

### Style

These rules enforce a consistent code style:

- `always_use_package_imports`: Use package imports instead of relative imports
- `camel_case_types`: Types should use UpperCamelCase
- `file_names`: Use lowercase_with_underscores for file names
- `prefer_final_in_for_each`: Use final for variables in for-each loops
- `prefer_final_locals`: Use final for local variables
- `prefer_const_constructors`: Use const for constructors when possible
- `prefer_is_empty`: Use isEmpty instead of length checks
- `prefer_is_not_empty`: Use isNotEmpty instead of length checks

### Documentation

These rules enforce documentation standards:

- `package_api_docs`: Document public APIs at the package level
- `public_member_api_docs`: Document all public members

### Flutter Specific

These rules are specific to Flutter development:

- `avoid_unnecessary_containers`: Don't use unnecessary Container widgets
- `sized_box_for_whitespace`: Use SizedBox for whitespace
- `use_build_context_synchronously`: Don't use BuildContext across async gaps
- `use_key_in_widget_constructors`: Use key in widget constructors

## Custom Lint Rules

In addition to standard lint rules, this package provides custom lint rules:

- `avoid_print_statements`: Use LoggerManagerBase instead of print
- `require_documentation`: Ensure public members have documentation
- `prefer_named_parameters`: Use named parameters for methods with 3+ parameters
- `avoid_hardcoded_strings`: Use localized strings instead of hardcoded text

## Customizing Rules

If you need to disable specific rules for your project, you can override them in your project's `analysis_options.yaml`:

```yaml
include: package:islam_mob_lint/analysis_options.yaml

linter:
  rules:
    # Disable rules that don't apply to your project
    public_member_api_docs: false
```

## Contributing

To contribute to this package, please follow these steps:

1. Add new lint rules to `lib/analysis_options.yaml`
2. Add custom lint rules to `lib/src/custom_lints.dart`
3. Update the README.md with documentation for new rules
4. Create a pull request with your changes
