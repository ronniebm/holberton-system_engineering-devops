#!/usr/bin/python3
"""a Python script to export data in the CSV format."""

if __name__ == "__main__":
    import csv
    import requests
    from sys import argv

    API_URL = "https://jsonplaceholder.typicode.com/"
    user = requests.get(API_URL + "users/" + argv[1])
    list_tasks = requests.get(API_URL + "todos?userId=" + argv[1])
    user_name = user.json().get("username")

    with open('{}.csv'.format(argv[1]), mode='w') as csv_file:
        writer = csv.writer(csv_file,
                            delimiter=',',
                            quotechar='"',
                            quoting=csv.QUOTE_ALL)

        for task in list_tasks.json():
            writer.writerow([argv[1],
                             user_name,
                             task.get('completed'),
                             task.get('title')])
