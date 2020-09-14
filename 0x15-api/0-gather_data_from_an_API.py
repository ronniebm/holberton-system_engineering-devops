#!/usr/bin/python3
"""a Python script that, using this REST API, for a given
employee ID, returns information about his/her TODO list
progress."""

if __name__ == "__main__":
    import requests
    from sys import argv

API_URL = "https://jsonplaceholder.typicode.com/"
people = requests.get(API_URL + "users/" + argv[1])
list_tasks = requests.get(API_URL + "todos?userId=" + argv[1])
name = people.json().get("name")
tasks = len(list_tasks.json())
done = 0


for task in list_tasks.json():
    if task.get("completed"):
        done += 1

print("Employee {} is done with tasks({}/{}):".format(name, done, tasks))

for task in list_tasks.json():
    if task.get("completed"):
        print("\t", end="")
        print(task.get("title"))
