#!/usr/bin/python3
"""
1-top_ten
"""
import requests


def recurse(subreddit, hot_list=[], after=""):
    """Querying Reddit API, and returns all
    hot articles for a given subreddit."""

    url = "https://api.reddit.com/r/{}/hot".format(subreddit)
    headers = {'User-Agent': 'ronnie'}
    arg1 = {"limit": 100, "after": after}
    resp = requests.get(url, params=arg1, headers=headers).json()
    list_a = resp.get('data', {}).get('children', None)
    pagination = resp.get('data', {}).get('after', None)

    if list_a:
        for item in list_a:
            hot_list.append(item.get("data").get("title"))

    if pagination is not None:
        recurse(subreddit, hot_list, pagination)

    return hot_list
