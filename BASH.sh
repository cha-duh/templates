# TODO ---- Describe this script, it's intended behavior, assumptions and invariants and examples of use. ----
# TODO ---- Include links to JIRA tickets or wiki documentation. Also add known deficiencies or issues. -----
 
script_dir="$(dirname "$(readlink -f "${0}")" )"
 
# Print the usage message and exit.
function usage {
    echo ""
    echo "Usage: $(basename $0) [-h] -x myvar -f filepath_var" # TODO Change flag descriptions
    echo ""
    echo "Short description of this utility." # TODO Change
    echo ""
    # TODO --- Begin arg variable helptext  -------
    echo " -x  myvar  Description of variable and constraints. List default values if applicable."
    echo " -f  filepath_var  Description of variable and constraints. List default values if applicable."
    # TODO --- End arg variable helptext --------
    echo " -h Prints this help message"
       
    # Exit as error for nesting scripts
    exit 1
}
 
# Set default values.
# TODO Context and constraints description for this variable
myvar="default-value"
 
# Parse command line arguments to override defaults.
while getopts 'hxf:' flag; do # TODO Change getopts string. A colon after a flag letter means it accepts an argument.
    case "$flag" in
        h) usage ;;
        # TODO Replace the following cases with those for your flags' behaviors —
        x) myvar="$OPTARG" ;;
        f) filepath_var="$OPTARG" ;;
        # TODO — End sample cases
    esac
done
 
# Check existence and constraints of all variables.
# TODO This is a sample null check. You should ALWAYS null-check your variables!! ----
if [[ -z "${myvar}" ]] ; then # TODO
    echo "Error: myvar cannot be empty"
    usage
fi
# TODO ---- End sample null check
# TODO This is a sample filepath check. Not checking for empty filepaths can cause scary things like 'rm $FILEPATH/' ----
if [[ -z "${filepath_var}" ]] ; then
    echo "Error: filepath_var cannot be empty"
    usage
fi
if ! [[ -f "${filepath_var}" ]] ; then
    echo "Error: filepath_var ${filepath_var} does not exist"
    usage
fi
# TODO ----- End sample filepath check
