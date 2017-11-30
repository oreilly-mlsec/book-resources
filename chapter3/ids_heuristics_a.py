import time

# duration over which to look for anomalies
anomaly_window_seconds = 3600 

# threshold for simple anomaly detection
query_threshold = 10

# global variable to store each user's recent history
recent_history = {}

def process_event(user, recent_history):
	'''call this function to update history when an event occurs'''
	cur_time = int(time.time())
	if user not in recent_history:
		recent_history[user] = []

	recent_history[user].append(cur_time)
	recent_history[user] = [x for x in recent_history[user] if cur_time - x < anomaly_window_seconds]
	return recent_history

def is_anomaly(user, recent_history):
	'''call this function whenever an event occurs for which you want
		to detect anomalies'''
	if user not in recent_history:
		return False
	if len(recent_history[user]) > query_threshold:
		return True
	else:
		return False

if __name__ == '__main__':
	'''testing code'''
	for i in range(12):
		process_event('a', recent_history)
	for i in range(6):
		process_event('b', recent_history)
	for i in range(3):
		process_event('c', recent_history)
		process_event('d', recent_history)
	from ids_heuristics_b import *

	print(hourly_threshold_update(recent_history))
	print(day_history)