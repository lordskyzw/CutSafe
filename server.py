from flask import Flask, request
import sqlite3

conn = sqlite3.connect("cutsafe.db")
c = conn.cursor()

app = Flask(__name__)


@app.route("/location", methods=["POST"])
def receive_location():
    location_data = request.get_json()
    print("Received location data: ", location_data)

    # TODO: Process the location data as needed (e.g. store in a database)

    return "Location data received successfully"


if __name__ == "__main__":
    app.run(port=8080)


##Summary:
###we created a webhook which receives location data as a json file via an HTTP Post call to its endpoint.
