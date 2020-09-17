#!/usr/bin/python3
"""
1-top_ten
"""
import requests


def top_ten(subreddit):
    """
        Sends a query to Reddit API
        Returns the number of subscribers for given subreddit
    """
    url = "https://api.reddit.com/r/{}/hot?limit=1".format(subreddit)
    headers = {'User-Agent': 'ronnie'}
    arg1 = {"limit": 10}
    resp = requests.get(url, params=arg1, headers=headers).json()
    list = resp.get('data').get('children')

    if list:
        for item in list:
            print(item.get("data").get("title"))
    else:
        print("None")
