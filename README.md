# Firebase-UI-Auth / iOS

## iOS (Swift) - Step 1 - Setup Firebase

1. Register App
    1. Required: `iOS bundle ID`
    2. Optional: `App nickname` `App Store ID`

2. Download Config File
    1. Download `GoogleService-Info.plist` and add it to all targets (when you drag file into XCode, you are prompted to add to all targets)

3. Use `CocoaPods` to install and add dependencies
    1. Prerequisite: `$ sudo gem install cocoapods`
    2. Create a Podfile (if you don't already have one) `$ pod init`
    3. Open the **Podfile** and add: `$ pod 'Firebase/Core'` *This will include analytics by default
    4. Save the file and run `pod install`
    5. This will create an **.xcworkspace** file for your app which will be used for all future development (close your current app and reopen it with the `.xcworkspace` file
    6. Copy `import Firebase` and paste at the top of the file
    7. Copy `FirebaseApp.configure()` and paste into the function `application()`
    8. Run the app and verify in the Firebase setup wizard that they have connected (optional, I believe)

    * Note: The code examples from the Firebase setup wizard will throw errors if copy pasted exactly. Seems to be a bit out of date.

## iOS (Swift) - Step 2 - Setup Authentication

1. Add Firebase UI to your Podfile
    1. `pod 'FirebaseUI'` this will add all of the auth providers (I believe)
    or
    2. Import individual auth providers using this syntax `pod 'FirebaseUI/Auth` or `pod FirebaseUI/Google` for Auth, Google, Facebook, Twitter, Phone

## iOS (Swift) - Step 3a - Email and Password

1. In the [Firebase Console](http://console.firebase.google.com), open the **Authentication** section and enable (toggle on) email and password authentication

2. In the `AppDelgate` class, add `FUIAutheDelegate` next to `UIApplicationDelgate`

3. https://medium.com/@niamhpower/getting-started-with-firebase-on-ios-part-1-612af4bcabd6
