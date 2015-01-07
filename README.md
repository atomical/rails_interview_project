first_challenge
===============

ParkWhiz Interview Project
The last thing ParkWhiz wants to do is sell a parking spot that doesn’t exist, so tracking inventory and scheduling parking stays is an important part of the app. 

The technical portion of the interview will anchor on a small scheduling site you will create beforehand.  This project will be the focal point of a Q&A session, and the foundation for a group project you will work on with part of the development team. 

Plan to spend 1-2 hours on this project. 

Requirements
============

Your app will provide 2 pages.  Included with this document you should have sample markup for each.

Driver page allows drivers to enter a range of time in which they’d like to park.  The page then indicates whether parking is available, and if so, shows the price and allows them to book the time period.

Admin Listings page shows a table of parking listings with the availability and price for each.

1. Implement model location, that would describe parking location of Listing (address and city are fine enough details)
2. Implement model seller, that can have locations (name is enough details for seller)
3. When searched for current date, pick "Choice Parking" in interval 3pm to 5pm, there should be 1 spot available
4. When searched for current date, in interval 3pm to 7pm, there should be no spots available
5. Implement driver search page that will show available listings 

Some additional guidelines:
===========================

* Parking is available for a price if the maximum number of simultaneous bookings within the requested time period is less than the availability for that price
* The lowest price available is shown to the driver.  Multiple prices allow the admin to set a limited number of low price spots that are sold first, followed by the higher priced inventory. 
* You do not need to provide authentication or authorization
* No checkout process (real or simulated) is required. The driver can simply book by clicking “Book now”

Make any assumptions you feel are reasonable, just be prepared to talk through them.  If you have any questions email dev@parkwhiz.com.

