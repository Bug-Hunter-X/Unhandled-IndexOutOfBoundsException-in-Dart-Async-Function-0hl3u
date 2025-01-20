# Unhandled IndexOutOfBoundsException in Dart Async Function

This repository demonstrates a common error in Dart asynchronous programming:  failing to handle potential `IndexOutOfBoundsException` when dealing with lists retrieved from an API call.

The `bug.dart` file contains the erroneous code, which throws an exception if the API returns an empty list.  The solution is shown in `bugSolution.dart`.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`.
3. Observe the exception if the API returns an empty list or an unexpected response.

## Solution

The `bugSolution.dart` file provides a corrected version, adding explicit checks to prevent `IndexOutOfBoundsException`.