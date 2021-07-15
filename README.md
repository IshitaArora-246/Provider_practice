# Provider Example App

A new Flutter project just to learn about provider.

## All about provider

<p>Provider basically extracts the data in main.dart file itself and uses it wherever required in the app. This effectively manages the state of the app as there is lesser loading, and more efficiency.</p>

- <b>Change Notifier</b> : It listens to a ChangeNotifier extended by the model classes and rebuilds depends whenever notifyListeners is called.
- <b>Consumer<T></b> : It obtains the provider from its ancestors and passes the value obtained to the builder. Mostly wrapped around particular widget than the whole page.
- <b>FutureProvider<T></b> : This class takes a Future in its create function.
- <b>StreamProvider<T></b> : This class takes a Stream in its create function.
- <b>Multiprovider</b> : A list of all provider used in project.  
