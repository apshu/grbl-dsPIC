import string
import datetime

def getdate():
    return datetime.datetime.now().strftime('%B %e, %Y, %I:%M %p')

def genansel(port):
    str = '''#ifdef PORT{port}
#ifdef ANSEL{port}
#define GPIO_confAnalog{port}(bitmask)           do { GPIO_confAnalog({port}, bitmask); } while (0)
#define GPIO_confDigital{port}(bitmask)          do { GPIO_confDigital({port}, bitmask); } while (0)
#else
#define GPIO_confAnalog{port}(bitmask)           do { } while (0)
#define GPIO_confDigital{port}(bitmask)          do { } while (0)
#endif
#endif'''.replace('{port}', port)
    return str

print(f'''
/* 
 * File:   anselhelper.h
 *
 * Created on {getdate()}
 */''')
print('''
#ifndef SERIAL_MAPPING_HELPER_H
#define	SERIAL_MAPPING_HELPER_H

#ifdef	__cplusplus
extern "C" {
#endif
''')
for ch in string.ascii_uppercase:
    print(genansel(ch))

print('''
#ifdef	__cplusplus
}
#endif

#endif	/* SERIAL_MAPPING_HELPER_H */

''')
