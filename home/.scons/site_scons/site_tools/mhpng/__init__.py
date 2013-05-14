import SCons.Builder



_png_builder = SCons.Builder.Builder(
                action = 'inkscape --without-gui --export-dpi=400 $SOURCE --export-png=$TARGET', 
                suffix='.png', 
                src_suffix='.svg')

def generate(env):
    """Add builder to the environment:"""
    env['BUILDERS']['PNG'] = _png_builder

def exists(env):
    return 1
