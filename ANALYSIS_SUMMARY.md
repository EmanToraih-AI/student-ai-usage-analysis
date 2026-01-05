# Analysis Summary: AI Assistant Usage in Student Life

## 📋 Project Overview

This document summarizes all steps executed in the comprehensive analysis of AI assistant usage patterns in student life. The analysis explores a dataset of 10,000 student-AI interaction sessions to understand usage patterns, predict user retention, and provide actionable insights.

## 🎯 Analysis Objectives

1. **Understand Usage Patterns**: Analyze how different student demographics and task types influence AI assistant usage
2. **Predict User Retention**: Build machine learning models to predict whether students will reuse AI tools (UsedAgain)
3. **Statistical Analysis**: Conduct rigorous hypothesis testing to identify significant associations
4. **Temporal Analysis**: Explore trends and patterns over time
5. **Feature Engineering**: Create meaningful features to improve model performance
6. **Generate Insights**: Provide actionable recommendations for educational technology

## 📊 Dataset Information

- **Source**: Kaggle - AI Assistant Usage in Student Life (Synthetic Dataset)
- **Sample Size**: 10,000 student-AI interaction sessions
- **Variables**: 11 features including demographics, session characteristics, and outcomes
- **Target Variable**: `UsedAgain` (binary: True/False)
- **Dataset Link**: https://www.kaggle.com/datasets/ayeshasal89/ai-assistant-usage-in-student-life-synthetic

### Key Variables
- **Demographics**: StudentLevel, Discipline
- **Session Characteristics**: SessionLengthMin, TotalPrompts, TaskType, AI_AssistanceLevel
- **Outcomes**: FinalOutcome, SatisfactionRating, UsedAgain (target)

## 🔬 Analysis Steps Executed

### Step 1: Data Loading and Initial Screening

**Actions Taken:**
- Loaded dataset from Excel file (`AI Assistant Usage in Student Life.xlsx`)
- Converted to CSV format for compatibility
- Converted `SessionDate` to datetime format
- Performed initial data inspection:
  - Dataset shape and structure
  - Data types verification
  - Basic statistics (mean, median, std, min, max)
  - Memory usage assessment

**Outputs:**
- Dataset loaded: 10,000 rows × 11 columns
- Data quality assessment completed
- No missing values detected
- No duplicate rows found

### Step 2: Exploratory Data Analysis (EDA)

#### 2.1 Target Variable Analysis
- **Distribution Analysis**: Analyzed `UsedAgain` variable
  - Class distribution: ~70% True, ~30% False
  - Class imbalance ratio calculated
  - Visualization: Bar charts and pie charts

#### 2.2 Categorical Variables Analysis
- **Student Level Distribution**: Analyzed across High School, Undergraduate, Graduate
- **Task Type Distribution**: Studied distribution across 6 task types
- **Discipline Analysis**: Examined top 10 disciplines by frequency
- **Final Outcome Distribution**: Analyzed session outcomes
- **Visualization**: Horizontal bar charts for all categorical variables

#### 2.3 Numerical Variables Distribution
- **Variables Analyzed**: SessionLengthMin, TotalPrompts, AI_AssistanceLevel, SatisfactionRating
- **Visualizations Created**:
  - Histograms with mean/median lines
  - Box plots for outlier detection
- **Statistics Calculated**: Mean, median, standard deviation, min, max for all numerical variables

#### 2.4 Correlation Analysis
- **Correlation Matrix**: Calculated Pearson correlations between numerical variables
- **Heatmap Visualization**: Created correlation heatmap
- **Key Finding**: Identified strong correlation (r=0.88) between SessionLengthMin and TotalPrompts
- **Correlation with Target**: Analyzed correlations with UsedAgain variable

#### 2.5 Relationship Analysis
- **Categorical vs Target**: Analyzed UsedAgain distribution by:
  - StudentLevel
  - TaskType
  - FinalOutcome
  - Discipline
- **Numerical vs Target**: Compared numerical variables between UsedAgain groups using box plots
- **Statistical Summaries**: Calculated mean, median, std by UsedAgain groups

### Step 3: Statistical Hypothesis Testing

#### 3.1 Chi-Square Tests for Categorical Variables
- **Tests Performed**: Chi-square tests of independence
- **Variables Tested**: StudentLevel, TaskType, FinalOutcome, Discipline (each vs UsedAgain)
- **Metrics Calculated**:
  - Chi-square statistic
  - Degrees of freedom
  - p-values
  - **Cramer's V** (effect size)
- **Interpretation**: Identified significant associations (p < 0.05)

#### 3.2 T-tests and Non-parametric Tests
- **Tests Performed**:
  - Welch's t-test (doesn't assume equal variances)
  - Mann-Whitney U test (non-parametric alternative)
- **Variables Tested**: SessionLengthMin, TotalPrompts, AI_AssistanceLevel, SatisfactionRating
- **Metrics Calculated**:
  - T-statistics and p-values
  - U-statistics and p-values
  - **Cohen's d** (effect size)
  - Mean differences between groups
- **Normality Check**: Shapiro-Wilk test for distribution assessment

#### 3.3 ANOVA Tests
- **Tests Performed**: One-way ANOVA
- **Analyses**:
  - SatisfactionRating across TaskType groups
  - SessionLengthMin across StudentLevel groups
- **Metrics Calculated**:
  - F-statistics
  - p-values
  - **Eta-squared** (effect size)
- **Purpose**: Test for differences across multiple groups

### Step 4: Time Series Analysis

**Temporal Features Extracted:**
- Year, Month, DayOfWeek, WeekOfYear from SessionDate

**Analyses Performed:**
1. **Monthly Session Trends**: Total sessions over time (monthly aggregation)
2. **UsedAgain Rate Over Time**: Retention rate trends across months
3. **Day-of-Week Patterns**: Session distribution by weekday
4. **Satisfaction Trends**: Average satisfaction rating over time

**Visualizations**: Time series plots with trend lines and mean reference lines

### Step 5: Feature Engineering

**New Features Created:**

1. **Efficiency Metrics**:
   - `MinPerPrompt`: SessionLengthMin / TotalPrompts
   - `PromptsPerMin`: TotalPrompts / SessionLengthMin
   - `SatisfactionPerPrompt`: SatisfactionRating / TotalPrompts

2. **Binary Features**:
   - `HighAssistance`: AI_AssistanceLevel >= 3
   - `HighSatisfaction`: SatisfactionRating >= 4
   - `LongSession`: SessionLengthMin >= median
   - `SuccessfulOutcome`: FinalOutcome == 'Assignment Completed'

3. **Temporal Features**: Year, Month, DayOfWeek, WeekOfYear

**Impact**: Increased feature count from 11 to 18+ features after encoding

### Step 6: Machine Learning Model Development

#### 6.1 Data Preparation
- **Feature Selection**: Selected 14 features for modeling
- **Encoding**: One-hot encoding for categorical variables (StudentLevel, Discipline, TaskType, FinalOutcome)
- **Scaling**: StandardScaler applied to numerical features
- **Train-Test Split**: 80-20 split with stratification to preserve class distribution
  - Training set: 8,000 samples
  - Test set: 2,000 samples

#### 6.2 Baseline Models Implemented
Six machine learning algorithms were implemented and compared:

1. **Logistic Regression**
   - Used scaled features
   - Baseline classification model

2. **Random Forest**
   - n_estimators=100
   - Tree-based ensemble method

3. **Decision Tree**
   - Single tree classifier
   - Baseline tree model

4. **Gradient Boosting**
   - Sequential ensemble method

5. **XGBoost**
   - Advanced gradient boosting
   - High-performance tree-based model

6. **LightGBM**
   - Fast gradient boosting framework
   - Efficient tree-based model

#### 6.3 Model Evaluation
**Metrics Calculated for Each Model:**
- Accuracy
- Precision
- Recall
- F1-Score
- ROC-AUC (primary metric for imbalanced classification)

**Model Comparison**: All models ranked by ROC-AUC score

#### 6.4 Model Visualization
- **Performance Comparison**: Bar charts comparing all metrics across models
- **ROC Curves**: ROC curves for top 3 performing models
- **Feature Importance**: Random Forest feature importance analysis (top 20 features)

#### 6.5 Hyperparameter Tuning
- **Method**: GridSearchCV with 5-fold stratified cross-validation
- **Target Models**: Best performing model (XGBoost or Random Forest)
- **Search Strategy**: Grid search over parameter space
- **Evaluation**: ROC-AUC score optimization
- **Results**: Best parameters identified and performance improvement measured

### Step 7: Insights and Conclusions

#### 7.1 Key Findings Summary
- **Usage Patterns**: Documented most common task types, student levels, and disciplines
- **Retention Rate**: ~70% reuse rate identified
- **Statistical Significance**: Documented all significant associations
- **Predictive Performance**: Best model performance metrics documented
- **Feature Importance**: Top predictors identified

#### 7.2 Recommendations Generated
1. Longitudinal studies for adoption patterns
2. Causal analysis recommendations
3. Domain-specific analysis suggestions
4. Quality assessment recommendations
5. User segmentation strategies
6. Intervention study designs
7. Comparative analysis approaches
8. Ethical considerations

## 📁 Deliverables Created

### 1. Analysis Notebook
- **File**: `ET_comprehensive_ai_usage_analysis.ipynb`
- **Content**: Complete analysis pipeline from data loading to insights
- **Structure**: 46 cells organized into 8 main sections
- **Languages**: Python (pandas, scikit-learn, matplotlib, seaborn, etc.)

### 2. Documentation Files
- **README.md**: Comprehensive project documentation with Kaggle links
- **requirements.txt**: Python package dependencies
- **LICENSE**: MIT License
- **SETUP_GITHUB.md**: GitHub repository setup instructions
- **PRE_PUSH_CHECKLIST.md**: Pre-upload verification checklist
- **ANALYSIS_SUMMARY.md**: This document

### 3. Data Files
- **AI Assistant Usage in Student Life.xlsx**: Original dataset
- **ai_assistant_usage_student_life.csv**: CSV version for compatibility

### 4. Configuration Files
- **.gitignore**: Git ignore rules (excludes reference notebooks)

## 🔧 Technologies and Tools Used

### Python Libraries
- **Data Manipulation**: pandas, numpy
- **Visualization**: matplotlib, seaborn, plotly
- **Statistical Analysis**: scipy, statsmodels
- **Machine Learning**: scikit-learn, xgboost, lightgbm
- **Notebook Environment**: jupyter, ipykernel

### Statistical Methods
- Descriptive statistics
- Chi-square tests (with Cramer's V)
- Welch's t-tests (with Cohen's d)
- Mann-Whitney U tests
- One-way ANOVA (with Eta-squared)
- Correlation analysis

### Machine Learning Techniques
- Feature engineering
- One-hot encoding
- Standard scaling
- Train-test splitting with stratification
- Cross-validation
- Hyperparameter tuning (GridSearchCV)
- Multiple evaluation metrics

## 📈 Key Results

### Data Quality
- ✅ No missing values
- ✅ No duplicate rows
- ✅ 10,000 complete records
- ✅ All data types correctly identified

### Statistical Findings
- Multiple significant associations identified (p < 0.05)
- Effect sizes calculated (Cramer's V, Cohen's d, Eta-squared)
- Publication-ready statistical results

### Model Performance
- Multiple models evaluated and compared
- Best model performance documented
- Feature importance analyzed
- Hyperparameter optimization completed

### Insights Generated
- Usage pattern identification
- Retention rate analysis (~70%)
- Temporal trend identification
- Feature importance ranking

## 🚀 Next Steps and Recommendations

### For Publication
1. Extract key visualizations for manuscript figures
2. Use statistical test results in methods/results sections
3. Incorporate model performance metrics
4. Reference feature importance findings
5. Include temporal analysis insights

### For Kaggle Upload
1. Upload notebook to Kaggle platform
2. Link to dataset in notebook
3. Add markdown explanations
4. Share insights in notebook description
5. Tag appropriately (machine-learning, data-analysis, education)

### For Future Research
1. Longitudinal analysis with individual student tracking
2. Causal inference studies
3. Domain-specific deep dives
4. Intervention effectiveness studies
5. Comparative analysis across AI tools

## 📝 Notes

- **Dataset Type**: Synthetic dataset - results should be interpreted with caution for real-world applications
- **Class Imbalance**: Moderate imbalance (~70:30) handled with stratified splitting
- **Model Selection**: Multiple models compared to ensure robustness
- **Statistical Rigor**: Appropriate tests selected based on data distribution
- **Effect Sizes**: Calculated for all statistical tests for publication readiness

## ✅ Quality Assurance

- All code executed and verified
- Visualizations checked for clarity
- Statistical tests validated
- Model results verified
- Documentation reviewed
- File organization confirmed
- Git configuration verified

---

**Analysis Completed**: January 2025  
**Notebook**: ET_comprehensive_ai_usage_analysis.ipynb  
**Total Analysis Steps**: 7 main phases, 20+ sub-steps  
**Deliverables**: Complete analysis pipeline ready for publication and sharing

