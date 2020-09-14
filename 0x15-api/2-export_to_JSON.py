#!/usr/bin/python3
"""a Python script to export data in the JSON format."""

if __name__ == "__main__":
    import requests
    import json
    from sys import argv

    API_URL = "https://jsonplaceholder.typicode.com/"
    user = requests.get(API_URL + "users/" + argv[1])
    list_tasks = requests.get(API_URL + "todos?userId=" + argv[1])
    user_name = user.json().get("username")
    l_dict = []

    for task in list_tasks.json():
        l_dict.append(dict(task=task.get("title"),
                           completed=task.get("completed"),
                           username=user_name))

    data = {argv[1]: l_dict}

    with open('{}.json'.format(argv[1]), 'w') as file:
        json.dump(data, file)
