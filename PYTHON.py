'''
TODO Description of what this script does
TODO Author
'''
 
import sys
import argparse
 
# TODO Add variable names for use when parsing args, e.g.:
# _SAMPLE_ARGVAR = 'sample_arg'
 
def _parse_args(argv):
    ''' Parses args into a dict of ARGVAR=value, or None if the argument wasn't supplied '''
    parser = argparse.ArgumentParser(formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    # TODO Add arguments here, e.g.:
    # parser.add_argument(_SAMPLE_ARGVAR, metavar="<sample>", help="This variable is a sample variable")
    return vars(parser.parse_args(argv))
 
def _print_error(msg):
    sys.stderr.write('Error: ' + msg + '\n')
 
def _validate_args(args):
    ''' Performs validation on the given args dict, returning a non-zero exit code if errors were found or None if all is well '''
    return None
 
def main(argv):
    args = _parse_args(map(str, argv))
    err = _validate_args(args)
    if err is not None:
        return err
 
    # TODO Your code here
 
    return 0
 
if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
