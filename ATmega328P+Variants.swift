import HAL

/// Namespace for the ATmega328P chip's variants.
public enum Variants {
}

// MARK: ATmega328P-AU

extension Variants {
  /// ATmega328P-AU: TQFP32
  public enum Au: Variant {
  }
}

extension Variants.Au {
  /// The chip that the variant is for.
  public typealias Chip = ATmega328P

  /// The human-readable order code.
  @inlinable @inline(__always) public static var orderCode: StaticString { "ATmega328P-AU" }

  /// The package name.
  @inlinable @inline(__always) public static var package: StaticString { "TQFP32" }

  /// The minimum operating temperature, in degrees Celsius.
  @inlinable @inline(__always) public static var tempMin: Int { -40 }

  /// The maximum operating temperature, in degrees Celsius.
  @inlinable @inline(__always) public static var tempMax: Int { 85 }

  /// The maximum operating frequency, in Hz.
  @inlinable @inline(__always) public static var speedMax: Frequency { 20000000 }

  /// The minimum operating voltage, in volts.
  @inlinable @inline(__always) public static var vccMin: Float { 1.8 }

  /// The maximum operating voltage, in volts.
  @inlinable @inline(__always) public static var vccMax: Float { 5.5 }

  /// The pinout name.
  @inlinable @inline(__always) public static var pinout: StaticString? { "TQFP32" }

  /// Pin 1: PD3
  public typealias Pin1 = ATmega328P.Pads.Pd3

  /// Pin 2: PD4
  public typealias Pin2 = ATmega328P.Pads.Pd4

  /// Pin 3: GND
  public typealias Pin3 = ATmega328P.Pads.Gnd

  /// Pin 4: VCC
  public typealias Pin4 = ATmega328P.Pads.Vcc

  /// Pin 5: GND
  public typealias Pin5 = ATmega328P.Pads.Gnd

  /// Pin 6: VCC
  public typealias Pin6 = ATmega328P.Pads.Vcc

  /// Pin 7: PB6
  public typealias Pin7 = ATmega328P.Pads.Pb6

  /// Pin 8: PB7
  public typealias Pin8 = ATmega328P.Pads.Pb7

  /// Pin 9: PD5
  public typealias Pin9 = ATmega328P.Pads.Pd5

  /// Pin 10: PD6
  public typealias Pin10 = ATmega328P.Pads.Pd6

  /// Pin 11: PD7
  public typealias Pin11 = ATmega328P.Pads.Pd7

  /// Pin 12: PB0
  public typealias Pin12 = ATmega328P.Pads.Pb0

  /// Pin 13: PB1
  public typealias Pin13 = ATmega328P.Pads.Pb1

  /// Pin 14: PB2
  public typealias Pin14 = ATmega328P.Pads.Pb2

  /// Pin 15: PB3
  public typealias Pin15 = ATmega328P.Pads.Pb3

  /// Pin 16: PB4
  public typealias Pin16 = ATmega328P.Pads.Pb4

  /// Pin 17: PB5
  public typealias Pin17 = ATmega328P.Pads.Pb5

  /// Pin 18: AVCC
  public typealias Pin18 = ATmega328P.Pads.Avcc

  /// Pin 19: ADC6
  public typealias Pin19 = ATmega328P.Pads.Adc6

  /// Pin 20: AREF
  public typealias Pin20 = ATmega328P.Pads.Aref

  /// Pin 21: GND
  public typealias Pin21 = ATmega328P.Pads.Gnd

  /// Pin 22: ADC7
  public typealias Pin22 = ATmega328P.Pads.Adc7

  /// Pin 23: PC0
  public typealias Pin23 = ATmega328P.Pads.Pc0

  /// Pin 24: PC1
  public typealias Pin24 = ATmega328P.Pads.Pc1

  /// Pin 25: PC2
  public typealias Pin25 = ATmega328P.Pads.Pc2

  /// Pin 26: PC3
  public typealias Pin26 = ATmega328P.Pads.Pc3

  /// Pin 27: PC4
  public typealias Pin27 = ATmega328P.Pads.Pc4

  /// Pin 28: PC5
  public typealias Pin28 = ATmega328P.Pads.Pc5

  /// Pin 29: PC6
  public typealias Pin29 = ATmega328P.Pads.Pc6

  /// Pin 30: PD0
  public typealias Pin30 = ATmega328P.Pads.Pd0

  /// Pin 31: PD1
  public typealias Pin31 = ATmega328P.Pads.Pd1

  /// Pin 32: PD2
  public typealias Pin32 = ATmega328P.Pads.Pd2
}

// MARK: ATmega328P-MMH

extension Variants {
  /// ATmega328P-MMH: QFN28
  public enum Mmh: Variant {
  }
}

extension Variants.Mmh {
  /// The chip that the variant is for.
  public typealias Chip = ATmega328P

  /// The human-readable order code.
  @inlinable @inline(__always) public static var orderCode: StaticString { "ATmega328P-MMH" }

  /// The package name.
  @inlinable @inline(__always) public static var package: StaticString { "QFN28" }

  /// The minimum operating temperature, in degrees Celsius.
  @inlinable @inline(__always) public static var tempMin: Int { -40 }

  /// The maximum operating temperature, in degrees Celsius.
  @inlinable @inline(__always) public static var tempMax: Int { 85 }

  /// The maximum operating frequency, in Hz.
  @inlinable @inline(__always) public static var speedMax: Frequency { 20000000 }

  /// The minimum operating voltage, in volts.
  @inlinable @inline(__always) public static var vccMin: Float { 1.8 }

  /// The maximum operating voltage, in volts.
  @inlinable @inline(__always) public static var vccMax: Float { 5.5 }

  /// The pinout name.
  @inlinable @inline(__always) public static var pinout: StaticString? { "QFN28" }

  /// Pin 1: PD3
  public typealias Pin1 = ATmega328P.Pads.Pd3

  /// Pin 2: PD4
  public typealias Pin2 = ATmega328P.Pads.Pd4

  /// Pin 3: VCC
  public typealias Pin3 = ATmega328P.Pads.Vcc

  /// Pin 4: GND
  public typealias Pin4 = ATmega328P.Pads.Gnd

  /// Pin 5: PB6
  public typealias Pin5 = ATmega328P.Pads.Pb6

  /// Pin 6: PB7
  public typealias Pin6 = ATmega328P.Pads.Pb7

  /// Pin 7: PD5
  public typealias Pin7 = ATmega328P.Pads.Pd5

  /// Pin 8: PD6
  public typealias Pin8 = ATmega328P.Pads.Pd6

  /// Pin 9: PD7
  public typealias Pin9 = ATmega328P.Pads.Pd7

  /// Pin 10: PB0
  public typealias Pin10 = ATmega328P.Pads.Pb0

  /// Pin 11: PB1
  public typealias Pin11 = ATmega328P.Pads.Pb1

  /// Pin 12: PB2
  public typealias Pin12 = ATmega328P.Pads.Pb2

  /// Pin 13: PB3
  public typealias Pin13 = ATmega328P.Pads.Pb3

  /// Pin 14: PB4
  public typealias Pin14 = ATmega328P.Pads.Pb4

  /// Pin 15: PB5
  public typealias Pin15 = ATmega328P.Pads.Pb5

  /// Pin 16: AVCC
  public typealias Pin16 = ATmega328P.Pads.Avcc

  /// Pin 17: AREF
  public typealias Pin17 = ATmega328P.Pads.Aref

  /// Pin 18: GND
  public typealias Pin18 = ATmega328P.Pads.Gnd

  /// Pin 19: PC0
  public typealias Pin19 = ATmega328P.Pads.Pc0

  /// Pin 20: PC1
  public typealias Pin20 = ATmega328P.Pads.Pc1

  /// Pin 21: PC2
  public typealias Pin21 = ATmega328P.Pads.Pc2

  /// Pin 22: PC3
  public typealias Pin22 = ATmega328P.Pads.Pc3

  /// Pin 23: PC4
  public typealias Pin23 = ATmega328P.Pads.Pc4

  /// Pin 24: PC5
  public typealias Pin24 = ATmega328P.Pads.Pc5

  /// Pin 25: PC6
  public typealias Pin25 = ATmega328P.Pads.Pc6

  /// Pin 26: PD0
  public typealias Pin26 = ATmega328P.Pads.Pd0

  /// Pin 27: PD1
  public typealias Pin27 = ATmega328P.Pads.Pd1

  /// Pin 28: PD2
  public typealias Pin28 = ATmega328P.Pads.Pd2
}

// MARK: ATmega328P-MU

extension Variants {
  /// ATmega328P-MU: QFN32
  public enum Mu: Variant {
  }
}

extension Variants.Mu {
  /// The chip that the variant is for.
  public typealias Chip = ATmega328P

  /// The human-readable order code.
  @inlinable @inline(__always) public static var orderCode: StaticString { "ATmega328P-MU" }

  /// The package name.
  @inlinable @inline(__always) public static var package: StaticString { "QFN32" }

  /// The minimum operating temperature, in degrees Celsius.
  @inlinable @inline(__always) public static var tempMin: Int { -40 }

  /// The maximum operating temperature, in degrees Celsius.
  @inlinable @inline(__always) public static var tempMax: Int { 85 }

  /// The maximum operating frequency, in Hz.
  @inlinable @inline(__always) public static var speedMax: Frequency { 20000000 }

  /// The minimum operating voltage, in volts.
  @inlinable @inline(__always) public static var vccMin: Float { 1.8 }

  /// The maximum operating voltage, in volts.
  @inlinable @inline(__always) public static var vccMax: Float { 5.5 }

  /// The pinout name.
  @inlinable @inline(__always) public static var pinout: StaticString? { "QFN32" }

  /// Pin 1: PD3
  public typealias Pin1 = ATmega328P.Pads.Pd3

  /// Pin 2: PD4
  public typealias Pin2 = ATmega328P.Pads.Pd4

  /// Pin 3: GND
  public typealias Pin3 = ATmega328P.Pads.Gnd

  /// Pin 4: VCC
  public typealias Pin4 = ATmega328P.Pads.Vcc

  /// Pin 5: GND
  public typealias Pin5 = ATmega328P.Pads.Gnd

  /// Pin 6: VCC
  public typealias Pin6 = ATmega328P.Pads.Vcc

  /// Pin 7: PB6
  public typealias Pin7 = ATmega328P.Pads.Pb6

  /// Pin 8: PB7
  public typealias Pin8 = ATmega328P.Pads.Pb7

  /// Pin 9: PD5
  public typealias Pin9 = ATmega328P.Pads.Pd5

  /// Pin 10: PD6
  public typealias Pin10 = ATmega328P.Pads.Pd6

  /// Pin 11: PD7
  public typealias Pin11 = ATmega328P.Pads.Pd7

  /// Pin 12: PB0
  public typealias Pin12 = ATmega328P.Pads.Pb0

  /// Pin 13: PB1
  public typealias Pin13 = ATmega328P.Pads.Pb1

  /// Pin 14: PB2
  public typealias Pin14 = ATmega328P.Pads.Pb2

  /// Pin 15: PB3
  public typealias Pin15 = ATmega328P.Pads.Pb3

  /// Pin 16: PB4
  public typealias Pin16 = ATmega328P.Pads.Pb4

  /// Pin 17: PB5
  public typealias Pin17 = ATmega328P.Pads.Pb5

  /// Pin 18: AVCC
  public typealias Pin18 = ATmega328P.Pads.Avcc

  /// Pin 19: ADC6
  public typealias Pin19 = ATmega328P.Pads.Adc6

  /// Pin 20: AREF
  public typealias Pin20 = ATmega328P.Pads.Aref

  /// Pin 21: GND
  public typealias Pin21 = ATmega328P.Pads.Gnd

  /// Pin 22: ADC7
  public typealias Pin22 = ATmega328P.Pads.Adc7

  /// Pin 23: PC0
  public typealias Pin23 = ATmega328P.Pads.Pc0

  /// Pin 24: PC1
  public typealias Pin24 = ATmega328P.Pads.Pc1

  /// Pin 25: PC2
  public typealias Pin25 = ATmega328P.Pads.Pc2

  /// Pin 26: PC3
  public typealias Pin26 = ATmega328P.Pads.Pc3

  /// Pin 27: PC4
  public typealias Pin27 = ATmega328P.Pads.Pc4

  /// Pin 28: PC5
  public typealias Pin28 = ATmega328P.Pads.Pc5

  /// Pin 29: PC6
  public typealias Pin29 = ATmega328P.Pads.Pc6

  /// Pin 30: PD0
  public typealias Pin30 = ATmega328P.Pads.Pd0

  /// Pin 31: PD1
  public typealias Pin31 = ATmega328P.Pads.Pd1

  /// Pin 32: PD2
  public typealias Pin32 = ATmega328P.Pads.Pd2
}

// MARK: ATmega328P-PU

extension Variants {
  /// ATmega328P-PU: PDIP28
  public enum Pu: Variant {
  }
}

extension Variants.Pu {
  /// The chip that the variant is for.
  public typealias Chip = ATmega328P

  /// The human-readable order code.
  @inlinable @inline(__always) public static var orderCode: StaticString { "ATmega328P-PU" }

  /// The package name.
  @inlinable @inline(__always) public static var package: StaticString { "PDIP28" }

  /// The minimum operating temperature, in degrees Celsius.
  @inlinable @inline(__always) public static var tempMin: Int { -40 }

  /// The maximum operating temperature, in degrees Celsius.
  @inlinable @inline(__always) public static var tempMax: Int { 85 }

  /// The maximum operating frequency, in Hz.
  @inlinable @inline(__always) public static var speedMax: Frequency { 20000000 }

  /// The minimum operating voltage, in volts.
  @inlinable @inline(__always) public static var vccMin: Float { 1.8 }

  /// The maximum operating voltage, in volts.
  @inlinable @inline(__always) public static var vccMax: Float { 5.5 }

  /// The pinout name.
  @inlinable @inline(__always) public static var pinout: StaticString? { "PDIP28" }

  /// Pin 1: PC6
  public typealias Pin1 = ATmega328P.Pads.Pc6

  /// Pin 2: PD0
  public typealias Pin2 = ATmega328P.Pads.Pd0

  /// Pin 3: PD1
  public typealias Pin3 = ATmega328P.Pads.Pd1

  /// Pin 4: PD2
  public typealias Pin4 = ATmega328P.Pads.Pd2

  /// Pin 5: PD3
  public typealias Pin5 = ATmega328P.Pads.Pd3

  /// Pin 6: PD4
  public typealias Pin6 = ATmega328P.Pads.Pd4

  /// Pin 7: VCC
  public typealias Pin7 = ATmega328P.Pads.Vcc

  /// Pin 8: GND
  public typealias Pin8 = ATmega328P.Pads.Gnd

  /// Pin 9: PB6
  public typealias Pin9 = ATmega328P.Pads.Pb6

  /// Pin 10: PB7
  public typealias Pin10 = ATmega328P.Pads.Pb7

  /// Pin 11: PD5
  public typealias Pin11 = ATmega328P.Pads.Pd5

  /// Pin 12: PD6
  public typealias Pin12 = ATmega328P.Pads.Pd6

  /// Pin 13: PD7
  public typealias Pin13 = ATmega328P.Pads.Pd7

  /// Pin 14: PB0
  public typealias Pin14 = ATmega328P.Pads.Pb0

  /// Pin 15: PB1
  public typealias Pin15 = ATmega328P.Pads.Pb1

  /// Pin 16: PB2
  public typealias Pin16 = ATmega328P.Pads.Pb2

  /// Pin 17: PB3
  public typealias Pin17 = ATmega328P.Pads.Pb3

  /// Pin 18: PB4
  public typealias Pin18 = ATmega328P.Pads.Pb4

  /// Pin 19: PB5
  public typealias Pin19 = ATmega328P.Pads.Pb5

  /// Pin 20: AVCC
  public typealias Pin20 = ATmega328P.Pads.Avcc

  /// Pin 21: AREF
  public typealias Pin21 = ATmega328P.Pads.Aref

  /// Pin 22: GND
  public typealias Pin22 = ATmega328P.Pads.Gnd

  /// Pin 23: PC0
  public typealias Pin23 = ATmega328P.Pads.Pc0

  /// Pin 24: PC1
  public typealias Pin24 = ATmega328P.Pads.Pc1

  /// Pin 25: PC2
  public typealias Pin25 = ATmega328P.Pads.Pc2

  /// Pin 26: PC3
  public typealias Pin26 = ATmega328P.Pads.Pc3

  /// Pin 27: PC4
  public typealias Pin27 = ATmega328P.Pads.Pc4

  /// Pin 28: PC5
  public typealias Pin28 = ATmega328P.Pads.Pc5
}

// MARK: ATmega328P-AN

extension Variants {
  /// ATmega328P-AN: TQFP32
  public enum An: Variant {
  }
}

extension Variants.An {
  /// The chip that the variant is for.
  public typealias Chip = ATmega328P

  /// The human-readable order code.
  @inlinable @inline(__always) public static var orderCode: StaticString { "ATmega328P-AN" }

  /// The package name.
  @inlinable @inline(__always) public static var package: StaticString { "TQFP32" }

  /// The minimum operating temperature, in degrees Celsius.
  @inlinable @inline(__always) public static var tempMin: Int { -40 }

  /// The maximum operating temperature, in degrees Celsius.
  @inlinable @inline(__always) public static var tempMax: Int { 105 }

  /// The maximum operating frequency, in Hz.
  @inlinable @inline(__always) public static var speedMax: Frequency { 20000000 }

  /// The minimum operating voltage, in volts.
  @inlinable @inline(__always) public static var vccMin: Float { 1.8 }

  /// The maximum operating voltage, in volts.
  @inlinable @inline(__always) public static var vccMax: Float { 5.5 }

  /// The pinout name.
  @inlinable @inline(__always) public static var pinout: StaticString? { "TQFP32" }

  /// Pin 1: PD3
  public typealias Pin1 = ATmega328P.Pads.Pd3

  /// Pin 2: PD4
  public typealias Pin2 = ATmega328P.Pads.Pd4

  /// Pin 3: GND
  public typealias Pin3 = ATmega328P.Pads.Gnd

  /// Pin 4: VCC
  public typealias Pin4 = ATmega328P.Pads.Vcc

  /// Pin 5: GND
  public typealias Pin5 = ATmega328P.Pads.Gnd

  /// Pin 6: VCC
  public typealias Pin6 = ATmega328P.Pads.Vcc

  /// Pin 7: PB6
  public typealias Pin7 = ATmega328P.Pads.Pb6

  /// Pin 8: PB7
  public typealias Pin8 = ATmega328P.Pads.Pb7

  /// Pin 9: PD5
  public typealias Pin9 = ATmega328P.Pads.Pd5

  /// Pin 10: PD6
  public typealias Pin10 = ATmega328P.Pads.Pd6

  /// Pin 11: PD7
  public typealias Pin11 = ATmega328P.Pads.Pd7

  /// Pin 12: PB0
  public typealias Pin12 = ATmega328P.Pads.Pb0

  /// Pin 13: PB1
  public typealias Pin13 = ATmega328P.Pads.Pb1

  /// Pin 14: PB2
  public typealias Pin14 = ATmega328P.Pads.Pb2

  /// Pin 15: PB3
  public typealias Pin15 = ATmega328P.Pads.Pb3

  /// Pin 16: PB4
  public typealias Pin16 = ATmega328P.Pads.Pb4

  /// Pin 17: PB5
  public typealias Pin17 = ATmega328P.Pads.Pb5

  /// Pin 18: AVCC
  public typealias Pin18 = ATmega328P.Pads.Avcc

  /// Pin 19: ADC6
  public typealias Pin19 = ATmega328P.Pads.Adc6

  /// Pin 20: AREF
  public typealias Pin20 = ATmega328P.Pads.Aref

  /// Pin 21: GND
  public typealias Pin21 = ATmega328P.Pads.Gnd

  /// Pin 22: ADC7
  public typealias Pin22 = ATmega328P.Pads.Adc7

  /// Pin 23: PC0
  public typealias Pin23 = ATmega328P.Pads.Pc0

  /// Pin 24: PC1
  public typealias Pin24 = ATmega328P.Pads.Pc1

  /// Pin 25: PC2
  public typealias Pin25 = ATmega328P.Pads.Pc2

  /// Pin 26: PC3
  public typealias Pin26 = ATmega328P.Pads.Pc3

  /// Pin 27: PC4
  public typealias Pin27 = ATmega328P.Pads.Pc4

  /// Pin 28: PC5
  public typealias Pin28 = ATmega328P.Pads.Pc5

  /// Pin 29: PC6
  public typealias Pin29 = ATmega328P.Pads.Pc6

  /// Pin 30: PD0
  public typealias Pin30 = ATmega328P.Pads.Pd0

  /// Pin 31: PD1
  public typealias Pin31 = ATmega328P.Pads.Pd1

  /// Pin 32: PD2
  public typealias Pin32 = ATmega328P.Pads.Pd2
}

// MARK: ATmega328P-MN

extension Variants {
  /// ATmega328P-MN: QFN32
  public enum Mn: Variant {
  }
}

extension Variants.Mn {
  /// The chip that the variant is for.
  public typealias Chip = ATmega328P

  /// The human-readable order code.
  @inlinable @inline(__always) public static var orderCode: StaticString { "ATmega328P-MN" }

  /// The package name.
  @inlinable @inline(__always) public static var package: StaticString { "QFN32" }

  /// The minimum operating temperature, in degrees Celsius.
  @inlinable @inline(__always) public static var tempMin: Int { -40 }

  /// The maximum operating temperature, in degrees Celsius.
  @inlinable @inline(__always) public static var tempMax: Int { 105 }

  /// The maximum operating frequency, in Hz.
  @inlinable @inline(__always) public static var speedMax: Frequency { 20000000 }

  /// The minimum operating voltage, in volts.
  @inlinable @inline(__always) public static var vccMin: Float { 1.8 }

  /// The maximum operating voltage, in volts.
  @inlinable @inline(__always) public static var vccMax: Float { 5.5 }

  /// The pinout name.
  @inlinable @inline(__always) public static var pinout: StaticString? { "QFN32" }

  /// Pin 1: PD3
  public typealias Pin1 = ATmega328P.Pads.Pd3

  /// Pin 2: PD4
  public typealias Pin2 = ATmega328P.Pads.Pd4

  /// Pin 3: GND
  public typealias Pin3 = ATmega328P.Pads.Gnd

  /// Pin 4: VCC
  public typealias Pin4 = ATmega328P.Pads.Vcc

  /// Pin 5: GND
  public typealias Pin5 = ATmega328P.Pads.Gnd

  /// Pin 6: VCC
  public typealias Pin6 = ATmega328P.Pads.Vcc

  /// Pin 7: PB6
  public typealias Pin7 = ATmega328P.Pads.Pb6

  /// Pin 8: PB7
  public typealias Pin8 = ATmega328P.Pads.Pb7

  /// Pin 9: PD5
  public typealias Pin9 = ATmega328P.Pads.Pd5

  /// Pin 10: PD6
  public typealias Pin10 = ATmega328P.Pads.Pd6

  /// Pin 11: PD7
  public typealias Pin11 = ATmega328P.Pads.Pd7

  /// Pin 12: PB0
  public typealias Pin12 = ATmega328P.Pads.Pb0

  /// Pin 13: PB1
  public typealias Pin13 = ATmega328P.Pads.Pb1

  /// Pin 14: PB2
  public typealias Pin14 = ATmega328P.Pads.Pb2

  /// Pin 15: PB3
  public typealias Pin15 = ATmega328P.Pads.Pb3

  /// Pin 16: PB4
  public typealias Pin16 = ATmega328P.Pads.Pb4

  /// Pin 17: PB5
  public typealias Pin17 = ATmega328P.Pads.Pb5

  /// Pin 18: AVCC
  public typealias Pin18 = ATmega328P.Pads.Avcc

  /// Pin 19: ADC6
  public typealias Pin19 = ATmega328P.Pads.Adc6

  /// Pin 20: AREF
  public typealias Pin20 = ATmega328P.Pads.Aref

  /// Pin 21: GND
  public typealias Pin21 = ATmega328P.Pads.Gnd

  /// Pin 22: ADC7
  public typealias Pin22 = ATmega328P.Pads.Adc7

  /// Pin 23: PC0
  public typealias Pin23 = ATmega328P.Pads.Pc0

  /// Pin 24: PC1
  public typealias Pin24 = ATmega328P.Pads.Pc1

  /// Pin 25: PC2
  public typealias Pin25 = ATmega328P.Pads.Pc2

  /// Pin 26: PC3
  public typealias Pin26 = ATmega328P.Pads.Pc3

  /// Pin 27: PC4
  public typealias Pin27 = ATmega328P.Pads.Pc4

  /// Pin 28: PC5
  public typealias Pin28 = ATmega328P.Pads.Pc5

  /// Pin 29: PC6
  public typealias Pin29 = ATmega328P.Pads.Pc6

  /// Pin 30: PD0
  public typealias Pin30 = ATmega328P.Pads.Pd0

  /// Pin 31: PD1
  public typealias Pin31 = ATmega328P.Pads.Pd1

  /// Pin 32: PD2
  public typealias Pin32 = ATmega328P.Pads.Pd2
}

// MARK: ATmega328P-PN

extension Variants {
  /// ATmega328P-PN: PDIP28
  public enum Pn: Variant {
  }
}

extension Variants.Pn {
  /// The chip that the variant is for.
  public typealias Chip = ATmega328P

  /// The human-readable order code.
  @inlinable @inline(__always) public static var orderCode: StaticString { "ATmega328P-PN" }

  /// The package name.
  @inlinable @inline(__always) public static var package: StaticString { "PDIP28" }

  /// The minimum operating temperature, in degrees Celsius.
  @inlinable @inline(__always) public static var tempMin: Int { -40 }

  /// The maximum operating temperature, in degrees Celsius.
  @inlinable @inline(__always) public static var tempMax: Int { 105 }

  /// The maximum operating frequency, in Hz.
  @inlinable @inline(__always) public static var speedMax: Frequency { 20000000 }

  /// The minimum operating voltage, in volts.
  @inlinable @inline(__always) public static var vccMin: Float { 1.8 }

  /// The maximum operating voltage, in volts.
  @inlinable @inline(__always) public static var vccMax: Float { 5.5 }

  /// The pinout name.
  @inlinable @inline(__always) public static var pinout: StaticString? { "PDIP28" }

  /// Pin 1: PC6
  public typealias Pin1 = ATmega328P.Pads.Pc6

  /// Pin 2: PD0
  public typealias Pin2 = ATmega328P.Pads.Pd0

  /// Pin 3: PD1
  public typealias Pin3 = ATmega328P.Pads.Pd1

  /// Pin 4: PD2
  public typealias Pin4 = ATmega328P.Pads.Pd2

  /// Pin 5: PD3
  public typealias Pin5 = ATmega328P.Pads.Pd3

  /// Pin 6: PD4
  public typealias Pin6 = ATmega328P.Pads.Pd4

  /// Pin 7: VCC
  public typealias Pin7 = ATmega328P.Pads.Vcc

  /// Pin 8: GND
  public typealias Pin8 = ATmega328P.Pads.Gnd

  /// Pin 9: PB6
  public typealias Pin9 = ATmega328P.Pads.Pb6

  /// Pin 10: PB7
  public typealias Pin10 = ATmega328P.Pads.Pb7

  /// Pin 11: PD5
  public typealias Pin11 = ATmega328P.Pads.Pd5

  /// Pin 12: PD6
  public typealias Pin12 = ATmega328P.Pads.Pd6

  /// Pin 13: PD7
  public typealias Pin13 = ATmega328P.Pads.Pd7

  /// Pin 14: PB0
  public typealias Pin14 = ATmega328P.Pads.Pb0

  /// Pin 15: PB1
  public typealias Pin15 = ATmega328P.Pads.Pb1

  /// Pin 16: PB2
  public typealias Pin16 = ATmega328P.Pads.Pb2

  /// Pin 17: PB3
  public typealias Pin17 = ATmega328P.Pads.Pb3

  /// Pin 18: PB4
  public typealias Pin18 = ATmega328P.Pads.Pb4

  /// Pin 19: PB5
  public typealias Pin19 = ATmega328P.Pads.Pb5

  /// Pin 20: AVCC
  public typealias Pin20 = ATmega328P.Pads.Avcc

  /// Pin 21: AREF
  public typealias Pin21 = ATmega328P.Pads.Aref

  /// Pin 22: GND
  public typealias Pin22 = ATmega328P.Pads.Gnd

  /// Pin 23: PC0
  public typealias Pin23 = ATmega328P.Pads.Pc0

  /// Pin 24: PC1
  public typealias Pin24 = ATmega328P.Pads.Pc1

  /// Pin 25: PC2
  public typealias Pin25 = ATmega328P.Pads.Pc2

  /// Pin 26: PC3
  public typealias Pin26 = ATmega328P.Pads.Pc3

  /// Pin 27: PC4
  public typealias Pin27 = ATmega328P.Pads.Pc4

  /// Pin 28: PC5
  public typealias Pin28 = ATmega328P.Pads.Pc5
}
