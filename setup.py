from setuptools import setup

setup(
    name = "DNApy",
    packages = [ 'DNApy' ],
    entry_points = { 'gui_scripts': ['DNApy = DNApy:main'] }
)
