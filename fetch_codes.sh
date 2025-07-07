#!/bin/bash

RDIR=$(pwd)

repos=(
    "git@github.com:bnelair/brainmaze_utils.git|fmivalt/integration"
    "git@github.com:bnelair/brainmaze_zmq.git|fmivalt/integration"
    "git@github.com:bnelair/brainmaze_torch.git|fmivalt/integration"
    "git@github.com:bnelair/brainmaze_bci2000.git|main"
    "git@github.com:bnelair/brainmaze_eeg.git|fmivalt/integration"
    "git@github.com:bnelair/mef_tools.git|fmivalt/integration"
)

DIR_TMP="$RDIR/tmp"
DIR_CLONE="${DIR_TMP}/clone"make
DIR_CODE="${DIR_TMP}/codes"
DIR_RDM="${DIR_TMP}/rdm"

mkdir -p "$DIR_TMP"
mkdir -p "$DIR_CLONE"
mkdir -p "$DIR_CODE"
mkdir -p "$DIR_RDM"

for i in "${!repos[@]}"; do
    REPO_URL=$(echo "${repos[$i]}" | cut -d'|' -f1)
    USE_BRANCH=$(echo "${repos[$i]}" | cut -d'|' -f2)
    REPO_NAME=$(basename "$REPO_URL" .git)

    DIR_SRC_CODE=${DIR_CLONE}/$REPO_NAME/$REPO_NAME
    DIR_DST_CODE=${DIR_CODE}/$REPO_NAME

    RDM_SRC=${DIR_CLONE}/$REPO_NAME/README.md
    RDM_DST=${DIR_RDM}/${REPO_NAME}.md

    echo $REPO_URL
    echo $REPO_NAME

    echo $DIR_SRC_CODE
    echo $DIR_DST_CODE

    echo $RDM_SRC
    echo $RDM_DST

    echo "Processing repository: $REPO_NAME"

    if git clone "$REPO_URL" "$DIR_CLONE/$REPO_NAME"; then

        echo "Cloned $REPO_NAME successfully."

        # Navigate into the cloned repository directory
        cd  "$DIR_CLONE/$REPO_NAME" || { echo "Error: Could not navigate into $REPO_NAME"; exit 1; }

        # Install requirements if a requirements.txt file exists
        if [ -f "requirements.txt" ]; then
            echo "Installing requirements for $REPO_NAME."
            pip install -r requirements.txt || { echo "Error: Failed to install requirements for $REPO_NAME"; exit 1; }
#            pip uninstall $REPO_NAME -y
#            pip install . --force|| { echo "Error: Failed to install $REPO_NAME"; exit 1; }
        fi

      if [ -z "$USE_BRANCH" ]; then
          # This logic for the default branch is fine
          if git rev-parse --verify main >/dev/null 2>&1; then
              git checkout main
              echo "Checked out 'main' branch."
          elif git rev-parse --verify master >/dev/null 2>&1; then
              git checkout master
              echo "Checked out 'master' branch."
          else
              echo "Warning: Neither 'main' nor 'master' branch found for $REPO_NAME. Skipping."
              cd ..
              rm -rf "$REPO_NAME"
              continue
          fi
      else
          # CORRECTED LOGIC: Check for the remote branch first
          if git show-ref --quiet --verify "refs/remotes/origin/$USE_BRANCH"; then
              # If the remote branch exists, checkout will create the local one
              git checkout "$USE_BRANCH"
              echo "Checked out '$USE_BRANCH' branch."
          else
              echo "Warning: Branch '$USE_BRANCH' not found in remote repository $REPO_NAME. Skipping."
              cd ..
              rm -rf "$REPO_NAME"
              continue
          fi
      fi

        cp -R "$DIR_SRC_CODE" "$DIR_DST_CODE"
        echo "Copied $DIR_SRC_CODE to $DIR_DST_CODE."

        cp "$RDM_SRC" "$RDM_DST"
        echo "Copied $RDM_SRC to $RDM_DST."

        # Navigate back to the temporary clone directory's parent
        cd - > /dev/null

        # Clean up the temporary cloned repository
        echo "Cleaning up temporary clone of $REPO_NAME."
        rm -rf ${DIR_CLONE}/$REPO_NAME

    else
        echo "Error: Could not clone $REPO_URL. Skipping."
    fi

    echo "---"
done





