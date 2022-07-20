def make_directories(base_dir):
    base_dir = Path(base_dir)
    base_dir.mkdir()
    ref = Path('ref')
    ref = Path.cwd() / base_dir / ref
    ref.mkdir()
    data = Path('data')
    data = Path.cwd() / base_dir / data
    data.mkdir()
    notebook = Path('notebook')
    notebook = Path.cwd() / base_dir / notebook
    notebook.mkdir()
    notebook.exists()
    results = Path('results')
    results = Path.cwd() / base_dir / results
    results.mkdir()
    results.exists()
    utils = Path('utils')
    utils = Path.cwd() / base_dir / utils
    utils.mkdir()
    utils.exists()
