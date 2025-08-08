# Machine Learning Concepts - 06_machine_learning

## 1. Linear Regression

### Simple Linear Regression
- **Definition**: A method for modeling the relationship between a dependent variable and one independent variable using a linear equation
- **Formula**: `y = θ₀ + θ₁x₁`
- **Key Components**:
  - **Coefficients (θ₁)**: The slope of the line, representing the change in y for a unit change in x
  - **Intercept (θ₀)**: The y-value when x equals zero
  - **Residual Sum of Squares**: Measure of the difference between actual and predicted values
- **Use Cases**: Predicting continuous values like house prices, CO2 emissions from engine size
- **Evaluation Metrics**:
  - **Mean Absolute Error (MAE)**: Average of absolute differences between actual and predicted values
  - **Mean Squared Error (MSE)**: Average of squared differences between actual and predicted values
  - **Root Mean Squared Error (RMSE)**: Square root of MSE
  - **R-squared (R²)**: Proportion of variance in dependent variable explained by independent variable

### Multiple Linear Regression
- **Definition**: Extension of simple linear regression with multiple independent variables
- **Formula**: `y = θ₀ + θ₁x₁ + θ₂x₂ + ... + θₙxₙ`
- **Key Concepts**:
  - **Feature Matrix**: Matrix containing all independent variables
  - **Ordinary Least Squares (OLS)**: Method for estimating parameters by minimizing sum of squared errors
  - **Hyperplane**: The decision boundary in multi-dimensional space
- **Parameter Estimation Methods**:
  - Analytical solutions using closed-form equations
  - Optimization algorithms (Gradient Descent, Stochastic Gradient Descent, Newton's Method)
- **Applications**: Predicting CO2 emissions using engine size, cylinders, and fuel consumption

## 2. Classification Algorithms

### K-Nearest Neighbors (KNN)
- **Definition**: Supervised learning algorithm that classifies data points based on the class of their k nearest neighbors
- **Key Concepts**:
  - **K value**: Number of nearest neighbors to consider
  - **Distance Metrics**: Usually Euclidean distance in feature space
  - **Majority Vote**: Classification decision based on most common class among k neighbors
- **Algorithm Steps**:
  1. Calculate distance between test point and all training points
  2. Select k nearest neighbors
  3. Assign class based on majority vote of k neighbors
- **Data Preprocessing Requirements**:
  - **Feature Standardization**: Important since KNN is distance-based
  - **Handling Categorical Variables**: Convert to numerical format
- **Hyperparameter Tuning**: Finding optimal k value through cross-validation
- **Applications**: Customer segmentation, pattern recognition

### Decision Trees
- **Definition**: Tree-like model that makes decisions by splitting data based on feature values
- **Key Components**:
  - **Root Node**: Starting point of the tree
  - **Internal Nodes**: Decision points based on feature values
  - **Leaf Nodes**: Final classification outcomes
  - **Branches**: Connections representing decision paths
- **Splitting Criteria**:
  - **Entropy**: Measure of impurity in data
  - **Information Gain**: Reduction in entropy after splitting
  - **Gini Impurity**: Alternative measure of node impurity
- **Important Parameters**:
  - **max_depth**: Maximum depth of the tree
  - **min_samples_split**: Minimum samples required to split a node
  - **min_samples_leaf**: Minimum samples required in a leaf node
  - **criterion**: Function to measure split quality (entropy, gini)
- **Advantages**: Easy to interpret, handles both numerical and categorical data
- **Disadvantages**: Prone to overfitting, sensitive to small data changes

### Regression Trees
- **Definition**: Decision trees adapted for predicting continuous values instead of categories
- **Key Differences from Classification Trees**:
  - **Splitting Criteria**: Uses MSE, MAE, or Friedman MSE instead of entropy/gini
  - **Leaf Values**: Contains continuous values (means) rather than class labels
  - **Prediction**: Returns numerical value rather than class prediction
- **Evaluation Metrics**: R², MAE, MSE
- **Applications**: Real estate price prediction, continuous value forecasting

### Logistic Regression
- **Definition**: Classification algorithm that uses the logistic function to model probability of class membership
- **Mathematical Foundation**:
  - **Sigmoid Function**: `σ(θᵀx) = e^(θᵀx) / (1 + e^(θᵀx))`
  - **Linear Combination**: θᵀx represents the linear combination of features
  - **Probability Output**: Values between 0 and 1 representing class probabilities
- **Key Concepts**:
  - **Odds Ratio**: Ratio of probability of success to probability of failure
  - **Log-Odds (Logit)**: Natural logarithm of odds ratio
  - **Maximum Likelihood Estimation**: Method for finding optimal parameters
- **Regularization**:
  - **C Parameter**: Inverse of regularization strength
  - **L1 Regularization (Lasso)**: Promotes sparsity in feature selection
  - **L2 Regularization (Ridge)**: Prevents overfitting by penalizing large coefficients
- **Solvers**: Different optimization algorithms (liblinear, lbfgs, newton-cg, sag, saga)
- **Applications**: Customer churn prediction, medical diagnosis, binary classification

### Support Vector Machines (SVM)
- **Definition**: Algorithm that finds optimal hyperplane to separate classes with maximum margin
- **Key Concepts**:
  - **Support Vectors**: Data points closest to the decision boundary
  - **Margin**: Distance between decision boundary and nearest data points
  - **Hyperplane**: Decision boundary that separates classes
  - **Maximum Margin**: SVM finds hyperplane with largest possible margin
- **Kernel Functions**:
  - **Linear Kernel**: For linearly separable data
  - **Polynomial Kernel**: For polynomial decision boundaries
  - **Radial Basis Function (RBF)**: For non-linear, complex boundaries
  - **Sigmoid Kernel**: Similar to neural network activation
- **Kernel Trick**: Maps data to higher-dimensional space where it becomes linearly separable
- **Applications**: Text classification, image recognition, bioinformatics

### Multi-class Classification
- **Definition**: Extending binary classifiers to handle multiple classes
- **Strategies**:
  
#### Softmax Regression (Multinomial Logistic Regression)
- **Definition**: Direct extension of logistic regression to multiple classes
- **Softmax Function**: `softmax(x,i) = e^(θᵢᵀx) / Σⱼ e^(θⱼᵀx)`
- **Properties**: 
  - Outputs sum to 1 across all classes
  - Provides probability distribution over classes
- **Prediction**: `ŷ = argmax{softmax(x,i)}`

#### One-vs-All (One-vs-Rest)
- **Definition**: Train K binary classifiers, one for each class vs. all others
- **Process**:
  1. For each class, create binary problem (class vs. dummy class)
  2. Train separate classifier for each binary problem
  3. Predict using classifier with highest probability
- **Advantages**: Simple to implement, works with any binary classifier
- **Disadvantages**: Class imbalance issues, doesn't guarantee probabilities sum to 1

#### One-vs-One
- **Definition**: Train classifiers for every pair of classes
- **Process**:
  1. For K classes, train K(K-1)/2 classifiers
  2. Each classifier trained on data from two specific classes
  3. Final prediction based on majority vote
- **Advantages**: More balanced datasets, often more accurate
- **Disadvantages**: Computationally expensive for many classes

## 3. Clustering Algorithms

### K-Means Clustering
- **Definition**: Unsupervised algorithm that partitions data into k clusters based on feature similarity
- **Algorithm Steps**:
  1. **Initialization**: Choose k initial cluster centers (centroids)
  2. **Assignment**: Assign each point to nearest centroid
  3. **Update**: Recalculate centroids as mean of assigned points
  4. **Iteration**: Repeat assignment and update until convergence
- **Key Parameters**:
  - **n_clusters (k)**: Number of clusters to form
  - **init**: Initialization method (k-means++, random)
  - **n_init**: Number of random initializations
  - **max_iter**: Maximum number of iterations
- **K-means++ Initialization**: Smart initialization that speeds up convergence
- **Convergence Criteria**: When centroids stop moving significantly
- **Applications**:
  - Customer segmentation
  - Market research
  - Image segmentation
  - Data compression
  - Pattern recognition

### Customer Segmentation with K-Means
- **Business Context**: Dividing customer base into groups with similar characteristics
- **Feature Selection**: Age, income, education, spending patterns
- **Data Preprocessing**:
  - **Standardization**: Essential for distance-based algorithms
  - **Handling Categorical Variables**: Remove or encode appropriately
- **Cluster Interpretation**: Analyzing cluster characteristics to understand customer groups
- **Business Applications**: Targeted marketing, resource allocation, product development

## 4. Model Evaluation and Validation

### Classification Metrics
- **Accuracy Score**: Proportion of correct predictions
- **Confusion Matrix**: Table showing actual vs predicted classifications
  - **True Positives (TP)**: Correctly predicted positive cases
  - **True Negatives (TN)**: Correctly predicted negative cases
  - **False Positives (FP)**: Incorrectly predicted positive cases
  - **False Negatives (FN)**: Incorrectly predicted negative cases
- **Precision**: TP / (TP + FP) - Accuracy of positive predictions
- **Recall (Sensitivity)**: TP / (TP + FN) - Ability to find all positive cases
- **F1-Score**: Harmonic mean of precision and recall
- **Jaccard Index**: Size of intersection divided by size of union of predicted and actual sets
- **Log Loss (Logarithmic Loss)**: Measures performance when output is probability

### Regression Metrics
- **Mean Absolute Error (MAE)**: Average absolute difference between actual and predicted
- **Mean Squared Error (MSE)**: Average squared difference between actual and predicted
- **Root Mean Squared Error (RMSE)**: Square root of MSE
- **R-squared (R²)**: Proportion of variance explained by the model
- **Explained Variance Score**: Measures how well model explains variance in target variable

### Train/Test Split
- **Purpose**: Evaluate model performance on unseen data
- **Typical Split**: 80% training, 20% testing
- **Random State**: Ensures reproducible results
- **Stratification**: Maintains class distribution in splits
- **Out-of-Sample Accuracy**: Performance on data not used for training

## 5. Data Preprocessing

### Feature Scaling and Normalization
- **Standardization (Z-score normalization)**: Mean = 0, Standard deviation = 1
- **Min-Max Scaling**: Scale features to fixed range (usually 0-1)
- **Normalization**: Scale features to unit norm
- **Why Important**: Many algorithms sensitive to feature scales (KNN, SVM, Neural Networks)

### Handling Categorical Variables
- **One-Hot Encoding**: Convert categorical variables to binary columns
- **Label Encoding**: Assign numerical labels to categories
- **Ordinal Encoding**: For categories with natural ordering

### Feature Selection and Engineering
- **Feature Matrix (X)**: Matrix containing all input features
- **Target Variable (y)**: Output variable to predict
- **Feature Engineering**: Creating new features from existing ones
- **Dimensionality**: Number of features in the dataset

## 6. Advanced Topics

### Regularization
- **Purpose**: Prevent overfitting by penalizing complex models
- **L1 Regularization (Lasso)**: Adds absolute value of coefficients to cost function
- **L2 Regularization (Ridge)**: Adds squared coefficients to cost function
- **Regularization Strength**: Parameter controlling amount of regularization

### Model Selection and Hyperparameter Tuning
- **Cross-Validation**: Technique for assessing model generalization
- **Grid Search**: Systematic search over hyperparameter space
- **Random Search**: Random sampling of hyperparameter combinations
- **Validation Curves**: Plot showing model performance vs hyperparameter values

### Ensemble Methods (Referenced)
- **Concept**: Combining multiple models for better performance
- **Voting**: Majority vote or average of predictions
- **Bagging**: Training models on different subsets of data
- **Boosting**: Sequential training where each model corrects previous errors

## 7. Real-World Applications

### Business Applications
- **Customer Churn Prediction**: Identifying customers likely to leave
- **Credit Card Fraud Detection**: Detecting fraudulent transactions
- **Medical Diagnosis**: Classifying medical conditions
- **Real Estate Pricing**: Predicting property values
- **Marketing Segmentation**: Targeting specific customer groups

### Technical Applications
- **Image Recognition**: Classifying images and objects
- **Natural Language Processing**: Text classification and sentiment analysis
- **Recommendation Systems**: Suggesting products or content
- **Quality Control**: Detecting defects in manufacturing
- **Financial Modeling**: Risk assessment and algorithmic trading

## 8. Best Practices and Considerations

### Model Development Workflow
1. **Data Collection and Exploration**
2. **Data Preprocessing and Cleaning**
3. **Feature Selection and Engineering**
4. **Model Selection and Training**
5. **Model Evaluation and Validation**
6. **Hyperparameter Tuning**
7. **Final Model Testing**
8. **Deployment and Monitoring**

### Common Pitfalls
- **Overfitting**: Model performs well on training data but poorly on new data
- **Underfitting**: Model too simple to capture underlying patterns
- **Data Leakage**: Using future information to predict past events
- **Selection Bias**: Non-representative training data
- **Curse of Dimensionality**: Performance degradation with too many features

### Performance Optimization
- **Feature Scaling**: Essential for distance-based algorithms
- **Data Quality**: Handling missing values and outliers
- **Algorithm Selection**: Choosing appropriate algorithm for problem type
- **Computational Efficiency**: Considering training time and memory requirements
- **Cross-Validation**: Proper evaluation methodology

## 9. Implementation Tools and Libraries

### Scikit-learn (sklearn)
- **Comprehensive machine learning library for Python**
- **Key Modules**:
  - `sklearn.linear_model`: Linear and logistic regression
  - `sklearn.neighbors`: K-nearest neighbors
  - `sklearn.tree`: Decision trees
  - `sklearn.svm`: Support vector machines
  - `sklearn.cluster`: Clustering algorithms
  - `sklearn.model_selection`: Train/test split, cross-validation
  - `sklearn.preprocessing`: Data preprocessing tools
  - `sklearn.metrics`: Evaluation metrics

### Data Manipulation
- **Pandas**: Data manipulation and analysis
- **NumPy**: Numerical computing and array operations
- **Matplotlib**: Data visualization and plotting

### Specialized Libraries (Referenced)
- **Snap ML**: High-performance machine learning library by IBM
- **XGBoost**: Gradient boosting framework
- **TensorFlow/PyTorch**: Deep learning frameworks