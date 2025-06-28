from flask import Flask, request, jsonify
from waitress import serve

# Start with 4 workers using: waitress-serve --listen=*:5000 --threads=4 app:app

app = Flask(__name__)


@app.route('/status', methods=['GET'])
def status():
    return jsonify({"message": "Python OK"}), 200

# Run the app
if __name__ == '__main__':
    serve(app, listen='*:5000', threads=4)
    
