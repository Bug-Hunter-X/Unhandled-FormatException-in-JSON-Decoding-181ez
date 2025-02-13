# Unhandled FormatException in Dart Async Function

This repository demonstrates a common error in Dart asynchronous programming: inadequate handling of exceptions during JSON decoding.  The `fetchData` function attempts to fetch data from a remote API and parse the JSON response.  However, it fails to explicitly handle a `FormatException` that could occur if the JSON response is malformed or invalid.  This leads to a silent failure, making debugging more challenging.

The solution shows improved error handling by specifically catching `FormatException` and providing more informative error messages to the user. This makes it easier to identify and address the root cause of the problem.

## How to Reproduce

1.  Clone this repository.
2.  Run `bug.dart`.  Try to trigger a `FormatException` by providing an invalid JSON response from the API.  Observe the lack of specific error reporting.
3.  Run `bugSolution.dart`. Observe the improved error handling and specific error reporting.