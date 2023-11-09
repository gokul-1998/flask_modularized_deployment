from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, Flask!'

def create_app():
    """Factory function for application"""
    
    return app


# if __name__ == '__main__':
#     app.run()
