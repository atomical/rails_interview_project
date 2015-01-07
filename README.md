ParkWhiz Interview Project (Rails)
===============

The last thing ParkWhiz wants to do is sell a parking spot that doesn't exist, so tracking inventory and scheduling parking stays is an important part of the app. 

The technical portion of the interview will anchor on a small scheduling site you will create beforehand.  This project will be the focal point of a Q&A session, and the foundation for a group project you will work on with part of the development team. 

Plan to spend 1-2 hours on this project. 

Requirements
============

Your app will provide 2 pages:

* The *Driver* page allows drivers to enter a range of time in which they’d like to park.  The page then indicates whether parking is available, and if so, shows the price and allows them to book the time period.
* The *Admin Listings* page shows a table of parking listings with the availability and price for each.

The repository provides sample markup for each in the `public` directory. Additionally it serves as a skeleton Rails app and includes some basic models, a starting database schema, and seed data. Please use this as a starting point to create your app.

After creating the inital models we thought of some specific changes we'd like to see:

1. Implement a location model to represent a parking facility.  `name` and `address` fields are all that are required.  Refactor the Listing model accordingly.
2. Implement a seller model to represent the company that owns or operates the parking location. A `name` attribute is all that is required. Refactor the Listing model accordingly.

In addition to these two changes, as well as anything needed to meet the basic requirements, feel free to make any other changes you feel are important (and be prepared to talk through your choices).

Keep in mind that accuracy is extremely important. Please ensure your app performs as expected, or (if you run out of time) that the areas in which it is not yet complete are clear.

Some additional guidelines:
===========================

* Parking is available for a price if the maximum number of simultaneous bookings within the requested time period is less than the availability for that price
* The lowest price available is shown to the driver.  Multiple prices allow the admin to set a limited number of low price spots that are sold first, followed by the higher priced inventory. 
* You do not need to provide authentication or authorization
* No checkout process (real or simulated) is required. The driver can simply book by clicking “Book now”

Make any assumptions you feel are reasonable, just be prepared to talk through them.  If you have any questions email dev@parkwhiz.com.

