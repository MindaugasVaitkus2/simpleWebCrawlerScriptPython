# -*- coding: utf-8 -*-

from setuptools import setup, find_packages


with open('README.rst') as f:
    readme = f.read()

with open('LICENSE') as f:
    license = f.read()

setup(
    name='simpleWebCrawlerScriptPython',
    version='0.1.0',
    description='Simple crawler with python',
    long_description=readme,
    author='Marius Köppel',
    author_email='koeppel.ma@googlemail.com',
    url='https://github.com/makoeppel/simpleWebCrawlerScriptPython',
    license=license,
    packages=find_packages(exclude=('tests', 'docs'))
)