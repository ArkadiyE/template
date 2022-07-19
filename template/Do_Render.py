def do_render(filename, **kwargs):
            env = Environment(loader=FileSystemLoader("."),autoescape=select_autoescape())
            path = Path(filename)
            path.exists()
            template = env.get_template(filename)
            return template.render(**kwargs)
