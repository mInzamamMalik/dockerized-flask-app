import os
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello world abc'

PORT = int( os.environ.get("PORT") )

app.run(host='0.0.0.0', port=PORT)
print("app is running on port ", PORT)

