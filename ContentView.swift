//
//  ContentView.swift
//  GreetingApp
//
//  Created by Tanav Jalan on 1/19/25.
//

import SwiftUI
import AVFoundation // For text-to-speech functionality

struct ContentView: View {
    // State variables to hold user inputs and dynamic content
    @State private var firstName: String = "" // Holds the user's first name
    @State private var lastName: String = "" // Holds the user's last name
    @State private var greeting: String = "" // Holds the generated greeting message
    @State private var backgroundColor: Color = Color.gray.opacity(1) // Dynamic background color (default is gray)

    // Text-to-Speech synthesizer instance (persistent to avoid overlapping speech issues)
    let synthesizer = AVSpeechSynthesizer()
    
    var body: some View {
        // ZStack allows for layered views, with the background color as the bottommost layer
        ZStack {
            // Dynamic background color that fills the screen
            backgroundColor
                .ignoresSafeArea() // Ensures the background extends to the edges of the screen
            
            VStack(spacing: 20) {
                // App title or header
                Text("Welcome to CSE 335")
                    .font(.custom("Times New Roman", size: 40)) // Custom font for a classic look
                    .foregroundColor(.white) // White text color for contrast
                    .padding(.top, 40) // Adds space above the title
                
                Spacer() // Pushes the content below down for better layout
                
                // MARK: First Name Input
                HStack {
                    // Label for the first name input field
                    Text("First Name:")
                        .font(.custom("Times New Roman", size: 25)) // Consistent font for labels
                        .foregroundColor(.white) // White text color
                    Spacer() // Pushes the text field to the right
                    // TextField for user to input their first name
                    TextField("Enter your first name", text: $firstName)
                        .textFieldStyle(RoundedBorderTextFieldStyle()) // Rounded border for better aesthetics
                        .autocorrectionDisabled() // Disables autocorrect for names
                        .frame(width: 200) // Sets a fixed width for the input field
                }.padding(.horizontal) // Adds padding around the entire HStack
                
                // MARK: Last Name Input
                HStack {
                    // Label for the last name input field
                    Text("Last Name:")
                        .font(.custom("Times New Roman", size: 25))
                        .foregroundColor(.white)
                    Spacer() // Pushes the text field to the right
                    // TextField for user to input their last name
                    TextField("Enter your last name", text: $lastName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocorrectionDisabled()
                        .frame(width: 200)
                }.padding(.horizontal)
                
                Spacer() // Adds flexible space between sections
                
                // MARK: Greeting Button
                Button(action: {
                    // Generates a personalized greeting message using the user's input
                    greeting = "\(firstName) \(lastName) Welcome to CSE 335"
                }) {
                    Text("Greeting") // Button label
                        .font(.custom("Times New Roman", size: 30)) // Large, readable font
                        .frame(maxWidth: .infinity) // Button stretches horizontally
                        .padding() // Adds internal padding
                        .background(Color.black) // Black background for the button
                        .foregroundColor(.white) // White text for contrast
                        .cornerRadius(50) // Rounded corners for a polished look
                }.padding(.horizontal) // Adds horizontal padding to the button
                
                // MARK: Speak Greeting Button
                Button(action: {
                    // Dynamically construct the greeting message
                    let speech = "\(firstName) \(lastName) Welcome to CSE 335"
                    
                    let utterance = AVSpeechUtterance(string: speech) // Creates a speech utterance
                    utterance.voice = AVSpeechSynthesisVoice(language: "en-US") // Sets the language/voice
                    synthesizer.speak(utterance) // Speaks the message
                }) {
                    Text("Speech Assistance") // Button label
                        .font(.custom("Times New Roman", size: 30))
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black) // Purple background for the button
                        .foregroundColor(.white)
                        .cornerRadius(50)
                }.padding(.horizontal)

                // MARK: Change Background Button
                Button(action: {
                    // Changes the background color to a random color
                    backgroundColor = Color(
                        red: Double.random(in: 0...1), // Random red component
                        green: Double.random(in: 0...1), // Random green component
                        blue: Double.random(in: 0...1) // Random blue component
                    )
                }) {
                    Text("Change Background") // Button label
                        .font(.custom("Times New Roman", size: 30))
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black) // Orange background for the button
                        .foregroundColor(.white)
                        .cornerRadius(50)
                }.padding(.horizontal)
                
                Spacer() // Adds flexible space
                
                // MARK: Display Greeting Text
                if !greeting.isEmpty {
                    // Displays the generated greeting message
                    Text(greeting)
                        .font(.custom("Times New Roman", size: 40)) // Large font for visibility
                        .foregroundColor(.white) // White text for contrast
                }
                
                Spacer() // Adds space at the bottom
            }
            .padding() // Adds padding around the entire VStack
        }
    }
}

#Preview {
    ContentView()
}
