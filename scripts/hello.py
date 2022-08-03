import fire


class CommandHandler:
    def run(self, message="Hello world"):
        return f"{message}"


if __name__ == "__main__":
    fire.Fire(CommandHandler)
