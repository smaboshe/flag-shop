# Flag Shop

This is my breakable toy. There might be many others like it but this one is mine.

## Overview

This project is to help me with understanding test-driven development in Rails.

## "Purpose"

The flag shop is a fictional shop that sells flags.

To start, a flag has a:

- Country
- Country Code
- Price (in Kwacha)
- A link to an image of the flag

Other things to consider:

- Each country can only have one flag
- Each country can only have one country code
- Each image_url can only belong to one country

## Todo

- [ ] Validate the presence of `price`
- [ ] Validate the presence of `country`
- [ ] Validate the presence of `country_code`
- [ ] Validate the presence of `currency_code`
- [ ] Validate the presence of `image_url`
- [ ] Validate that `price` is a number
- [ ] Validate that the `country_code` is 3 characters long (ISO 3166-1 alpha-3 codes are three-letter country codes - https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3)
- [ ] Validate that `image_url` looks like a URL
- [ ] Validate that `country` is unique
- [ ] Validate that `image_url` is unique
- [ ] Validate that `image_url` is unique
- [ ] Add a homepage
- [ ] Add SimpleCSS to the project
- [ ] Test that if a flag exists, it is displayed on the homepage
- [ ] Integrate payments to the project
- [ ] Add an admin dashboard to the project
- [ ] Implement feature flags to the project
- [ ] Deploy to Heroku on push to main
- [ ] Update to Ruby 3.1.2
