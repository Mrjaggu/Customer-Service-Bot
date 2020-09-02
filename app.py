from flask import Flask, jsonify, request
import flask
import pickle
import numpy as np
import sys
import logging
import warnings

warnings.filterwarnings("ignore")
# load model_


app = Flask(__name__)
app.logger.addHandler(logging.StreamHandler(sys.stdout))
app.logger.setLevel(logging.ERROR)


@app.route('/')
def index():
    return flask.render_template('index.html')


if __name__ == '__main__':
    app.run(host="0.0.0.0",port=5000, debug=True)
