from pathlib import Path
from jinja2 import Environment, FileSystemLoader, select_autoescape
def do_render(filename, **kwargs):
            env = Environment(loader=FileSystemLoader("."),autoescape=select_autoescape())
            template = env.get_template(filename)
            path = Path(filename)
            path.with_suffix('.ipynb')
            with open(path, 'wt') as output_file:
                output_file.write(template.render(**kwargs))

            #return template.render(**kwargs)
            #stat = template.render(**kwargs)
            #rendered_template = Path('rendered_template')
            #rendered_template = notebook / stat.ipynb
            #rendered_template.mkdir()
