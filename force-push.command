#!/bin/bash
# Force-push the local main branch to origin.
# Replaces the diverged remote history with your clean local state.
# Safe to run because the only thing on remote is older dashboard versions.

cd "$(dirname "$0")"

echo "Repo: $(pwd)"
echo ""
echo "Local main:"
git log --oneline -3
echo ""
echo "Pushing to origin/main with --force-with-lease..."
git push --force-with-lease origin main
echo ""
echo "Done. Netlify will redeploy within 60 seconds."
echo ""
echo "Press any key to close this window."
read -n 1
