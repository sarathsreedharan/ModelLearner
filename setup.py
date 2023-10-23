#!/usr/bin/env python

from setuptools import setup, find_packages

setup(
    include_package_data=True,
    license="TBD",
    name="model_learner",
    packages=find_packages("src", exclude=["tests*"]),
    package_dir={"": "src"},
    setup_requires=["pytest-runner"],
    tests_require=["pytest"],
)

