# futurama_wiki

The Futurama Heroes app is a mobile application that provides information about the beloved characters from the popular TV show, Futurama.
Users can browse through a collection of character profiles that include their names, images, and brief descriptions of their personalities and backgrounds.
In addition to the character profiles, the app also features a small quiz that challenges users' knowledge of the show.
The quiz includes single-choice questions about the characters, their relationships, and their adventures throughout the series.

## Getting Started

Code generation runs with next commands, to set up the project you must call them

`flutter packages upgrade`

`flutter packages pub run build_runner build --delete-conflicting-outputs`

`flutter pub run intl_utils:generate`

## Packaging approach

One common approach to structuring a Flutter project is to use a package structure that is based on layer responsibility outside and feature-based inside. This architecture is known as the "Clean Architecture" or "Layered Architecture."

In this approach, the project is divided into packages that are responsible for different layers of the application, such as data, domain, and presentation layers. Each package contains the necessary code to handle its specific responsibilities, and communication between the packages is done through well-defined interfaces.

Inside each package, the code is organized based on features. Each feature has its own folder that contains all the necessary files to implement that feature, including UI, business logic, and data access code.

`assembly` - factories and every creational pattern entities.
`data` - data gateways like http or database and services implementations based on them.
`domain` - domain entities, services, usecases.
`presentation` - everything around presentation logic, blocs, pages, widgets, controllers, ets.
`routing` - mostly router delegate but could be extended in case of non-linear routing or deep-linking.