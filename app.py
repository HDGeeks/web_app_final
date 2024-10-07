from  flask import Flask,send_from_directory
app = Flask(__name__, static_folder='static')


@app.route("/home")
def my_file(filename="index.html"):
    return send_from_directory(app.static_folder,filename),200


if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000)
