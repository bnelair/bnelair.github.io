#!/bin/bash

RDIR=$(pwd)

USE_BRANCH=""

repos=(
    "git@github.com:bnelair/brainmaze_eeg.git"
    "git@github.com:bnelair/brainmaze_utils.git"
    "git@github.com:bnelair/brainmaze_zmq.git"
    "git@github.com:bnelair/mef_tools.git"
)


DIR_TMP="$RDIR/tmp"
DIR_CLONE="${DIR_TMP}/clone"
DIR_CODE="${DIR_TMP}/codes"
DIR_RDM="${DIR_TMP}/rdm"

mkdir -p "$DIR_TMP"
mkdir -p "$DIR_CLONE"
mkdir -p "$DIR_CODE"
mkdir -p "$DIR_RDM"

for i in "${!repos[@]}"; do
    REPO_URL="${repos[$i]}"
    REPO_NAME=$(basename "$REPO_URL" .git)

    DIR_SRC_CODE=${DIR_CLONE}/$REPO_NAME/$REPO_NAME
    DIR_DST_CODE=${DIR_CODE}/$REPO_NAME

    RDM_SRC=${DIR_CLONE}/$REPO_NAME/README.rst
    RDM_DST=${DIR_RDM}/${REPO_NAME}.rst

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
            pip install . || { echo "Error: Failed to install $REPO_NAME"; exit 1; }
        fi

        # Checkout the main branch (or 'master', adjust if needed)
        # Check if 'main' branch exists, otherwise try 'master'
#        if git rev-parse --verify main >/dev/null 2>&1; then
#            git checkout $USE_BRANCH
#            echo "Checked out 'main' branch."
#        else
#            echo "Warning: Neither 'main' nor '$USE_BRANCH' branch found for $REPO_NAME. Skipping."
#            cd - > /dev/null # Navigate back to the previous directory
#            rm -rf "${DIR_CLONE}/$REPO_NAME"
#            continue # Skip to the next repository
#        fi

      if [ -z "$USE_BRANCH" ]; then
          if git rev-parse --verify main >/dev/null 2>&1; then
              git checkout main
              echo "Checked out 'main' branch."
          elif git rev-parse --verify master >/dev/null 2>&1; then
              git checkout master
              echo "Checked out 'master' branch."
          else
              echo "Warning: Neither 'main' nor 'master' branch found for $REPO_NAME. Skipping."
              cd - > /dev/null # Navigate back to the previous directory
              rm -rf "${DIR_CLONE}/$REPO_NAME"
              continue # Skip to the next repository
          fi
      else
          if git rev-parse --verify "$USE_BRANCH" >/dev/null 2>&1; then
              git checkout "$USE_BRANCH"
              echo "Checked out '$USE_BRANCH' branch."
          else
              echo "Warning: Branch '$USE_BRANCH' not found for $REPO_NAME. Skipping."
              cd - > /dev/null # Navigate back to the previous directory
              rm -rf "${DIR_CLONE}/$REPO_NAME"
              continue # Skip to the next repository
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


