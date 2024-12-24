from sklearn.datasets import load_iris
from sklearn.ensemble import RandomForestClassifier
import pickle

def train_and_save_model():
    data = load_iris()
    X, y = data.data, data.target
    model = RandomForestClassifier()
    model.fit(X, y)
    with open("model.pkl", "wb") as f:
        pickle.dump(model, f)

def load_model():
    with open("model.pkl", "rb") as f:
        return pickle.load(f)
