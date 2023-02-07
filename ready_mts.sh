# !/bin/bash
# EXPORT_ENTITY=("node" "block_content" "menu_link_content" "file" "taxonomy_term")
# PROFILE_NAME="attrpfizercomcn_profile"

PROFILE_NAME=""  # Name of person to greet.
EXPORT_ENTITY="" # Number of greetings to give.
# DRUSH="./devops/scripts/drush.sh"
DRUSH="ddev drush"
usage() { # Function: Print a help message.
  echo "Usage: $0 [ -p profile name ] [ -e export entity ]" 1>&2
}
exit_abnormal() { # Function: Exit with error.
  usage
  exit 1
}
while getopts ":p:e:d" options; do # Loop: Get the next option;
  case "${options}" in             #
  p)                               # If the option is n,
    PROFILE_NAME=${OPTARG}         # set $NAME
    ;;
  e)                        # If the option is t,
    EXPORT_ENTITY=${OPTARG} # Set $TIMES to specified value.
    IFS=', ' read -r -a EXPORT_ENTITY <<<"$EXPORT_ENTITY"
    ;;
  d)                # If the option is n,
    DRUSH=${OPTARG} # set $NAME
    ;;
  :) # If expected argument omitted:
    echo "Error: -${OPTARG} requires an argument."
    exit_abnormal # Exit abnormally.
    ;;
  *)              # If unknown (any other) option:
    exit_abnormal # Exit abnormally.
    ;;
  esac
done

#Export site default content.
export_default_content() {

  for entity in ${EXPORT_ENTITY[@]}; do

    echo "Runing export $entity content."
    $DRUSH dcer $entity --folder=profiles/${PROFILE_NAME}/content
    echo $!
    if [[ $# -eq 0 ]]; then
      echo -e "\033[32mExport $entity content success.\033[0m"
    fi
  done
}
profiles/pfecuctomorrowjp_profile/content
# Generate database_snitize.yml file.
generate_database_snitize() {

  echo "Runing generate database.snitize.yml file."
  init_str="sanitize:\n  "${PROFILE_NAME}":"
  $DRUSH dbsa --list >dbsa_list.txt 2>&1
  while read line; do
    #Filter warning data.
    if [[ "$line" == *"[warning]"* ]]; then
      continue
    fi
    init_str=$init_str"\n    $line: false"
  done <dbsa_list.txt

  warning_content="$(cat dbsa_list.txt | grep "\[.*]" | tail -n 1)"
  warning_content=($warning_content)
  init_str=$init_str"\n    ${warning_content[-1]}: false"

  echo -e "$init_str" >docroot/app/profiles/${PROFILE_NAME}/database.sanitize.yml

  rm -rf dbsa_list.txt

  echo -e "\033[32mGenerate database.snitize.yml file success.\033[0m"
}

export_default_content
generate_database_snitize

exit 0
