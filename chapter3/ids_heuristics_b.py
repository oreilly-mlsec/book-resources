import time
import collections

# duration over which to look for anomalies
anomaly_window_seconds = 3600 

# threshold for simple anomaly detection
query_threshold = 10

# multiplier to determine how many times the average to set the threshold
avg_multiplier = 5

# global variable to keep the average number of user queries in each hour
day_history = collections.deque(24*[query_threshold / avg_multiplier], 24)

def hourly_threshold_update(recent_history):
	'''set the threshold for anomaly detection to be a multiple of the average queries per user in recent history'''
	cur_time = int(time.time())
	total_num_queries = 0
	if not recent_history:
		return query_threshold

	total_num_queries = sum([len(x) for x in recent_history.values()])
	avg_queries_this_hour = float(total_num_queries) / len(recent_history)
	day_history.appendleft(avg_queries_this_hour)

	avg_hourly_avg = float(sum(day_history)) / len(day_history)
	return int(avg_multiplier * avg_hourly_avg)
