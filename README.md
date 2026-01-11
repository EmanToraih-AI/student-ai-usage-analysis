# AI Assistant Usage in Student Life: Comprehensive Machine Learning Analysis

[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)](https://www.python.org/downloads/)
[![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-orange.svg)](https://jupyter.org/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Kaggle](https://img.shields.io/badge/Kaggle-Dataset-blue.svg)](https://www.kaggle.com/datasets/ayeshasal89/ai-assistant-usage-in-student-life-synthetic)

## 📊 Overview

This repository contains a comprehensive machine learning analysis exploring predictors of AI chatbot reuse among students. Using a dataset of 10,000 AI chatbot sessions, this project implements 17 machine learning algorithms, rigorous cross-validation, hyperparameter tuning, model calibration, and interpretability analysis using SHAP values.

**Key Findings:**
- Final task outcome is the strongest predictor of AI reuse (Cramér's V = 0.371)
- Student level and academic discipline do NOT predict reuse behavior
- AdaBoost achieved best performance (ROC-AUC = 0.6908) after cross-validation and tuning
- Feature engineering significantly improved predictive capacity
- Performance plateaued at ROC-AUC ≈0.69, indicating limitations of single-session data

## 🎯 Research Objectives

- **Predict User Retention**: Build and compare 17 machine learning models to predict whether students will reuse AI tools
- **Identify Key Predictors**: Determine which factors most strongly influence AI reuse behavior
- **Rigorous Model Evaluation**: Apply cross-validation, hyperparameter tuning, calibration, and interpretability analysis
- **Statistical Analysis**: Conduct comprehensive hypothesis testing with effect sizes
- **Feature Engineering**: Create meaningful features to improve model performance
- **Generate Insights**: Provide actionable recommendations for educational technology

## 📁 Repository Structure

```
.
├── ET_COMPREHENSIVE_ANALYSIS_V2.ipynb    # Main analysis notebook (comprehensive ML analysis)
├── ai_assistant_usage_student_life.csv   # Raw dataset (CSV format)
├── README.md                              # This file
├── requirements.txt                       # Python dependencies
├── LICENSE                                # MIT License
└── .gitignore                             # Git ignore rules
```

## 🔗 Dataset Information

### Source
- **Platform**: [Kaggle](https://www.kaggle.com/datasets/ayeshasal89/ai-assistant-usage-in-student-life-synthetic)
- **Dataset**: AI Assistant Usage in Student Life (Synthetic Dataset)
- **Dataset Link**: https://www.kaggle.com/datasets/ayeshasal89/ai-assistant-usage-in-student-life-synthetic
- **Author**: [Ayesha Sal](https://www.kaggle.com/ayeshasal89)
- **License**: CC0: Public Domain

### Dataset Description
The dataset contains 10,000 synthetic records of student interactions with AI assistants, including:
- **Student Characteristics**: Student level (High School, Undergraduate, Graduate), Discipline (7 categories)
- **Session Characteristics**: Session length, number of prompts, task type, AI assistance level
- **Outcomes**: Final outcome, satisfaction rating, reuse intention (UsedAgain - target variable)

### Key Variables
| Variable | Type | Description |
|----------|------|-------------|
| SessionID | Identifier | Unique session identifier |
| StudentLevel | Categorical | High School, Undergraduate, Graduate |
| Discipline | Categorical | Academic discipline (7 categories) |
| SessionDate | DateTime | Date of the session |
| SessionLengthMin | Numerical | Session duration in minutes |
| TotalPrompts | Numerical | Number of prompts in the session |
| TaskType | Categorical | Type of task (Studying, Coding, Writing, etc.) |
| AI_AssistanceLevel | Ordinal | Level of AI assistance (1-5) |
| FinalOutcome | Categorical | Session outcome (Assignment Completed, Idea Drafted, Confused, Gave Up) |
| UsedAgain | Binary | Whether student reused the AI tool (Target variable) |
| SatisfactionRating | Numerical | Satisfaction rating (1-5) |

## 🔬 Analysis Components

### 1. Exploratory Data Analysis (EDA)
- Target variable distribution analysis
- Categorical and numerical variable distributions
- Correlation analysis
- Relationship exploration between variables
- Temporal pattern analysis

### 2. Statistical Hypothesis Testing
- **Chi-square tests** for categorical variables (with Cramér's V effect size)
- **Welch's t-tests** and **Mann-Whitney U tests** for numerical variables (with Cohen's d)
- **ANOVA** for multiple group comparisons
- Effect size calculations for publication-ready results
- Comprehensive quartile reporting (median with Q1-Q3)

### 3. Feature Engineering
- Efficiency metrics: minutes per prompt, satisfaction per prompt, prompts per minute
- Binary engagement thresholds: high assistance, high satisfaction, long session
- Outcome indicators: successful outcome
- Temporal features: month, day of week, weekend indicator
- Interaction features: satisfaction × assistance, satisfaction × outcome, etc.
- **Result**: 8 original variables expanded to 28 features after encoding

### 4. Machine Learning Models
Comprehensive comparison of **17 machine learning algorithms**:

**Linear Models:**
- Logistic Regression (L2 regularization)
- Lasso (L1 regularization)
- Elastic Net (L1+L2 regularization)
- Ridge Classifier
- Linear Discriminant Analysis
- Quadratic Discriminant Analysis

**Tree-Based Models:**
- Decision Tree
- Random Forest
- Gradient Boosting
- AdaBoost ⭐ (Best performing)
- Extra Trees
- XGBoost
- LightGBM

**Other Algorithms:**
- K-Nearest Neighbors
- Naive Bayes
- Support Vector Machine (RBF kernel)
- Neural Network (Multi-layer Perceptron)

**Evaluation Metrics**: Accuracy, Precision, Recall, F1-Score, ROC-AUC (primary metric)

### 5. Model Optimization & Validation
- **Cross-Validation**: 5-fold stratified cross-validation for all 17 models
- **Hyperparameter Tuning**: Randomized search with 5-fold CV for top 5 models
- **Model Calibration**: Platt scaling for probability calibration (Brier score improvement)
- **Threshold Optimization**: Youden's J and F1-optimal thresholds
- **Ensemble Methods**: Voting and Stacking classifiers
- **Feature Importance**: SHAP (SHapley Additive exPlanations) values for interpretability

### 6. Final Model Selection
**AdaBoost** was selected as the final model based on:
- Highest cross-validated ROC-AUC (0.6908)
- Best performance after hyperparameter tuning
- Optimal hyperparameters: n_estimators=200, learning_rate=1.0
- Improved calibration (Brier score: 0.1836)
- Strong interpretability with SHAP analysis

## 🚀 Getting Started

### Prerequisites
- Python 3.8 or higher
- Jupyter Notebook or JupyterLab
- pip (Python package installer)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/EmanToraih-AI/student-ai-usage-analysis.git
   cd student-ai-usage-analysis
   ```

2. **Install required packages**
   ```bash
   pip install -r requirements.txt
   ```

3. **Launch Jupyter Notebook**
   ```bash
   jupyter notebook
   ```

4. **Open and run the analysis notebook**
   - Open `ET_COMPREHENSIVE_ANALYSIS_V2.ipynb`
   - Run cells sequentially (or use "Run All")
   - Execution time: ~10-15 minutes for full analysis

### Alternative: Run in Kaggle
The notebook is designed to work in Kaggle Notebooks:
1. Upload the dataset to Kaggle
2. Create a new notebook
3. Copy the notebook code
4. Update data paths to `/kaggle/input/dataset-name/`

## 📦 Dependencies

Key Python packages used in this project:

- **Data Manipulation**: pandas (2.2+), numpy (2.1+)
- **Visualization**: matplotlib (3.9+), seaborn (0.13+), plotly
- **Statistical Analysis**: scipy (1.15+), statsmodels
- **Machine Learning**: scikit-learn (1.5+), xgboost (2.1+), lightgbm (4.5+)
- **Interpretability**: shap (0.46+)
- **Notebook**: jupyter, ipykernel

See `requirements.txt` for complete list with versions.

## 📈 Key Findings

### Usage Patterns
- **Reuse Rate**: 70.6% of students reuse AI assistants after initial session
- **Class Distribution**: 7,064 reuse sessions vs 2,936 non-reuse sessions (ratio 2.4:1)
- **Most Common Task**: Writing tasks (31.0% of sessions)
- **Session Characteristics**: Median session length 16.7 minutes, median 4 prompts

### Statistical Findings
- **Strongest Predictor**: Final task outcome (χ² = 1375.8, Cramér's V = 0.371, p < 0.001)
  - Successful sessions (Assignment Completed, Idea Drafted): 80% reuse rate
  - Unsuccessful sessions (Confused, Gave Up): 40% reuse rate
- **Non-Significant Predictors**: Student level (p = 0.734), Discipline (p = 0.290)
- **No Numerical Differences**: Session length, prompts, assistance level, and satisfaction show no significant differences between reuse groups (all p > 0.05, Cohen's d < 0.03)

### Machine Learning Results
- **Best Model**: AdaBoost (CV ROC-AUC = 0.6908)
- **Baseline Performance**: Top models achieved ROC-AUC ≈ 0.67-0.68
- **Cross-Validation Improvement**: AdaBoost improved from 0.67 to 0.69 with CV
- **Hyperparameter Tuning**: Modest improvements across models
- **Calibration**: Improved Brier score from 0.1900 to 0.1836
- **Ensemble Methods**: Did not outperform single best model
- **Performance Limitation**: ROC-AUC plateaued at ≈0.69, indicating intrinsic limitations of single-session cross-sectional data

### Feature Importance (SHAP Analysis)
Top predictors by mean absolute SHAP value:
1. Discipline type (Psychology, Mathematics)
2. Session engagement metrics (successful outcome, long session, session length, total prompts)
3. Temporal features (month, weekend)
4. Efficiency features (minutes per prompt, satisfaction per prompt)

## 📊 Results Visualization

The notebook includes comprehensive visualizations:
- Distribution plots for all variables
- Correlation heatmaps
- Temporal trend analysis
- Model performance comparisons (17 models)
- ROC curves
- Cross-validation results
- Feature importance plots (SHAP)
- Calibration curves
- Threshold optimization plots
- Ensemble methods comparison

All figures are saved in publication-ready formats (PNG 300 DPI, PDF).

## 🔬 Methodology Highlights

### Data Preprocessing
- Complete dataset (no missing values)
- 80:20 stratified train-test split (preserves class distribution)
- StandardScaler for algorithms requiring scaled inputs
- One-hot encoding for categorical variables
- Feature engineering: 8 original → 28 features

### Model Evaluation
- **Primary Metric**: ROC-AUC (threshold-independent)
- **Secondary Metrics**: Accuracy, Precision, Recall, F1-Score
- **Validation**: 5-fold stratified cross-validation
- **Calibration**: Brier score assessment
- **Interpretability**: SHAP values for feature attribution

### Statistical Analysis
- Appropriate statistical tests based on data distribution
- Effect sizes calculated (Cramér's V, Cohen's d, Eta-squared)
- Quartile reporting for numerical variables (median with Q1-Q3)
- Multiple comparison considerations

## 📝 Citation

If you use this analysis in your research, please cite:

```bibtex
@software{toraih_ai_student_usage_2025,
  author = {Toraih, Eman},
  title = {AI Assistant Usage in Student Life: Comprehensive Machine Learning Analysis},
  url = {https://github.com/EmanToraih-AI/student-ai-usage-analysis},
  year = {2025}
}
```

**Dataset Citation:**
- Kaggle Dataset: [AI Assistant Usage in Student Life (Synthetic Dataset)](https://www.kaggle.com/datasets/ayeshasal89/ai-assistant-usage-in-student-life-synthetic)
- Original Author: Ayesha Sal

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to:
- Open an issue for bugs or suggestions
- Submit a pull request for improvements
- Share your analysis or extensions
- Provide feedback on methodology or results

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

The dataset used is from Kaggle and is licensed under CC0: Public Domain.

## 👤 Author

**Eman A. Toraih, MD, PhD**

- GitHub: [@EmanToraih-AI](https://github.com/EmanToraih-AI)
- Repository: [student-ai-usage-analysis](https://github.com/EmanToraih-AI/student-ai-usage-analysis)

## 🙏 Acknowledgments

- **Dataset Creator**: [Ayesha Sal](https://www.kaggle.com/ayeshasal89) for providing the synthetic dataset
- **Kaggle Community**: For the platform and collaborative environment
- **Open Source Community**: For the amazing data science tools and libraries (scikit-learn, pandas, XGBoost, LightGBM, SHAP, etc.)

## 🔗 Useful Links

- **Kaggle Dataset**: https://www.kaggle.com/datasets/ayeshasal89/ai-assistant-usage-in-student-life-synthetic
- **Kaggle Notebooks**: https://www.kaggle.com/datasets/ayeshasal89/ai-assistant-usage-in-student-life-synthetic/code
- **Documentation**: 
  - [Pandas Documentation](https://pandas.pydata.org/docs/)
  - [Scikit-learn Documentation](https://scikit-learn.org/stable/)
  - [XGBoost Documentation](https://xgboost.readthedocs.io/)
  - [SHAP Documentation](https://shap.readthedocs.io/)

## 📌 Notes

- This analysis uses a synthetic dataset, so results should be interpreted with caution for real-world applications
- The analysis is designed for educational and research purposes
- For production use, validate findings with real-world data
- Consider ethical implications of AI usage in educational contexts
- The notebook includes comprehensive documentation and can be used as a learning resource for ML workflows

## 🎯 Repository Highlights

- ✅ **17 Machine Learning Algorithms** compared comprehensively
- ✅ **Rigorous Validation** with cross-validation and hyperparameter tuning
- ✅ **Model Interpretability** using SHAP values
- ✅ **Publication-Ready** visualizations and statistical reporting
- ✅ **Complete Methodology** from EDA to final model selection
- ✅ **Reproducible Research** with detailed code and documentation
- ✅ **Professional Code Quality** with clear structure and comments

---

⭐ **Star this repository if you find it useful!**

🔄 **Last Updated**: January 2025
