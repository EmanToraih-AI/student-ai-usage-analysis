#!/bin/bash
# Script to verify which files will be included in git

echo "=========================================="
echo "FILES THAT WILL BE INCLUDED IN GIT"
echo "=========================================="
echo ""

echo "1. OUR CREATED NOTEBOOK:"
ls -lh ET_*.ipynb 2>/dev/null || echo "  (not found)"

echo ""
echo "2. RAW DATA FILES:"
ls -lh "AI Assistant Usage in Student Life.xlsx" ai_assistant_usage_student_life.csv 2>/dev/null

echo ""
echo "3. DOCUMENTATION & CONFIG FILES:"
ls -lh README.md requirements.txt LICENSE SETUP_GITHUB.md .gitignore 2>/dev/null

echo ""
echo "=========================================="
echo "FILES THAT WILL BE EXCLUDED (from .gitignore)"
echo "=========================================="
echo ""

echo "Other Kaggle Notebooks (excluded):"
ls -1 *.ipynb 2>/dev/null | grep -v "^ET_" | head -10
echo "... and $(($(ls -1 *.ipynb 2>/dev/null | grep -v "^ET_" | wc -l | tr -d ' ') - 10)) more"

echo ""
echo "=========================================="
echo "VERIFICATION COMPLETE"
echo "=========================================="

