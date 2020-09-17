#!/usr/bin/python3
"""
0-subs
"""
import requests


def number_of_subscribers(subreddit):
    """
        Sends a query to Reddit API
        Returns the number of subscribers for given subreddit
    """
    url = "https://api.reddit.com/r/{}/about".format(subreddit)
    headers = {'User-Agent': 'ronnie'}
    req = requests.get(url, headers=headers)
    subscribers = req.json().get('data').get('subscribers')

    return(subscribers)
