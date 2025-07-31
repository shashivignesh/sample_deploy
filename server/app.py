from flask import Flask, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)  # Allow cross-origin for React frontend

@app.route('/api/data')
def get_data():
    return jsonify({"message": "Hello from Flask backend on port 5007!"})

if __name__ == '__main__':
    app.run(port=5007)
