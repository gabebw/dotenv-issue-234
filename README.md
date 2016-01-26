# Dotenv issue testing

```sh
# .env
IN_BOTH_DOTENVS=DOTENV
```

```sh
.env.development
IN_BOTH_DOTENVS=DOTENV_DEVELOPMENT
ONLY_IN_DOTENV_DEVELOPMENT=DOTENV_DEVELOPMENT
```

Try running this app with `heroku local`, then running:

    curl localhost:3000

You'll see that `IN_BOTH_DOTENVS` is set to `DOTENV` instead of
`DOTENV_DEVELOPMENT`.

Now try running with `rails server`. You'll see that both variables are
(correctly) set to `DOTENV_DEVELOPMENT`.
