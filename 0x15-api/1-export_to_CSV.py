#!/usr/bin/python3
"""a Python script to export data in the CSV format."""

if __name__ == "__main__":
    import requests
    import csv
    from sys import argv

    API_URL = "https://jsonplaceholder.typicode.com/"
    user = requests.get(API_URL + "users/" + argv[1])
    list_tasks = requests.get(API_URL + "todos?userId=" + argv[1])
    user_name = user.json().get("username")


    with open('{}.csv'.format(argv[1]), mode='w') as csv_file:
        fieldnames = ['USER_ID', 'USERNAME', 'TASK_COMPLETED_STATUS', 'TASK_TITLE']
        writer = csv.DictWriter(csv_file, fieldnames=fieldnames)

        writer.writeheader()

        for task in list_tasks.json():
            to_do = task.get("title")
            state = str(task.get("completed"))
            writer.writerow({'USER_ID': argv[1],
                             'USERNAME': user_name,
                             'TASK_COMPLETED_STATUS': state,
                             'TASK_TITLE': to_do})
