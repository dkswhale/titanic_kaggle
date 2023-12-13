1. Data
    train - 891 x 12
    test - 418 x 11 (no 'Survived' column)
    submission file = 418 x 2 (same 'PassengerId' as test and prediction of'Survived')

    12 columns in train.csv

    RangeIndex: 891 entries, 0 to 890
    Data columns (total 12 columns):
    #   Column       Non-Null Count  Dtype  
    ---  ------       --------------  -----  
    0   PassengerId  891 non-null    int64
    1   Survived     891 non-null    int64      <Whether the person survived (1=survived/0=deceased)>
    2   Pclass       891 non-null    int64      <Ticket class (1=1st/2=2nd/3=3rd)> - a proxy for socio-economic status
    3   Name         891 non-null    object     
    4   Sex          891 non-null    object 
    5   Age          714 non-null    float64    <0 if less than one, xx.5 if estimated>
    6   SibSp        891 non-null    int64      <number of siblings/spouses aboard the Titanic>
    7   Parch        891 non-null    int64      <number of parents/children aboard the Titanic>
    8   Ticket       891 non-null    object     
    9   Fare         891 non-null    float64    <complicated variable - depends on the destination and number of people with same ticket>
    10  Cabin        204 non-null    object     
    11  Embarked     889 non-null    object     <Port of embarkation (C=Cherbourg/Q=Queenstown/S=Southampton)>
    dtypes: float64(2), int64(5), object(5)
    memory usage: 83.7+ KB

2. Discussion before
    PassengerId, Name, Ticket, Embarked by itself would not affect survival rate,
    but we have to check survival rates of those who have the same Ticket or Name.

    In general, female and minors, especially infants and toddlers would have higher chance to survive
    since they would be rescued first.

    Other columns, such as SibSp and Parch, are hard to know before examining the data.
    I would assume people with higher Parch is less likely to survive since they have to look out more.
    
3. Shape of data
    First, it is easier to divide into numeric variables and categorical variables.
    Then we can make histograms for numeric variables and check what to normalize.
    Make correlation matrix to see what is what.
    pivot table to see what average of survived and not survived.

    For categorical variables, barplot which is similar to what we did before.
    Make pivot table to see the survival rate of these categorical variables.

4. Feature Engineering
    multiple cabin?
    cabin with same letter in the beginning

5. Data Preprocessing for Model
    1) drop null values from Embarked
    2) Include only relevant variables
    3) Do categorical transforms on all data (pd.getdummies() for categorical variables)
        Also, impute null value with mean value for continuous variables
        drop null 'embarked' rows
        normalize data that needs it

6. Model building (Baseline Validation Performance)
    - Naive Bayes
    - Logistic Regression
    - Decision Tree
    - K Nearest Neighbor
    - Random Forest
    - Support Vector Classifier
    - Xtreme Gradient Boosting
    - Soft Voting Classifier - All Models

7. Cross Validation

8. Feature Importance
