# GitHub Repository Setup Instructions

This guide will help you create and push this project to your GitHub repository.

## Step 1: Create Repository on GitHub

1. Go to https://github.com/new
2. Repository name: `ai-assistant-student-usage-analysis` (or your preferred name)
3. Description: "Comprehensive analysis of AI assistant usage patterns in student life using machine learning and statistical methods"
4. Set to **Public** (recommended for showcasing your work) or **Private**
5. **DO NOT** initialize with README, .gitignore, or license (we already have these)
6. Click "Create repository"

## Step 2: Initialize Git and Push (if repository doesn't exist locally)

```bash
# Navigate to the project directory
cd "/Users/emantoraih/Documents/16 Toraih research after Tulane/paper 14 AI usage on students/Kaggle1"

# Initialize git repository (if not already initialized)
git init

# Add all files
git add .

# Make initial commit
git commit -m "Initial commit: Comprehensive AI assistant usage analysis with EDA, statistical tests, and ML models"

# Add remote repository (replace with your actual repository URL)
git remote add origin https://github.com/EmanToraih-AI/ai-assistant-student-usage-analysis.git

# Rename branch to main (if needed)
git branch -M main

# Push to GitHub
git push -u origin main
```

## Step 3: If Repository Already Exists Locally

```bash
# Navigate to the project directory
cd "/Users/emantoraih/Documents/16 Toraih research after Tulane/paper 14 AI usage on students/Kaggle1"

# Check current status
git status

# Add all files
git add .

# Commit changes
git commit -m "Add comprehensive analysis notebook, data, and documentation"

# Push to GitHub
git push origin main
```

## Step 4: Verify Upload

1. Go to your repository on GitHub: https://github.com/EmanToraih-AI/ai-assistant-student-usage-analysis
2. Verify all files are present:
   - ET_comprehensive_ai_usage_analysis.ipynb
   - AI Assistant Usage in Student Life.xlsx
   - ai_assistant_usage_student_life.csv
   - README.md
   - requirements.txt
   - .gitignore
   - LICENSE

## Step 5: Add Repository Topics (Optional but Recommended)

On GitHub, click on the gear icon next to "About" and add these topics:
- `machine-learning`
- `data-analysis`
- `jupyter-notebook`
- `student-ai-usage`
- `educational-technology`
- `statistical-analysis`
- `python`
- `data-science`
- `kaggle`

## Step 6: Enable GitHub Pages (Optional)

If you want to share the notebook online:
1. Go to Settings → Pages
2. Source: Deploy from a branch
3. Branch: main, folder: / (root)
4. Save

## Troubleshooting

### If you get "repository already exists" error:
```bash
# Check existing remotes
git remote -v

# Remove existing remote (if needed)
git remote remove origin

# Add new remote
git remote add origin https://github.com/EmanToraih-AI/ai-assistant-student-usage-analysis.git
```

### If you need to authenticate:
GitHub now uses personal access tokens instead of passwords:
1. Go to GitHub Settings → Developer settings → Personal access tokens → Tokens (classic)
2. Generate new token with `repo` scope
3. Use token as password when prompted

### If files are too large:
Large data files might need Git LFS:
```bash
# Install Git LFS
git lfs install

# Track large files
git lfs track "*.xlsx"
git lfs track "*.csv"

# Add and commit
git add .gitattributes
git add .
git commit -m "Add files with LFS"
git push
```

## Next Steps

After pushing to GitHub:
1. ⭐ Star your own repository to showcase it
2. 📝 Update README with any additional information
3. 🏷️ Add tags/releases if you have versions
4. 🔗 Share the repository link on your profile
5. 📊 Upload the notebook to Kaggle and link it in README

