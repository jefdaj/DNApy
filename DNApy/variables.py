import settings
import font

# TODO just replace all of these in settings.py?
# TODO replace all the '+'s with os.path.join

# TODO what?? probably need to fix these for immutable filesystem
files={}
files['icon']="icon" # TODO is this used?
files['font']="font"
files['size']=settings.default_dir+"size" 

extensions={}
extensions['as']=["as"]
extensions['python']=["py", "python", "pyc"]
extensions['php']=["php", "php3", "php4"]
extensions['html']=["htm", "html"]
extensions['asp']=["asp"]
extensions['c++']=["c", "cpp"]
extensions['sql']=["sql", "sq"]

# this doesn't appear to be used anywhere
# dir_separator="/"
