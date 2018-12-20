"""Setup file."""
import os
from setuptools import setup, Extension


os.environ['LDFLAGS'] = '-framework Foundation'

DEVICE_MODULE = Extension(
    'pymetal.device',
    sources=[
        'pymetal/src/device.m',
        'pymetal/deviceWrapper.m'
    ]
)

setup(
    name='pymetal',
    author='Yukinori Manome',
    package_dir={
        'pymetal': 'pymetal',
    },
    packages=[
        'pymetal',
    ],
    ext_modules=[DEVICE_MODULE],
    tests_require=['nose'],
    test_suite='nose.collector',
    platforms=['Mac OSX']
)
