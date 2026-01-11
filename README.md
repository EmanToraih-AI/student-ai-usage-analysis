# AI Assistant Usage in Student Life: Comprehensive Analysis

[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)](https://www.python.org/downloads/)
[![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-orange.svg)](https://jupyter.org/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Kaggle](https://img.shields.io/badge/Kaggle-Dataset-blue.svg)](https://www.kaggle.com/datasets/ayeshasal89/ai-assistant-usage-in-student-life-synthetic)

## 📊 Overview

This repository contains a comprehensive data analysis and machine learning project exploring patterns, predictors, and insights from student interactions with AI assistants. The analysis leverages a synthetic dataset of 10,000 student-AI interaction sessions to understand usage patterns, predict user retention, and provide actionable insights for educators and developers.

## 🎯 Research Objectives

- **Understand Usage Patterns**: Analyze how different student characteristics and task types influence AI assistant usage
- **Predict User Retention**: Build machine learning models to predict whether students will reuse AI tools
- **Statistical Analysis**: Conduct rigorous hypothesis testing to identify significant associations
- **Temporal Analysis**: Explore trends and patterns over time
- **Feature Engineering**: Create meaningful features to improve model performance
- **Generate Insights**: Provide actionable recommendations for educational technology

## 📁 Repository Structure

```
.
├── ET_COMPREHENSIVE_ANALYSIS.ipynb           # Main analysis notebook
├── ai_assistant_usage_student_life.csv       # Raw dataset (CSV format)
├── README.md                                  # This file
├── requirements.txt                           # Python dependencies
├── LICENSE                                    # MIT License
└── .gitignore                                 # Git ignore rules
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
- **Student Characteristics**: Student level (High School, Undergraduate, Graduate), Discipline
- **Session Characteristics**: Session length, number of prompts, task type, AI assistance level
- **Outcomes**: Final outcome, satisfaction rating, reuse intention (UsedAgain)

### Key Variables
| Variable | Type | Description |
|----------|------|-------------|
| SessionID | Identifier | Unique session identifier |
| StudentLevel | Categorical | High School, Undergraduate, Graduate |
| Discipline | Categorical | Academic discipline (e.g., Computer Science, Psychology) |
| SessionDate | DateTime | Date of the session |
| SessionLengthMin | Numerical | Session duration in minutes |
| TotalPrompts | Numerical | Number of prompts in the session |
| TaskType | Categorical | Type of task (Studying, Coding, Writing, etc.) |
| AI_AssistanceLevel | Ordinal | Level of AI assistance (1-5) |
| FinalOutcome | Categorical | Session outcome (Assignment Completed, Idea Drafted, etc.) |
| UsedAgain | Binary | Whether student reused the AI tool (Target variable) |
| SatisfactionRating | Numerical | Satisfaction rating (1-5) |

## 🔬 Analysis Components

### 1. Exploratory Data Analysis (EDA)
- Target variable distribution analysis
- Categorical and numerical variable distributions
- Correlation analysis
- Relationship exploration between variables

### 2. Statistical Hypothesis Testing
- **Chi-square tests** for categorical variables (with Cramer's V effect size)
- **Welch's t-tests** and **Mann-Whitney U tests** for numerical variables (with Cohen's d)
- **ANOVA** for multiple group comparisons
- Effect size calculations for publication-ready results

### 3. Time Series Analysis
- Temporal trends in session counts
- User retention rates over time
- Day-of-week patterns
- Satisfaction trends

### 4. Feature Engineering
- Efficiency metrics (Minutes per Prompt, Prompts per Minute)
- Binary features (High Assistance, High Satisfaction, Long Session)
- Outcome success indicators
- Temporal features extraction

### 5. Machine Learning Models
Implemented and compared multiple algorithms:
- Logistic Regression
- Random Forest
- Decision Tree
- Gradient Boosting
- XGBoost
- LightGBM

**Evaluation Metrics**: Accuracy, Precision, Recall, F1-Score, ROC-AUC

### 6. Model Optimization
- Hyperparameter tuning using GridSearchCV
- Feature importance analysis
- ROC curve visualization
- Model comparison and selection

## 🚀 Getting Started

### Prerequisites

- Python 3.8 or higher
- Jupyter Notebook or JupyterLab
- pip (Python package installer)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/EmanToraih-AI/ai-assistant-student-usage-analysis.git
   cd ai-assistant-student-usage-analysis
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
   - Open `ET_comprehensive_ai_usage_analysis.ipynb`
   - Run cells sequentially (or use "Run All")

### Alternative: Use the CSV file directly
If you prefer working with CSV format, the dataset is also available as `ai_assistant_usage_student_life.csv`.

## 📦 Dependencies

Key Python packages used in this project:

- **Data Manipulation**: pandas, numpy
- **Visualization**: matplotlib, seaborn, plotly
- **Statistical Analysis**: scipy, statsmodels
- **Machine Learning**: scikit-learn, xgboost, lightgbm
- **Notebook**: jupyter, ipykernel

See `requirements.txt` for complete list with versions.

## 📈 Key Findings

### Usage Patterns
- **Reuse Rate**: ~70% of students reuse AI assistants after initial session
- **Most Common Task**: Writing tasks dominate student usage
- **Session Characteristics**: Average session length varies by task type and student level

### Predictive Insights
- Session outcome and satisfaction rating are key predictors of reuse
- Student level and discipline show significant associations with usage patterns
- Feature engineering improves model interpretability and performance

### Statistical Significance
- Multiple variables show statistically significant associations with reuse intention
- Effect sizes calculated for publication-ready reporting
- Temporal patterns reveal usage trends over time

## 📊 Results Visualization

The notebook includes comprehensive visualizations:
- Distribution plots for all variables
- Correlation heatmaps
- Temporal trend analysis
- Model performance comparisons
- ROC curves
- Feature importance plots

## 🔬 Methodology

### Data Preprocessing
- Data quality assessment
- Missing value handling
- Outlier detection (documented, not removed to preserve data integrity)
- Feature encoding (one-hot encoding for categorical variables)
- Feature scaling (StandardScaler for numerical features)

### Model Evaluation
- Train-test split (80-20) with stratification
- Cross-validation for hyperparameter tuning
- Multiple evaluation metrics for comprehensive assessment
- ROC-AUC as primary metric for class-imbalanced problem

### Statistical Analysis
- Appropriate statistical tests selected based on data distribution
- Effect sizes calculated (Cramer's V, Cohen's d, Eta-squared)
- Multiple comparison corrections considered

## 📝 Citation

If you use this analysis in your research, please cite:

```bibtex
@software{toraih_ai_student_usage_2025,
  author = {Toraih, Eman},
  title = {AI Assistant Usage in Student Life: Comprehensive Analysis},
  url = {https://github.com/EmanToraih-AI/ai-assistant-student-usage-analysis},
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

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

The dataset used is from Kaggle and is licensed under CC0: Public Domain.

## 👤 Author

**Eman Toraih**
- GitHub: [@EmanToraih-AI](https://github.com/EmanToraih-AI)
- Kaggle: [Your Kaggle Profile](https://www.kaggle.com/)

## 🙏 Acknowledgments

- **Dataset Creator**: [Ayesha Sal](https://www.kaggle.com/ayeshasal89) for providing the synthetic dataset
- **Kaggle Community**: For the platform and collaborative environment
- **Open Source Community**: For the amazing data science tools and libraries

## 🔗 Useful Links

- **Kaggle Dataset**: https://www.kaggle.com/datasets/ayeshasal89/ai-assistant-usage-in-student-life-synthetic
- **Kaggle Notebooks**: https://www.kaggle.com/datasets/ayeshasal89/ai-assistant-usage-in-student-life-synthetic/code
- **Documentation**: 
  - [Pandas Documentation](https://pandas.pydata.org/docs/)
  - [Scikit-learn Documentation](https://scikit-learn.org/stable/)
  - [XGBoost Documentation](https://xgboost.readthedocs.io/)

## 📌 Notes

- This is a synthetic dataset, so results should be interpreted with caution for real-world applications
- The analysis is designed for educational and research purposes
- For production use, validate findings with real-world data
- Consider ethical implications of AI usage in educational contexts

---

⭐ **Star this repository if you find it useful!**

🔄 **Last Updated**: January 2025

