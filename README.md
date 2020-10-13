# HomeDash

HomeDash is a React SPA with a Rails API backend intended to replace a current users desktop browser home page. This app was designed to centralize the data I would seek out across multiple sources on a daily basis as well as allowing me to track my current To-do list.

[Frontend Repo](https://github.com/JTSwisher/daily-dash-frontend) | [Backend Repo](https://github.com/JTSwisher/daily-dash-api)

## App Walkthrough

![App Navigation Demo](demo/landing.gif)

### Home Page Demo

![Home Page Demo](demo/home.gif)

### Media Page Demo

![Media Page Demo](demo/media.gif)

### News Page Demo

![News Page Demo](demo/news.gif)

## Built With

* [Rails](https://rubyonrails.org/)
* [React](https://reactjs.org/)
* [Redux](https://redux.js.org/)
* [PostgreSQL](https://www.postgresql.org/)

#### External APIs

* Weather Data - [AccuWeather](https://developer.accuweather.com/)
* News Data - [NewsAPI](https://newsapi.org/)
* Media Data - [TheMovieDB](https://www.themoviedb.org/documentation/api?language=en-US)

## Getting Started

These instructions will get a local copy of HomeDash up and running on your machine.

### Prerequisites

* [Ruby](https://www.ruby-lang.org/en/)
* [Rails](https://rubyonrails.org/)
* [Node.js](https://nodejs.org/en/)
* [NPM](https://www.npmjs.com/)
* [PostgreSQL](https://www.postgresql.org/)

### API Keys

You will need to acquire your own API keys from the APIs listed prior and create custom environment variables for those keys in your .env file in the root directory of the frontend repo.

#### Example .env File

```
REACT_APP_THE_MOVIE_DB_API_KEY = "API key"
REACT_APP_WEATHER_API_KEY = "API key"
REACT_APP_NEWS_API_KEY = "API key"

```

### Installation
Fork and clone the [Frontend Repo](https://github.com/JTSwisher/capstone_react_frontend) and the [Backend Repo](https://github.com/JTSwisher/capstone_backend_api) to your local machine.

#### Backend
Change directories into the backend local directory. Run bundle install to install dependencies. Ensure PostgreSQL is running on your machine, create and migrate the database.
```
$cd daily-dash-api
$bundle install
$rails db:create
$rails db:migrate
```
Run the following command to start your local server. The backend api will run on port:3001 locally, if 3001 is not used you will have to adjust the URLs used in the API calls on the frontend.
```
$rails s -p 3001
```
#### Frontend
Change directories into the frontend local directory and run the following command to launch the app.
```
$cd daily-dash
$ npm start
```

## Contributing

Bug reports and pull requests are welcome. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Authors

[Jeff Swisher](https://github.com/JTSwisher)