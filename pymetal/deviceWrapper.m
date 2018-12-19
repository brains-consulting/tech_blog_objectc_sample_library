#import <Foundation/NSString.h>
#import "Python.h"

extern NSString* getDeviceName();

PyObject* device_getDeviceName(PyObject* self)
{
    NSString* deviceName = getDeviceName();
    return Py_BuildValue("s", [deviceName UTF8String]);
}

static PyMethodDef deviceMethods[] = {
    {"getDeviceName", device_getDeviceName, METH_VARARGS},
    {NULL},
};

static struct PyModuleDef devicemodule =
{
    PyModuleDef_HEAD_INIT,
    "device",      /* name of module */
    "",            /* module documentation, may be NULL */
    -1,            /* size of per-interpreter state of the module, or -1 if the module keeps state in global variables. */
    deviceMethods
};

PyMODINIT_FUNC PyInit_device()
{
    return PyModule_Create(&devicemodule);
}
