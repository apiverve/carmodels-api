from setuptools import setup, find_packages

setup(
    name='apiverve_uscarmodels',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='US Car Models is a car make and model API for vehicles sold in the United States from 1984 to present. List models by make on any plan, while paid plans add year filters, trims, fuel economy (MPG), engine details, and transmission specifications.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/carmodels?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
