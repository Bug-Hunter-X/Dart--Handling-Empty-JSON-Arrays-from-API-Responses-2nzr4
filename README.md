# Dart: Handling Empty JSON Arrays from API Responses

This repository demonstrates a common error in Dart when handling API responses that might return empty JSON arrays.  Improperly checking for empty arrays before accessing elements can lead to runtime exceptions.

The `bug.dart` file shows the problematic code, where an attempt to access the first element of an array without verifying if the array is empty results in an error if the server returns an empty array.

The `bugSolution.dart` file provides the corrected code with improved error handling. It demonstrates how to safely handle cases where the API might return an empty or null JSON array. 

## How to Reproduce the Bug

1. Run the `bug.dart` file.
2. If the API returns an empty JSON array, a runtime error (`RangeError`) will occur.

## Solution

Refer to `bugSolution.dart` for a solution that gracefully handles empty arrays before accessing elements, preventing runtime errors and leading to more robust code.