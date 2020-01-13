import string
import datetime

def getdate():
    return datetime.datetime.now().strftime('%B %e, %Y, %I:%M %p')

def header():
    return '''// <editor-fold defaultstate="collapsed" desc="Outputting '10HL' status to each available port Out:1 or 0 In:H or L">'''

def footer():
    return '''#undef _I_AM_FIRST_PORTDEF_
// </editor-fold>'''

def genansel(port):
    str = '''#ifdef PORT{port}
#ifndef _I_AM_FIRST_PORTDEF_
#define _I_AM_FIRST_PORTDEF_
#else
    serial_write(' ');
#endif
    serial_write('{port}');
    serial_write('=');
    report_gpio_to_string(TRIS{port}, PORT{port}, LAT{port});
#endif'''.replace('{port}', port)
    return str

print(header())

for ch in string.ascii_uppercase:
    print(genansel(ch))

print(footer())
