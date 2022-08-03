from hello import CommandHandler


def test_hello():
    test = "unit test"
    assert CommandHandler().run(message=test) == test
