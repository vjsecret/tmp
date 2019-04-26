#virtualenv -p /usr/bin/python3.5 VENV35
#deactivate


#https://blog.liang2.tw/posts/2015/09/flask-draw-member/#_2
#https://medium.com/%E4%B8%80%E5%80%8B%E4%BA%BA%E7%9A%84%E6%96%87%E8%97%9D%E5%BE%A9%E8%88%88/python-flask-rest-api%E7%AD%86%E8%A8%98-869c3d2fee3

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
