<img src="https://user-images.githubusercontent.com/67713820/169630983-75e4bd9c-3337-4bce-8506-fb957ca8cd9a.png" alt="logo" max-width="600"><br>

![rails-badge](https://img.shields.io/badge/Rails-7.0.3-blue) ![ruby-badge](https://img.shields.io/badge/Ruby-2.7.2-orange)
[![GitHub version](https://badge.fury.io/gh/wanderlust-create%2Fmy_online_store.svg)](https://badge.fury.io/gh/wanderlust-create%2Fmy_online_store)
[![PRsWelcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=shields)](http://makeapullrequest.com)

## My online shop serves as a platform for merchants to add inventroy, add shipments to customers, and make adjustments to their inventory and shipments.

### This application was created to submit with my application to Shopify's Backend Engineering intern program. 
You can see it in action by visiting the [My Online Store Replit](https://MyOnlineStore.wanderlusting.repl.co) or on your local computer by following the instructions below. <br><br>

### The specifics: what can a merchant do on My Online Store app?
- Create a merchant account
- Create inventory items
- Edit inventory items
- Delete inventory items
- View a list of all inventory items
- Create a shipment
- Edit shipment details 
- Add inventory items to a shipment, using a selection to reduce errors
- Remove inventory items from a shipment<br><br>

### My Online Store application details 
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#versions">Versions</a></li>
        <li><a href="#gems">Important Gems</a></li>
        <li><a href="#set-up">Set Up</a></li>
      </ul> 
    </li>
        </ul>
    <li>
      <a href="#how-to-use-this-app">How to use this application</a>
       <ul>
        <li><a href="#create-your-merchant-account">Create your merchant account</a></li>
         <ul>
          <li><a href="#view-a-list-of-all-my-items">View a list of all my items</a></li>
          <li><a href="#add-an-inventory-item">Add an item to your inventory</a></li>
          <li><a href="#delete-an-inventory-item">Delete an item from your inventory</a></li>
       </ul>
         <li><a href="#create-a-shipment">Create a shipment</a>
           <ul>
          <li><a href="#view-a-list-of-all-my-shipments">View a list of all of my shipments</a></li>
            <li><a href="#edit-shipment-details">Edit details of a shipment</a></li>
            <li><a href="#add-an-item-to-a-shipment">Add items to a shipment</a></li>
            <li><a href="#delete-an-item-from-a-shipment">Delete an item from a shipment</a></li>  
         </ul> 
       </ul>
    </li>
        </ul>
        <li><a href="#schema-design">How the schema is designed</a></li>
        <li><a href="#testing">Testing</a></li>
          <ul>
            <li><a href="#rspec-testing">RSpec testing</a></li>
            <li><a href="#simplecov-testing">Simplecov testing</a></li>
          </ul>
      </details>


### Getting Started

##### Versions

- Ruby 2.7.2
- Rails 7.0.3

----------

##### Gems

Testing [rspec-rails](https://github.com/rspec/rspec-rails) | [simplecov](https://github.com/simplecov-ruby/simplecov) | [capybara](https://github.com/teamcapybara/capybara) | [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers) | [pry](https://github.com/pry/pry) | 

----------

##### Set Up
On your local system, open a terminal session to run the following commands:
1. Clone this repository:`git@github.com:wanderlust-create/my_online_store.git`
3. Navigate to the newly cloned directory:`cd my_online_store`
4. If bundler is not installed run:`gem install bundler`
5. To install the required Gems run:`bundle install` 
6. If errors occur, check for proper installation and versions of:`bundler`, `ruby`, and `rails`
7. Set up the database locally with:`rails db:{drop,create, migrate, seed}`
8. Open your text editor and check to see that `schema.rb` was created.
9. You may also run the RSpec test suite locally with the command `bundle exec rspec` to ensure everything is functioning as expected.

----------

### How to use this application

##### Create your merchant account:
- Navigate to the welcome page
- Click the link to `Create New Merchant Account`  link on the top
- Add your name in the space provided
- Click `Submit`

##### View a list of all my items:
- From the page that lists your shipments, click the link to `Items list`

##### Add an inventory item:
- From the page that lists your items, click the link to `Create new item`
- Complete the requested information for your new item. 
- Click `Submit`

##### Delete an inventory item:
- Tell yourself that this is not reversible, but reassure yourself that you can always re-add it. 
- From the page that lists your items, click the link to 'Delete' below the item'

##### Create a shipment:
- From the page that lists your items, click the link to `Create new shipment`
- From the page that lists your shipments, click the link to `Create new shipment`
- Complete the form with the required information
- Click `Submit`

##### View a list of all my shipments:
- From the page that lists your items, click the link to `Shipment list`

##### Edit shipment details:
- From the page that lists your shipments, click the link to `Review shipment details`
- From the page that lists your shipments, click the link to `Update shipment details`
- Update the form with the updated information
- Click `Submit`

##### Add an item to a shipment:
- From the page that lists your shipments, click the link to `Review shipment details`
- All of your items are listed towards the bottom of the page
- Select the radio button to the left of your item name
- Click `Add item to the shipment`

##### Delete an item from a shipment:
- From the page that lists your shipments, click the link to `Review shipment details`
- Find the item you want to remove from the list of items included in the shipment
- Click the `Remove` link below the item price
- This is not reversible, but you can easily re-add it by selecting the radio button at the bottom of the page


### Screenshots of CRUD functionality<br>
##### Welcome page
<img src="https://user-images.githubusercontent.com/67713820/169709554-3c4af1e9-17af-47a9-9973-96d8dd11e442.png" alt="welcome_page"><br>
##### Item Index page
<img src="https://user-images.githubusercontent.com/67713820/169709538-c260d4a6-34ca-4284-aa73-135efb64ef3d.png" alt="items_index" max-width="200"><br><br>

##### Shipments Show Page
<img src="https://user-images.githubusercontent.com/67713820/169709510-ceb65d6b-a4d7-4b27-819e-64ac98ba313b.png" alt="shipments_show" max-width="200"><br><br>

##### Update Shipment page
<img src="https://user-images.githubusercontent.com/67713820/169709606-2edb257f-a214-49b6-ba2e-35dd341af4c3.png" alt="update_shipment" max-width="200"><br><br>
----------

### Schema Design

<img src="https://user-images.githubusercontent.com/67713820/169710351-c95f6370-de06-428c-80ae-57b4b41f196b.png" alt="schema"><br>
----------

### Testing

My Online Store was created using Test Driven Development methodology. 

### RSpec testing

Run test suite using `bundle exec rspec`. All tests are currently passing passing.
<img src="https://user-images.githubusercontent.com/67713820/169710781-582807cb-6041-4128-96a1-003df1f059f8.png" alt="RSpec" max-width="200"><br><br>

### Simplecov testing

Simplecov shows 100% code testing coverage.
<img src="https://user-images.githubusercontent.com/67713820/169709458-224fc161-92d1-4506-9852-b90232e3bfda.png" alt="simplecov" max-width="200"><br><br>


# Contributor
💻 Tamara Dowis |  [Github](https://github.com/wanderlust-create)  |  [LinkedIn](https://www.linkedin.com/in/tamara-dowis/)

----------
## Practies & Process:
![OOP](https://user-images.githubusercontent.com/64919819/113648808-77684300-964a-11eb-8575-05aeaa946a6f.png)
![TDD](https://user-images.githubusercontent.com/64919819/113648827-7f27e780-964a-11eb-8f9e-dfdc2ed077c5.png)
![MVC](https://user-images.githubusercontent.com/64919819/113648848-8949e600-964a-11eb-833f-91872b6f3fe0.png)
![REST](https://user-images.githubusercontent.com/64919819/113648856-8ea73080-964a-11eb-8e85-6f580a54eaca.png)
[![forthebadge](http://forthebadge.com/images/badges/made-with-ruby.svg)](http://forthebadge.com)
[![forthebadge](http://forthebadge.com/images/badges/built-with-love.svg)](http://forthebadge.com)
