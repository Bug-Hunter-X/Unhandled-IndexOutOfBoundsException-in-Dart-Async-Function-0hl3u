```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON list
      final List<dynamic> data = jsonDecode(response.body);
      // Accessing a non-existent index can cause an error if the list is empty
      final String value = data[0]['some_field']; 
      print(value);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    //Re-throwing the exception to be handled by a higher level function
    rethrow;
  }
}
```