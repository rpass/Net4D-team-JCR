'''
Rob Passmore - rpass - Aug 2015
RTTtest compares the RTT from a network node to every other node in a mesh
network while the node is operating using one of two protocols (OLSR or
BATMAN). The comparison is a set of simple statistics.
This uses the ping tool.
'''
# Resources:
# http://www.scotttorborg.com/python-packaging/command-line-scripts.html
# https://docs.python.org/2/howto/argparse.html
# http://magazine.redhat.com/2008/02/07/python-for-bash-scripters-a-well-kept-secret/

import os


def pingTest(dest_ip):
    '''
    Runs a ping test to the dest_ip. Returns the raw string of the
    result. (the stdout output from the command line).
    '''
    # http://stackoverflow.com/questions/2953462/pinging-servers-in-python
    raw_result = os.system("ping -c 1 " + dest_ip)
    print raw_result
    return 'Fin'


def processPingTest(raw_result):
    '''
    Process the result of a ping test to extract the rtt of each ping.
    '''
    return 'Fin'


def saveResults(results):
    '''
    Saves both the raw and the processed results to text files in the
    directory indicated.
    '''
    return 'Fin'


def prettyPrintResults(results):
    '''
    Pretty prints the result set into a table.
    '''
    return 'Fin'

if __name__ == '__main__':
    '''
    List of the IP addresses of the other nodes in the network.
    '''
    IP_LIST = ['8.8.8.8', 'www.facebook.com']

    '''
    List of lists of results of ping tests to different IPs.
    '''
    RESULTS = []

    for ip in IP_LIST:
        test_result_raw = pingTest(ip)
        test_result_processed = processPingTest(test_result_raw)
        RESULTS.append(test_result_processed)
