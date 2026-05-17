import requests
url = 'https://jsonplaceholder.typicode.com/users'
response = requests.get(url)
if response.status_code == 200:
    print(response)
    data = response.json()
    print('The data from the URL is :',data)
    # Need name and Email ID from the list
    for d in data:
        print(d.get('id'))
        print(d.get('name'))
        print(d.get('email'))
