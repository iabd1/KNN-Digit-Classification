from sklearn.datasets import load_digits
import pandas as pd

digits = load_digits()
df = pd.DataFrame(digits.data)
df['label'] = digits.target
df.to_csv('digits.csv', index=False)

print("Saved digits.csv")