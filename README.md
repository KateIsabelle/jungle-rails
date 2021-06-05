
<div align="center">
  <h1>
    Jungle
  </h1>
  <img src="public/rubyOnRailsLogo.png" width=200 alt="Ruby on Rails Logo" />
  <p>A mini Rails e-commerce application</p>
  <p>Built with Rails 4.2, PostgreSQL, Bootstrap and CSS/Sass</p>
</div>

## 💡 About
A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

**Built with Rails 4.2, PostgreSQL, Bootstrap and CSS/Sass. Tested using RSpec, Capybara (Poltergeist, PhantomJS).**

## 📷 Screen Shots
!["Screenshot of products landing page"](https://github.com/KateIsabelle/jungle-rails/blob/master/docs/jungle-rails-landing-page.png?raw=true)
!["Screenshot of my cart"](https://github.com/KateIsabelle/jungle-rails/blob/master/docs/jungle-rails-cart.png?raw=true)

## 🛠 Installation 
1. Clone or download this repository
   ```
   git clone https://github.com/KateIsabelle/jungle-rails.git
   ```
2. Navigate to the project directory and install dependencies
   ```
   cd jungle-rails
   bundle install
   ```
3. Create `config/database.yml` by copying `config/database.example.yml`
   ```
   cp config/database.example.yml config/database.yml
   ```
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
   ```
   cp config/secrets.example.yml config/secrets.yml
   ```
5. Create, load, and seed the database
   ```
   bin/rake db:reset
   ```
6. Sign up for a Stripe account
  - https://stripe.com/en-ca
7. Create `.env` and update with your own Stripe (test) keys
   ```
   cp .env.example .env
   ```
8. Launch the development web server
   ```
   bin/rails s -b 0.0.0.0
   ```
9. Visit <a href="http://localhost:3000/">http://localhost:3000/</a> on your browser
