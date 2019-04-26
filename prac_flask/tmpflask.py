#virtualenv -p /usr/bin/python3.5 VENV35
#deactivate

# pip install -r requirements.txt
# requirements.txt
# Flask==0.10.1
# itsdangerous==0.24
# Jinja2==2.8
# MarkupSafe==0.23
# Werkzeug==0.10.4

from flask import Flask
app = Flask(__name__)


@app.route('/')
def index():
    return "<p>Hello World!</p>"


if __name__ == '__main__':
    print("fred flask")
    app.run(debug=True)
