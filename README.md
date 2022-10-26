# Leo's Music Shop in Ruby (on Rails)

This is another very cool application for Leo's Music Shop, dedicated to DJ equipment. 

## Getting Started

You'll need to use Ruby 3 to run this application. Make sure you have the `gem` command installed.

To install all the packages for this solution, use the command:

```sh
bundle
```

This application requires a `SEGMENT_WRITE_KEY` environment variable set with your source Write Key. If running locally, this can be set through a `.env` in the root with the following content:

```ini
SEGMENT_WRITE_KEY='your-write-key'
```

## Running

```sh
bin/rails server
```

This will run the application at `http://localhost:3000`. 