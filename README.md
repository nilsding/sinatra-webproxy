# sinatra-webproxy

This is a very simple HTTP GET proxy, implemented as a HTTP service.

Do not ask why I made this.

## Caveats

`sinatra-webproxy` has no IP/website whitelist/blacklist functionality.  This means
anyone with a valid key could browse web servers on your local network.  If you are
concerned about this, then this software might not be for you.

## Installation

Add your access keys to `config.yml`, change the IP address in `./start.sh`, then:

    $ bundle install
    $ ./start.sh

## Usage

### `GET /__proxy__`

#### Parameters

| Parameter | Description                                      |
|-----------|--------------------------------------------------|
| key       | A valid access key which is in the `config.yml`. |
| url       | The URL to proxy.                                |

#### Response

If the `key` parameter is invalid for some reason, the response will be `AUTH ERROR`.

If an error occurred, the error message will be the response.

Otherwise, the response is the body of the site at `url`.

## License

Public domain/Beerware
