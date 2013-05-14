


import os
import subprocess
import ast
import re
import sys
import cStringIO

import SCons.Builder
import SCons.Scanner


from mreorg.utils import switch_into_working_directory
from mreorg.doctools import PyFileScons


#subprocess.check_call(['python', fname], stderr=subprocess.STDOUT, stdout=fnull, env=env['PYRUN_ENV'])
#c = cStringIO.StringIO()
        #with open(os.devnull, "w") as fnull:
            #fnull = sys.stdout

def my_py_builder(target, source, env):
    assert len(source) == 1, 'More than one file given'
    abs_path = source[0].abspath
    abs_dir,fname = os.path.split(abs_path)

    # Delete all expected outputfiles first:
    for t in target:
        if os.path.exists(t.abspath):
            os.unlink(t.abspath)

    # Create the environmental variables:
    with switch_into_working_directory(abs_dir):
        
        try:
            output = subprocess.check_output(['python', fname], stderr=subprocess.STDOUT, env=env['PYRUN_ENV'])
        except subprocess.CalledProcessError, e:
            print 
            print '-------- Error occured:-----------'
            print '-------- Running: %s--------' % fname
            print '----------------------------------'
            print e.output
            print
            print '----------END ERROR------------------------'
            raise
            

        if env['PYRUN_VERBOSE']:
            print output

    # Check all output files exist:
    for t in target:
        assert os.path.exists( t.abspath ),'File Missing! %s expected to produce %s' % ( fname, t.abspath)

    return None


def my_py_emitter( target, source, env ):
    assert len(source) == 1
    pyfile = PyFileScons( str(source[0]) )
    return pyfile.get_output_files(), source

def my_py_scanner(node, env, path):
    pyfile = PyFileScons( str(node) )

    # Implicit dependany on the config file:

    return pyfile.get_dependancy_files() + ['/home/michael/hw_to_come/libs/mreorg/mplconfigs/thesis1.conf']
    



def generate(env):
    my_action = SCons.Action.Action(my_py_builder, '$PYRUN_COMSTR')
    env.Append(SCANNERS = SCons.Scanner.Scanner(function = my_py_scanner, skeys = ['.py']) )
    env['BUILDERS']['PyBuilder'] =SCons.Builder.Builder(
        action = my_action, 
        emitter=my_py_emitter)
    
    env.SetDefault(
            PYRUN_ENV={'MREORG_BATCHRUN':'True'},
            PYRUN_COMSTR = 'Running Python script: $SOURCES',
            PYRUN_VERBOSE = False
        )
    

def exists(env):
    return 1
