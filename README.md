# quickstart-python
A simple Python app ( using Flask: a microframework for Python based on Werkzeug, Jinja 2. http://flask.pocoo.org/ ) which can easily be deployed to Arukas.

## Running locally

```
$ git clone https://github.com/peco8/quickstart-python.git
$ cd quickstart-python
$ docker build --no-cache --tag quickstart-python .
$ docker run -rm -d -p 80:80 quickstart-python
```

Your app should now be running:

```
$ curl 192.168.59.103:80
Hello World!
```

## Deploying to Arukas

[Install the Arukas CLI.](https://github.com/arukasio/cli)

or If you have docker installed already,
```
docker run --rm -e ARUKAS_JSON_API_TOKEN=<APIT_OKEN> -e ARUKAS_JSON_API_SECRET=<SECRET_KEY> arukasio/arukas run --instances=3 --mem=512 -ports=80:tcp peco8/quickstart-python
```
## Author

* Toshiki Inami (<t-inami@arukas.io>)

## License

This project is licensed under the terms of the MIT license.

**Continue with this tutorial [here](/).**
