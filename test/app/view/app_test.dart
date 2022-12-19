import 'package:flutter_test/flutter_test.dart';
import 'package:study_bloc/app/app.dart';
import 'package:study_bloc/app/view/main_page.dart';

void main() {
  group('App', () {
    testWidgets('renders MainPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(MainPage), findsOneWidget);
    });
  });
}
