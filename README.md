# GreetingApp

Welcome to the **GreetingApp**, a Swift-based iOS application designed to generate personalized greetings, provide speech assistance, and customize the user interface with dynamic background colors.

---

## Table of Contents
- [Features](#features)
- [Technologies Used](#technologies-used)
- [File Structure](#file-structure)
- [Output](#output)
- [Setup Instructions](#setup-instructions)
- [How to Use](#how-to-use)
- [Customization Guide](#customization-guide)
- [Acknowledgments](#acknowledgments)
- [Contact](#contact)

---

## Features
- **Dynamic Greetings**: Create personalized messages based on user input.
- **Speech Assistance**: Convert text to speech for accessibility and convenience.
- **Customizable UI**: Change the background color dynamically for a unique user experience.
- **Intuitive Layout**: Clean and straightforward interface for seamless interaction.

---

## Technologies Used
- **Swift**: Core programming language for iOS development.
- **SwiftUI**: Framework for building the user interface.
- **AVFoundation**: Framework for text-to-speech functionality.

---

## File Structure
```
GreetingApp/
│
├── ContentView.swift            # Main user interface logic
├── activity1App.swift           # App entry point
├── Assets.xcassets              # Image and color assets, original not changed
├── Preview Content              # Preview assets for SwiftUI, original not changed
└── README.md                    # Project documentation (this file)
```

---

## Output
**GreetingApp** displays a customizable greeting and provides speech assistance in real-time. 

---

## Setup Instructions
1. **Clone the Repository**
   ```bash
   git clone <repository-url>
   cd GreetingApp
   ```

2. **Open the Project in Xcode**
   - Ensure you have Xcode 13.0 or later installed.
   - Open `GreetingApp.xcodeproj`.

3. **Run the Application**
   - Select a simulator or connected device.
   - Click the **Run** button in Xcode.

---

## How to Use
1. **Input Names**
   - Enter your first and last name in the respective fields.
2. **Generate a Greeting**
   - Tap the **Greeting** button to display a personalized message.
3. **Enable Speech Assistance**
   - Tap the **Speech Assistance** button to hear the greeting spoken aloud.
4. **Customize the Background**
   - Tap the **Change Background** button to apply a random background color.

---

## Customization Guide
1. **Modify the UI**
   - Edit `ContentView.swift` to adjust layouts, fonts, or styles.
2. **Add More Features**
   - Integrate additional frameworks or functionalities such as animations or data persistence.
3. **Change Speech Voice**
   - Update the `AVSpeechSynthesisVoice(language:)` parameter for different accents or languages.

---

## Acknowledgments
Special thanks to the SwiftUI and AVFoundation documentation for providing the resources to build this application.

---

## Contact
For queries or suggestions, feel free to reach out at **tjalan@asu.edu**.
