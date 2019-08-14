
/* 
 * File:   anselhelper.h
 *
 * Created on August 14, 2019, 06:40 PM
 */

#ifndef ANSELHELPER_H
#define	ANSELHELPER_H

#ifdef	__cplusplus
extern "C" {
#endif

#ifndef GPIO_confAnalog
#define GPIO_confAnalog(port, bitmask)            do { ANSEL##port) |=  (bitmask); } while (0)
#endif
#ifndef GPIO_confDigital
#define GPIO_confDigital(port, bitmask)           do { ANSEL##port) &=  ~(bitmask); } while (0)
#endif

#ifdef PORTA
#ifdef ANSELA
#define GPIO_confAnalogA(bitmask)           do { GPIO_confAnalog(A, bitmask); } while (0)
#define GPIO_confDigitalA(bitmask)          do { GPIO_confDigital(A, bitmask); } while (0)
#else
#define GPIO_confAnalogA(bitmask)           do { } while (0)
#define GPIO_confDigitalA(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTB
#ifdef ANSELB
#define GPIO_confAnalogB(bitmask)           do { GPIO_confAnalog(B, bitmask); } while (0)
#define GPIO_confDigitalB(bitmask)          do { GPIO_confDigital(B, bitmask); } while (0)
#else
#define GPIO_confAnalogB(bitmask)           do { } while (0)
#define GPIO_confDigitalB(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTC
#ifdef ANSELC
#define GPIO_confAnalogC(bitmask)           do { GPIO_confAnalog(C, bitmask); } while (0)
#define GPIO_confDigitalC(bitmask)          do { GPIO_confDigital(C, bitmask); } while (0)
#else
#define GPIO_confAnalogC(bitmask)           do { } while (0)
#define GPIO_confDigitalC(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTD
#ifdef ANSELD
#define GPIO_confAnalogD(bitmask)           do { GPIO_confAnalog(D, bitmask); } while (0)
#define GPIO_confDigitalD(bitmask)          do { GPIO_confDigital(D, bitmask); } while (0)
#else
#define GPIO_confAnalogD(bitmask)           do { } while (0)
#define GPIO_confDigitalD(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTE
#ifdef ANSELE
#define GPIO_confAnalogE(bitmask)           do { GPIO_confAnalog(E, bitmask); } while (0)
#define GPIO_confDigitalE(bitmask)          do { GPIO_confDigital(E, bitmask); } while (0)
#else
#define GPIO_confAnalogE(bitmask)           do { } while (0)
#define GPIO_confDigitalE(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTF
#ifdef ANSELF
#define GPIO_confAnalogF(bitmask)           do { GPIO_confAnalog(F, bitmask); } while (0)
#define GPIO_confDigitalF(bitmask)          do { GPIO_confDigital(F, bitmask); } while (0)
#else
#define GPIO_confAnalogF(bitmask)           do { } while (0)
#define GPIO_confDigitalF(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTG
#ifdef ANSELG
#define GPIO_confAnalogG(bitmask)           do { GPIO_confAnalog(G, bitmask); } while (0)
#define GPIO_confDigitalG(bitmask)          do { GPIO_confDigital(G, bitmask); } while (0)
#else
#define GPIO_confAnalogG(bitmask)           do { } while (0)
#define GPIO_confDigitalG(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTH
#ifdef ANSELH
#define GPIO_confAnalogH(bitmask)           do { GPIO_confAnalog(H, bitmask); } while (0)
#define GPIO_confDigitalH(bitmask)          do { GPIO_confDigital(H, bitmask); } while (0)
#else
#define GPIO_confAnalogH(bitmask)           do { } while (0)
#define GPIO_confDigitalH(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTI
#ifdef ANSELI
#define GPIO_confAnalogI(bitmask)           do { GPIO_confAnalog(I, bitmask); } while (0)
#define GPIO_confDigitalI(bitmask)          do { GPIO_confDigital(I, bitmask); } while (0)
#else
#define GPIO_confAnalogI(bitmask)           do { } while (0)
#define GPIO_confDigitalI(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTJ
#ifdef ANSELJ
#define GPIO_confAnalogJ(bitmask)           do { GPIO_confAnalog(J, bitmask); } while (0)
#define GPIO_confDigitalJ(bitmask)          do { GPIO_confDigital(J, bitmask); } while (0)
#else
#define GPIO_confAnalogJ(bitmask)           do { } while (0)
#define GPIO_confDigitalJ(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTK
#ifdef ANSELK
#define GPIO_confAnalogK(bitmask)           do { GPIO_confAnalog(K, bitmask); } while (0)
#define GPIO_confDigitalK(bitmask)          do { GPIO_confDigital(K, bitmask); } while (0)
#else
#define GPIO_confAnalogK(bitmask)           do { } while (0)
#define GPIO_confDigitalK(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTL
#ifdef ANSELL
#define GPIO_confAnalogL(bitmask)           do { GPIO_confAnalog(L, bitmask); } while (0)
#define GPIO_confDigitalL(bitmask)          do { GPIO_confDigital(L, bitmask); } while (0)
#else
#define GPIO_confAnalogL(bitmask)           do { } while (0)
#define GPIO_confDigitalL(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTM
#ifdef ANSELM
#define GPIO_confAnalogM(bitmask)           do { GPIO_confAnalog(M, bitmask); } while (0)
#define GPIO_confDigitalM(bitmask)          do { GPIO_confDigital(M, bitmask); } while (0)
#else
#define GPIO_confAnalogM(bitmask)           do { } while (0)
#define GPIO_confDigitalM(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTN
#ifdef ANSELN
#define GPIO_confAnalogN(bitmask)           do { GPIO_confAnalog(N, bitmask); } while (0)
#define GPIO_confDigitalN(bitmask)          do { GPIO_confDigital(N, bitmask); } while (0)
#else
#define GPIO_confAnalogN(bitmask)           do { } while (0)
#define GPIO_confDigitalN(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTO
#ifdef ANSELO
#define GPIO_confAnalogO(bitmask)           do { GPIO_confAnalog(O, bitmask); } while (0)
#define GPIO_confDigitalO(bitmask)          do { GPIO_confDigital(O, bitmask); } while (0)
#else
#define GPIO_confAnalogO(bitmask)           do { } while (0)
#define GPIO_confDigitalO(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTP
#ifdef ANSELP
#define GPIO_confAnalogP(bitmask)           do { GPIO_confAnalog(P, bitmask); } while (0)
#define GPIO_confDigitalP(bitmask)          do { GPIO_confDigital(P, bitmask); } while (0)
#else
#define GPIO_confAnalogP(bitmask)           do { } while (0)
#define GPIO_confDigitalP(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTQ
#ifdef ANSELQ
#define GPIO_confAnalogQ(bitmask)           do { GPIO_confAnalog(Q, bitmask); } while (0)
#define GPIO_confDigitalQ(bitmask)          do { GPIO_confDigital(Q, bitmask); } while (0)
#else
#define GPIO_confAnalogQ(bitmask)           do { } while (0)
#define GPIO_confDigitalQ(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTR
#ifdef ANSELR
#define GPIO_confAnalogR(bitmask)           do { GPIO_confAnalog(R, bitmask); } while (0)
#define GPIO_confDigitalR(bitmask)          do { GPIO_confDigital(R, bitmask); } while (0)
#else
#define GPIO_confAnalogR(bitmask)           do { } while (0)
#define GPIO_confDigitalR(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTS
#ifdef ANSELS
#define GPIO_confAnalogS(bitmask)           do { GPIO_confAnalog(S, bitmask); } while (0)
#define GPIO_confDigitalS(bitmask)          do { GPIO_confDigital(S, bitmask); } while (0)
#else
#define GPIO_confAnalogS(bitmask)           do { } while (0)
#define GPIO_confDigitalS(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTT
#ifdef ANSELT
#define GPIO_confAnalogT(bitmask)           do { GPIO_confAnalog(T, bitmask); } while (0)
#define GPIO_confDigitalT(bitmask)          do { GPIO_confDigital(T, bitmask); } while (0)
#else
#define GPIO_confAnalogT(bitmask)           do { } while (0)
#define GPIO_confDigitalT(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTU
#ifdef ANSELU
#define GPIO_confAnalogU(bitmask)           do { GPIO_confAnalog(U, bitmask); } while (0)
#define GPIO_confDigitalU(bitmask)          do { GPIO_confDigital(U, bitmask); } while (0)
#else
#define GPIO_confAnalogU(bitmask)           do { } while (0)
#define GPIO_confDigitalU(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTV
#ifdef ANSELV
#define GPIO_confAnalogV(bitmask)           do { GPIO_confAnalog(V, bitmask); } while (0)
#define GPIO_confDigitalV(bitmask)          do { GPIO_confDigital(V, bitmask); } while (0)
#else
#define GPIO_confAnalogV(bitmask)           do { } while (0)
#define GPIO_confDigitalV(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTW
#ifdef ANSELW
#define GPIO_confAnalogW(bitmask)           do { GPIO_confAnalog(W, bitmask); } while (0)
#define GPIO_confDigitalW(bitmask)          do { GPIO_confDigital(W, bitmask); } while (0)
#else
#define GPIO_confAnalogW(bitmask)           do { } while (0)
#define GPIO_confDigitalW(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTX
#ifdef ANSELX
#define GPIO_confAnalogX(bitmask)           do { GPIO_confAnalog(X, bitmask); } while (0)
#define GPIO_confDigitalX(bitmask)          do { GPIO_confDigital(X, bitmask); } while (0)
#else
#define GPIO_confAnalogX(bitmask)           do { } while (0)
#define GPIO_confDigitalX(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTY
#ifdef ANSELY
#define GPIO_confAnalogY(bitmask)           do { GPIO_confAnalog(Y, bitmask); } while (0)
#define GPIO_confDigitalY(bitmask)          do { GPIO_confDigital(Y, bitmask); } while (0)
#else
#define GPIO_confAnalogY(bitmask)           do { } while (0)
#define GPIO_confDigitalY(bitmask)          do { } while (0)
#endif
#endif
#ifdef PORTZ
#ifdef ANSELZ
#define GPIO_confAnalogZ(bitmask)           do { GPIO_confAnalog(Z, bitmask); } while (0)
#define GPIO_confDigitalZ(bitmask)          do { GPIO_confDigital(Z, bitmask); } while (0)
#else
#define GPIO_confAnalogZ(bitmask)           do { } while (0)
#define GPIO_confDigitalZ(bitmask)          do { } while (0)
#endif
#endif

#ifdef	__cplusplus
}
#endif

#endif	/* ANSELHELPER_H */


