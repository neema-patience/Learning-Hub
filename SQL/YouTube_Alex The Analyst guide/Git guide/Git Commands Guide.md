# Git Commands Guide

## 1. **Check Git Version**
```sh
git --version
```
**Description:** Checks the installed Git version.
**Expected Outcome:**
```
git version X.XX.X (your installed version)
```

---

## 2. **Navigate to Cloned Repository**
```sh
cd C:\Users\naomi.mathenge\Documents\Projects\Learning-sql-Youtube
```
**Description:** Moves into the directory where the repository is located.
**Expected Outcome:**
```
C:\Users\naomi.mathenge\Documents\Projects\Learning-sql-Youtube>
```

---

## 3. **Check Git Status**
```sh
git status
```
**Description:** Displays the current branch and the status of the working directory.
**Expected Outcome:**
```
On branch main
nothing to commit, working tree clean
```

---

## 4. **List All Branches (Local & Remote)**
```sh
git branch -a
```
**Description:** Lists all local and remote branches.
**Expected Outcome:**
```
* main
  remotes/origin/HEAD -> origin/master
  remotes/origin/main
  remotes/origin/master
```

---

## 5. **Rename Local `master` Branch to `main`**
```sh
git branch -m master main
```
**Description:** Renames `master` branch to `main` locally.
**Expected Outcome:** No output, but `git branch` will now show `main`.

---

## 6. **Fetch Latest Changes from Remote**
```sh
git fetch origin
```
**Description:** Retrieves updates from the remote repository without merging.
**Expected Outcome:**
```
From https://github.com/neema-patience/Learning-SQL
 * [new branch]      main       -> origin/main
 * [new branch]      master     -> origin/master
```

---

## 7. **Switch to `main` Branch**
```sh
git checkout main
```
**Description:** Switches to the `main` branch.
**Expected Outcome:**
```
Switched to branch 'main'
```

---

## 8. **Set Remote HEAD to `main`**
```sh
git remote set-head origin main
```
**Description:** Updates Git’s reference to the default branch remotely.
**Expected Outcome:** No direct output, but future operations will reference `main`.

---

## 9. **Delete Remote `master` Branch (Optional)**
```sh
git push origin --delete master
```
**Description:** Removes the `master` branch from the remote repository if it is no longer needed.
**Expected Outcome:**
```
To https://github.com/neema-patience/Learning-SQL.git
 - [deleted] master
```

---

## 10. **Set `main` as Upstream Branch**
```sh
git branch --unset-upstream
git branch -u origin/main
```
**Description:** Ensures the local `main` branch is tracking the correct remote branch.
**Expected Outcome:**
```
Branch 'main' set up to track remote branch 'main' from 'origin'.
```

---

## 11. **Pull and Rebase Latest Changes from `main`**
```sh
git pull origin main --rebase
```
**Description:** Fetches and rebases changes from `origin/main` to the local branch.
**Expected Outcome:**
```
Current branch main is up to date.
```

---

## 12. **Push Local `main` to Remote**
```sh
git push origin main
```
**Description:** Pushes the local `main` branch to GitHub.
**Expected Outcome:**
```
Everything up-to-date
```

---

## 13. **Check Final Status**
```sh
git status
```
**Description:** Ensures everything is correctly set up.
**Expected Outcome:**
```
Your branch is up to date with 'origin/main'.
