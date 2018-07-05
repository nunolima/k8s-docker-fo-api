from flask import Flask, request

app = Flask(__name__)

@app.route('/', methods = ['GET'])
def index():
    print ("GET: index called!")
    return "Python API sample"

@app.route('/api', methods = ['GET','POST'])
def postJsonHandler():
    if request.method == 'GET':
        return 'Please use POST method with json'
    else:
        print ("request.data: " + str(request.data))
        content = request.get_json(force=True)
        print ("/api POST:" + str(content))
        
        if content['task'] == 'status':
            return 'Hello from Python API sample.'
        else:
            return 'Wrong command!'

'''    if request.is_json:
        content = request.get_json()
        print ("/api POST:" + str(content))
        return 'JSON posted'
    else:
        return 'Request must be a Json!'
'''
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8090, debug=True)

