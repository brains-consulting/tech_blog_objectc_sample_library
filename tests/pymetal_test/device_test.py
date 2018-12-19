from unittest import TestCase
from nose.tools import eq_

from pymetal.device import getDeviceName


class DeviceTestCase(TestCase):

    def test_device_name(self):
        name = getDeviceName()

        eq_('Intel(R) Iris(TM) Graphics 540', name)
