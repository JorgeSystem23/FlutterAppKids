abstract class MyScreenState {}

class MyScreenInitialState extends MyScreenState {}

class NameSubmittedState extends MyScreenState {
  final String name;

  NameSubmittedState(this.name);
}
