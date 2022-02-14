#!/bin/bash
function multiBranchCherryPicker () {
  # take the latest changes
  echo "------< Pulling the latest changes from repo >------"
  git pull

  COMMIT_TO_CHERRY_PICK='123abcxyz90'

  BRANCH_TYPE='bugfix'
  TICKET_NUMBER='12345'
  TICKET_DSCRIPTION='tikcet-description'
  BRANCH_NAME="${TICKET_NUMBER}-${TICKET_DSCRIPTION}"

  for env in 'QA2' 'DEV' 'QA'
  do
    BRANCH_TO_COMMIT="${BRANCH_TYPE}/${BRANCH_NAME}-${env}";
    echo " ${BLUE} ------< CHEKCING OUT BRANCH => ${BRANCH_TO_COMMIT} >------ ${NC}";
    git checkout "${BRANCH_TO_COMMIT}";
    echo " ${BLUE}------< Cherry-picking commit => ${COMMIT_TO_CHERRY_PICK}";
    git cherry-pick "${COMMIT_TO_CHERRY_PICK} >------";
    echo " ${BLUE}------< Pushing to remote repo => origin/${BRANCH_TO_COMMIT}>------ ${NC}";
    git push;
    echo " ${BLUE}------< DONE - READY to open Pull Request for => ${BRANCH_TO_COMMIT} >------ ${NC};"
  done
}

echo "${GREEN} --< LOADED >-- ${NC} Git: Multi branch picker"