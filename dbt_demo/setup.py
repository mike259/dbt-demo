from setuptools import find_packages, setup

setup(
    name="dbt_demo",
    version="0.0.1",
    packages=find_packages(),
    package_data={
        "dbt_demo": [
            "dbt-project/**/*",
        ],
    },
    install_requires=[
        "dagster",
        "dagster-cloud",
        "dagster-dbt",
        "dbt-snowflake<1.9",
        "dbt-snowflake<1.9",
    ],
    extras_require={
        "dev": [
            "dagster-webserver",
        ]
    },
)
