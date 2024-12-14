```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON array
      final List<dynamic> data = jsonDecode(response.body);
      //  Error:  Incorrect data type handling for a list.   
      // The following will cause an error if the server returns an empty array ([]). 
       final firstItem = data[0]['name']; // potential error: accessing index 0 of an empty list
       print(firstItem); 
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```