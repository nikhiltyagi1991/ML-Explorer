if test "$FLASK_ENV" = "prod"; then
    echo "Starting prod server"
    waitress-serve --port=80 --call 'base:create_app' 
else
    echo "Starting dev server"
    flask run --host=0.0.0.0 --port=5000
fi