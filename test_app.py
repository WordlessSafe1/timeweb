import pytest
from datetime import datetime

from app import app

@pytest.fixture
def client():
	with app.test_client() as app_client:
		yield app_client
	return

def test_index(client):
	date = datetime.now()
	response = client.get('/')

	assert response.status_code == 200
	assert response.data.decode() == date.strftime('%b %d, %Y, %H:%M')



