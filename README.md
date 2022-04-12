# UCSD MLE Bootcamp: Capstone Project
## Santander Customer Transaction Prediction
### Problem Statement
As part of my capstone project, I am going to be solving for Santander financial institution's 
Kaggle challenge to predict which customer will make a transaction.

[Kaggle Competition](https://www.kaggle.com/competitions/santander-customer-transaction-prediction/overview)

The challenge as described on Kaggle

"At Santander our mission is to help people and businesses prosper. We are always 
looking for ways to help our customers understand their financial health and identify 
which products and services might help them achieve their monetary goals.

Our data science team is continually challenging our machine learning algorithms, working 
with the global data science community to make sure we can more accurately identify new 
ways to solve our most common challenge, binary classification problems such as: is a 
customer satisfied? Will a customer buy this product? Can a customer pay this loan?

In this challenge, we invite Kagglers to help us identify which customers will make 
a specific transaction in the future, irrespective of the amount of money transacted. The 
data provided for this competition has the same structure as the real data we have 
available to solve this problem.
`
Our data science team is continually challenging our machine learning algorithms, working 
with the global data science community to make sure we can more accurately identify new 
ways to solve our most common challenge, binary classification problems such as: is a 
customer satisfied? Will a customer buy this product? Can a customer pay this loan?
In this challenge, we invite Kagglers to help us identify which customers will make a 
specific transaction in the future, irrespective of the amount of money transacted. The 
data provided for this competition has the same structure as the real data we have 
available to solve this problem."

There are multiple methods that can be applied to solve this classification problem. As 
part of this capstone project, I will solve for this classification prediction in three
unique ways:

* Logistic Regression
* RandomForest - Ensemble
* Neural Networks

### Data Sets
* [Train](train.csv): [Training Dataset - Kaggle](https://www.kaggle.com/competitions/santander-customer-transaction-prediction/data)
* [Test](test.csv): [Test Dataset - Kaggle](https://www.kaggle.com/competitions/santander-customer-transaction-prediction/data)

### Models
* [Logistic Regression](https://console.paperspace.com/matety/notebook/rxiffwniix2lodp?file=Logistic_Regression_Model.ipynb)
* [XGBoost Decision Tree](https://console.paperspace.com/matety/notebook/rzvt4hm6g0x5u2n?file=Gradient_Boosted_DecisionTree_Model.ipynb)
* [Neural Networks](https://console.paperspace.com/matety/notebook/razbfrejnchvxg2?file=%2FKeras_with_TensorFlow_Model.ipynb)

### Deployment
XGBoost was the best performing model of all the models above. This will be the model that will be deployed as an API that can be invoked over HTTP. After discussions with my mentor, I will leverage the Databricks platform to deploy the model. Opensource MLFlow integrated with Databricks will be leveraged to operationalize the model and deployed on Databricks for inference.

In addition, the training data will be imported as a feature store table that will be used to train the model as part of MLFlow. The XGBoost model will also leverage PySpark to allow to be fully-integrated into the Databricks platform to run multiple experiments and promote the experiment with the best AUC metric outcome as the model to be promoted for inference.

### Inference Model
* [Test Data](https://github.com/matety/ucsd-mle-bootcamp-capstone/blob/main/data.json)
* [Inference Invocation](https://github.com/matety/ucsd-mle-bootcamp-capstone/blob/main/test.sh)
