if test "$FLASK_ENV" = "prod"; then
    echo "Starting prod server"
    waitress-serve --call 'base:create_app' --port=80
else
    echo "Starting dev server"
    flask run --host=0.0.0.0 --port=5000
fi