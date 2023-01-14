
# Stateless & Stateful Widget Differrence

# Stateful Widget
State is information that can be read synchronously when the widget is built and might change during the lifetime of the widget. It is the responsibility of the widget implementer to ensure that the State is promptly notified when such state changes, using State.setState.
As you can see in this apps stateful widget page, the color of the buttun is changing when you click it.
You can see the changes because every time you click on the button,
program set the color of the button randomly by using setState() method.

# Stateless Widget
The widgets whose stateless can not be altered once they are built are called stateless widgets. These widgets are immutable once they are built i.e any amount of change in the variables, icons, buttons, or retrieving data can not change the state of the app.


## Screenshots

![App Screenshot](https://github.com/Enes50453/differrence_of_states/blob/master/scrreenshots/ss1.jpeg?raw=true)
![App Screenshot](https://github.com/Enes50453/differrence_of_states/blob/master/scrreenshots/ss2.jpeg?raw=true)
![App Screenshot](https://github.com/Enes50453/differrence_of_states/blob/master/scrreenshots/ss3.jpeg?raw=true)