<img src="https://user-images.githubusercontent.com/67713820/169630983-75e4bd9c-3337-4bce-8506-fb957ca8cd9a.png" alt="logo" max-width="600"><br>

![rails-badge](https://img.shields.io/badge/Rails-7.0.3-blue) ![ruby-badge](https://img.shields.io/badge/Ruby-2.7.2-orange)
[![GitHub version](https://badge.fury.io/gh/wanderlust-create%2Fmy_online_store.svg)](https://badge.fury.io/gh/wanderlust-create%2Fmy_online_store)
[![PRsWelcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=shields)](http://makeapullrequest.com)

## My online shop serves as a platform for merchants to keep track of shop inventory and shipments to their customers. 
### The specifics: what can a merchant do on My Online Store app?
- Create a merchant account
- Create inventory items
- Edit inventory items
- Delete inventory items
- View a list of all inventory items
- Create a shipment
- Edit shipment details 
- Add inventory items to a shipment, using a selection to reduce errors
- Remove inventory items from a shipment

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
        <li><a href="#create-your-merchant-account">Create your merchant account</a>
          <ul>
            <li><a href="#add-an-inventory-item">Add an item to your inventory</a></li>
            <li><a href="#delete-an-inventory-item">Delete an item from your inventory</a></li>
            <li><a href="#view-a-list-of-all-of-my-items">View a list of all of my items</a></li>
           </ul> 
        <li><a href="#create-a-shipment">Create a shipment</a>
          <ul>
            <li><a href="#edit-shipment-details">Edit details of a shipment</a></li>
            <li><a href="#add-an-item-to-a-shipment">Add items to a shipment</a></li>
            <li><a href="#delete-an-item-from-a-shipment">Delete an item from a shipment</a></li>
            <li><a href="#view-a-list-of-all-my-shipments">View a list of all of my shipments</a></li>
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


#### Getting Started

###### Versions

- Ruby 2.7.2
- Rails 7.0.3

----------

###### Gems

Testing [rspec-rails](https://github.com/rspec/rspec-rails) | [simplecov](https://github.com/simplecov-ruby/simplecov) | [capybara](https://github.com/teamcapybara/capybara) | [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers) | [pry](https://github.com/pry/pry) | 

----------

###### Set Up
On your local system, open a terminal session to run the following commands:
1. Clone this repository:`git@github.com:wanderlust-create/my_online_store.git`
3. Navigate to the newly cloned directory:`cd my_online_store`
4. If bundler is not installed run:`gem install bundler`
5. To install the required Gems run:`bundle install` 
6. If errors occur, check for proper installation and versions of:`bundler`, `ruby`, and `rails`
7. Set up the database locally with:`rails db:{drop,create, migrate, seed}`
8. Open your text editor and check to see that `schema.rb` was created.
9. You may also run the RSpec test suite locally with the command`bundle exec rspec` to ensure everything is functioning as expected.

----------

#### How to use this app

###### Create your merchant account
###### Add an inventory item
###### Delete an inventory item
###### View a list of all of my items
###### Create a shipment
###### Edit shipment details
###### Add an item to a shipment
###### Delete an item from a shipment
###### View a list of all my shipments

----------

#### Schema Design


----------

#### Testing

###### RSpec testing
###### Simplecov testing

----------


[![forthebadge](http://forthebadge.com/images/badges/made-with-ruby.svg)](http://forthebadge.com)
[![forthebadge](http://forthebadge.com/images/badges/built-with-love.svg)](http://forthebadge.com)
