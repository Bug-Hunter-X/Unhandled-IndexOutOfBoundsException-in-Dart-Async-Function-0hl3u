```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      // Check if the list is empty before accessing elements.
      if (data.isNotEmpty) {
        final String value = data[0]['some_field'];
        print(value);
      } else {
        print('Data list is empty.');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow;
  }
}
```