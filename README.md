# iOS Accessibility PickerView

* Spotted a bug on iOS for sight accessibile users who need to use VoiceOver.
* The bug exists across all iOS apps that may use Pickers as the InputView for their Text Fields
* VoiceOver should be announcing "Checking" but it announces "G" instead.
Spotted the bug while using Xamarin.iOS, but then replicated the bug in a simple Swift project.

## About This Project

#### Created a Simple UI Containing controls
* Added a few controls to layout the framework for the bug
* With VoiceOver on, selecting the TextField, cycling through the PickerItems returns incorrect announcement for "Checking" saying "G" instead

**Testing**
--------
* Tested locally on an iOS Device with VoiceOver turned on and was able to replicate the bug
* Watch a video of the bug here https://youtu.be/yotebj3ibEE
