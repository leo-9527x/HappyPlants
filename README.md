# HappyPlantsApp

## Description
HappyPlantsApp is a simple and intuitive SwiftUI application that helps users manage their plants and their watering schedules.

## Features

1. **Home Screen**: List of all user-added plants. Users can access the detail view of each plant by clicking on its row. The option to add a new plant is also available via a button in the navigation bar.

2. **Plant Detail Screen**: This view displays the plant's name, the next watering date, and options to "Mark as watered" or "Delete". Clicking "Mark as watered" updates the next watering date according to the frequency set for the plant. The "Delete" button removes the plant from the list.

3. **Add Plant Screen**: Users can add a new plant to their list on this screen. Fields include the plant's name, color, and watering frequency.

## User Interface

The UI is designed to be clean and intuitive. The navigation bar on the home screen includes a title and an add button. Each plant row showcases the plant's name, color, and next watering date. The Add Plant Screen and Plant Detail Screen follow the same design aesthetic, creating a uniform user experience.

## Technical Details

The app is developed using SwiftUI and employs Combine for handling asynchronous events and data flow. The MVVM architectural pattern is followed, with a PlantStore class acting as the central data store.

Each plant is an instance of the Plant structure, which includes properties for the plant's name, color, watering frequency, and next watering date. The PlantStore class includes functions for adding, removing, and updating the watering date of a plant.

## Functionality

HappyPlantsApp offers CRUD (Create, Read, Update, Delete) functionality for plant objects. Users can create a new plant, view the details of an existing plant, update the watering date, and delete a plant.

## Conclusion

HappyPlantsApp is a user-friendly application that makes plant care a breeze. With its clean interface and easy-to-use features, users can efficiently manage the watering schedule of their plants.
