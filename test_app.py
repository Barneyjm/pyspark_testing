import app
import pytest

def test_app():
	assert app.incr(4) == 5

def test_fail_app():
	assert app.incr(3) == 5