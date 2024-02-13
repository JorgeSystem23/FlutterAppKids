abstract class MyScreenEvent {}

class SubmitNameEvent extends MyScreenEvent {
  final String name;

  SubmitNameEvent(this.name);
}
