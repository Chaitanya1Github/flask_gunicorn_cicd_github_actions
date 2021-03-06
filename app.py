from flask import Flask, jsonify

app = Flask(__name__)


@app.route("/")
def home():
    return "zala cicd"


@app.route("/health.json")
def health():
    return jsonify({"status": "UP"}), 200


if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0')
