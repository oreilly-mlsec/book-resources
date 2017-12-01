from sklearn import svm, metrics
from sklearn.model_selection import train_test_split
from sklearn.datasets import load_digits
import numpy as np
from time import time

from pyspark import SparkContext, SparkConf
from spark_sklearn import GridSearchCV

conf = SparkConf().setAppName('spark-sklearn-gridsearch').setMaster('local')
sc = SparkContext(conf=conf)

digits = load_digits()
n_samples = len(digits.images)
data = digits.images.reshape((n_samples, -1))
X_train, X_test, y_train, y_test = train_test_split(data, digits.target, test_size=0.3, random_state=0)

svc = svm.SVC()

hyperparam_grid = {
    'kernel': ['linear', 'poly', 'rbf', 'sigmoid'],
    'gamma': np.linspace(0.001, 0.01, num=10),
    'C': np.linspace(1, 10, num=10),
    'tol': np.linspace(0.01, 0.1, 10)
}

classifier = GridSearchCV(sc, svc, hyperparam_grid)

start = time()
classifier.fit(X_train, y_train)
elapsed = time() - start

print('elapsed: {} seconds'.format(elapsed))

print('Best Kernel:\t{}'.format(classifier.best_estimator_.kernel))
print('Best Gamma:\t{}'.format(classifier.best_estimator_.gamma))
print('Best C:\t\t{}'.format(classifier.best_estimator_.C))

y_pred = classifier.predict(X_test)
print('Accuracy:\t{:.1%}'.format(metrics.accuracy_score(y_test, y_pred)))
