# Maintainer HOWTO

## Publish to GitHub
1. Create a new GitHub repo (public). Do **not** initialize with README (we already have one).
2. On your machine:
   ```bash
   git init
   git remote add origin git@github.com:OWNER/REPO.git
   git add .
   git commit -m "Initial commit: SCI bioassessment exercise"
   git branch -M main
   git push -u origin main
   ```

## Notes
- The textbook should link to the repository URL (links work better than QR codes in print).
- If you prefer, add a QR code to `docs/` for use in slides/posters.
- If/when you can legally redistribute the official VSCI/VCPMI metric scripts, drop them into `src/`.