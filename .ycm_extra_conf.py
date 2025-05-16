import os
import ycm_core

common_flags = [
    '-Wall',
    '-Wextra',
    '-Werror',
    '-I', '.',
    '-I', './include',
    '-I', '/usr/include',
    '-I', '/usr/local/include',
]

c_flags = [
    '-std=c11',
    '-x', 'c'
]

cpp_flags = [
    '-std=c++17',
    '-x', 'c++'
]

def DirectoryOfThisScript():
    return os.path.dirname(os.path.abspath(__file__))

# Detección del lenguaje por extensión
def IsCxxFile(filename):
    return filename.endswith(('.cpp', '.cxx', '.cc', '.hpp', '.hxx', '.hh'))

def Settings(**kwargs):
    filename = kwargs['filename']
    language_flags = cpp_flags if IsCxxFile(filename) else c_flags

    return {
        'flags': common_flags + language_flags,
        'include_paths_relative_to_dir': DirectoryOfThisScript(),
        'override_filename': filename
    }

