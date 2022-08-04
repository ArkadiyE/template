from pathlib import Path
from jinja2 import Environment, FileSystemLoader, select_autoescape
env = Environment(loader=FileSystemLoader("."), autoescape=select_autoescape())
def do_render(filename, **kwargs):
            env = Environment(loader=FileSystemLoader("."),autoescape=select_autoescape())
            path = Path(filename)
            path.exists()
            template = env.get_template(filename)
            return template.render(**kwargs)
            #stat = template.render(**kwargs)
            #rendered_template = Path('rendered_template')
            #rendered_template = notebook / stat.ipynb
            #rendered_template.mkdir()
