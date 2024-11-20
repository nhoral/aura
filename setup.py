from setuptools import setup, find_packages

setup(
    name="aura",
    version="0.1.0",
    packages=find_packages(),
    install_requires=[
        'pytest',
    ],
    entry_points={
        'console_scripts': [
            'aura=src.main:main',
        ],
    },
)