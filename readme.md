# CUT-Safe Android Rapid Response System

### Background:

Due to the recent attacks agaist students at my university and the coincidence that my class is OOP (using Java), This is an app born out of an assignment that allows users to send their device's last known location along with a person's medical details to a server for all forms of help in case of emergency or distress.

## Features

- Minimalistic user interface with a single button for sending location data to the server
- Uses the Android Location Services API to get the device's last known location
- Sends location data to a server using HTTP POST requests
- Server-side code is implemented in Python or Java, depending on your preference

## Requirements

- Android SDK (version 23 or higher)
- Android Studio (version 4.1 or higher)
- Python (version 3.7 or higher) or Java (version 8 or higher) for the server-side code

## Installation and Setup

1. Clone the repository to your local machine using `git clone https://github.com/lordskyzw/cutsafe.git`
2. Open the project in Android Studio
3. Build the project and run it on an Android device or emulator
4. Modify the `sendLocationToServer()` method in the client code to implement the logic for getting the device's last known location and sending it to the server
5. Set up the server-side code on a server or localhost
6. Modify the server-side code to receive and process location data from the Android client

## Usage

1. Launch the Android app on your device
2. Press the "Send Location" button to send your device's last known location to the server
3. Check the server logs or database to verify that the location data was received correctly

## Contributing

Contributions to this project are welcome. To contribute, follow these steps:

1. Fork the repository
2. Create a new branch for your feature or bugfix
3. Make your changes and commit them
4. Push your changes to your forked repository
5. Submit a pull request to the main repository

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgements

This project was inspired by the rise of robberies (especially now that they occured to those close to me) which students are facing as they move on and around the campus. This calls for the need for a rapid response system in emergency situations. Thanks to my group members for the support.
