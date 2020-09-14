#!/usr/bin/python3
"""a Python script to export all users data in JSON format."""

if __name__ == "__main__":
    import requests
    import json

    API_URL = "https://jsonplaceholder.typicode.com/"
    counter = len(requests.get(API_URL + "users").json())
    data = {}
    full_data = {}

    for i in range(0, counter):
        user = requests.get(API_URL + "users/" + str(i+1))
        list_tasks = requests.get(API_URL + "todos?userId=" + str(i+1))
        user_name = user.json().get("username")
        l_dict = []

        for task in list_tasks.json():
            l_dict.append(dict(task=task.get("title"),
                               completed=task.get("completed"),
                               username=user_name))

        data = {(i+1): l_dict}
        full_data.update(data)

    with open('todo_all_employees.json', 'w') as file:
        json.dump(full_data, file)
