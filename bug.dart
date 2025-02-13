```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Here's where the bug is.  If the JSON is malformed,
      // this will throw a FormatException, but it might not be handled.
      final jsonData = jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // This catch block catches FormatException, but it's too general.
    //  Better to specify the type of error being handled.
    print('Error fetching data: $e');
  }
}
```