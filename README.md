I created this project to show how I like to structure my Flutter projects

Flutter 3.19.1 • channel stable

-------------------

Firebase's files were added to the .gitignore file, so you will need to add your own Firebase project
I use FlutterFire to configure Firebase in the project, the configuration you find in this link: https://firebase.flutter.dev/docs/cli

Commands:
npm install -g firebase-tools
dart pub global activate flutterfire_cli
export PATH="$PATH":"$HOME/.pub-cache/bin"
flutterfire configure - then you select your Firebase project, and it will create the files for you

-------------------

# Terminal Commands
# flutter packages pub run build_runner build

-------------------

Packages used:

I choose to use Flutter Modular because it will force other developers to follow a good practice of separation of concerns 

And I choose to use MobX becase I consider it a fast and easy way to manage the state of the application, assuming that we will have one Store for each page, using mobx will be easy to manage the state of the page

-------------------

I don't like to have shared stores/controllers across two or more pages, then I have always one Store for each page. 
When a page needs something I pass it as an argument using Flutter Modular's arguments
And when a page needs information about another page I simply make the page returns the information that the other page needs.
I always pass an argument to the page even I dont need it, because it will make the code more predictable and easy to maintain ()

Example:
final result = await Modular.to.pushNamed<ExamplePageResult>('/example-page', arguments: ExamplePageArguments());

Many developers preffer to have a shared Store/Controller but my experiences with these aproaches were not good because of the unpredictability it will creates in the future

-------------------

To initialize the dependency injection before the "initializers" I usually create an "InitializerPage" that only shows a loading while the app is initializing, the advantage of doing this is that the app will not show a white screen while the app is initializing, we will have the resource to show and handle errors if something goes wrong

- Initializer is how I call classes that initializes something like Firebase, or a service that needs to be initialized before the first app's page is shown

-------------------

I always use wrappers for the widgets, even to use the default widgets, because it will make the code more predictable and easy to maintain, I we need to change a CircularProgressIndicator for another progress indicator we will only need to change in one place, for example.

-------------------

Some classes can be used across the aplication, outside modules, then I use the MainModule to put these shared classes and export them to other modules

-------------------

-------------------

-------------------

-------------------

-------------------