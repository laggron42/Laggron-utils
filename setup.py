import setuptools

with open("README.md", "r") as fh:
    long_description = fh.read()

setuptools.setup(
    name="laggron-utils",
    version="1.0.0",
    author="retke (El Laggron)",
    author_email="laggron42@gmail.com",
    description="Utils for Laggron's Dumb Cogs",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/retke/Laggron-utils",
    packages=setuptools.find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: GNU General Public License v3 (GPLv3)",
        "Operating System :: OS Independent",
    ],
    python_requires=">=3.8.2",
)
