from flask import Flask, request, jsonify

app = Flask(__name__)


@app.route('/status', methods=['GET'])
def status():
    return jsonify({"message": "Python OK"}), 200

# Run the app
if __name__ == '__main__':
    app.run(debug=True)
