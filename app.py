from flask import Flask
from datetime import datetime

app = Flask(__name__)

@app.route('/')
def index():
	date = datetime.now()
	return date.strftime('%b %d, %Y, %H:%M')

if __name__ == '__main__':
	app.run()

