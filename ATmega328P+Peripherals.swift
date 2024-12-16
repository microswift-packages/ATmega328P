import HAL

// MARK:- Peripherals

// MARK: - USART Peripherals

extension ATmega328P {
  /// The USART0 peripheral.
  public enum Usart0 {
  }
}

// MARK: - USART0 Registers

extension ATmega328P.Usart0 {
  /// USART I/O Data Register (0xC6)
  public static var `udr0`: UInt8 {
    get { _registerRead(address: 0xC6) & 0xFF }
    set { _registerWrite(address: 0xC6, value: newValue & 0xFF) }
  }
}

extension ATmega328P.Usart0 {
  /// USART Control and Status Register A (0xC0)
  public static var `ucsr0a`: Ucsr0A {
    get { _registerRead(address: 0xC0) }
    set { _registerWrite(address: 0xC0, value: newValue) }
  }

  /// USART Control and Status Register A (0xC0)
  public struct Ucsr0A: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Ucsr0A register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Usart0 {
  /// USART Control and Status Register B (0xC1)
  public static var `ucsr0b`: Ucsr0B {
    get { _registerRead(address: 0xC1) }
    set { _registerWrite(address: 0xC1, value: newValue) }
  }

  /// USART Control and Status Register B (0xC1)
  public struct Ucsr0B: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Ucsr0B register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Usart0 {
  /// USART Control and Status Register C (0xC2)
  public static var `ucsr0c`: Ucsr0C {
    get { _registerRead(address: 0xC2) }
    set { _registerWrite(address: 0xC2, value: newValue) }
  }

  /// USART Control and Status Register C (0xC2)
  public struct Ucsr0C: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Ucsr0C register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Usart0 {
  /// USART Baud Rate Register Bytes (0xC4)
  public static var `ubrr0`: UInt16 {
    get { _registerRead(address: 0xC4) & 0x0FFF }
    set { _registerWrite(address: 0xC4, value: newValue & 0x0FFF) }
  }
}

// MARK: - TWI Peripherals

extension ATmega328P {
  /// The TWI peripheral.
  public enum Twi {
  }
}

// MARK: - TWI Registers

extension ATmega328P.Twi {
  /// TWI (Slave) Address Mask Register (0xBD)
  public static var `twamr`: Twamr {
    get { _registerRead(address: 0xBD) }
    set { _registerWrite(address: 0xBD, value: newValue) }
  }

  /// TWI (Slave) Address Mask Register (0xBD)
  public struct Twamr: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Twamr register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Twi {
  /// TWI Bit Rate register (0xB8)
  public static var `twbr`: UInt8 {
    get { _registerRead(address: 0xB8) & 0xFF }
    set { _registerWrite(address: 0xB8, value: newValue & 0xFF) }
  }
}

extension ATmega328P.Twi {
  /// TWI Control Register (0xBC)
  public static var `twcr`: Twcr {
    get { _registerRead(address: 0xBC) }
    set { _registerWrite(address: 0xBC, value: newValue) }
  }

  /// TWI Control Register (0xBC)
  public struct Twcr: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Twcr register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Twi {
  /// TWI Status Register (0xB9)
  public static var `twsr`: Twsr {
    get { _registerRead(address: 0xB9) }
    set { _registerWrite(address: 0xB9, value: newValue) }
  }

  /// TWI Status Register (0xB9)
  public struct Twsr: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Twsr register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Twi {
  /// TWI Data register (0xBB)
  public static var `twdr`: UInt8 {
    get { _registerRead(address: 0xBB) & 0xFF }
    set { _registerWrite(address: 0xBB, value: newValue & 0xFF) }
  }
}

extension ATmega328P.Twi {
  /// TWI (Slave) Address register (0xBA)
  public static var `twar`: Twar {
    get { _registerRead(address: 0xBA) }
    set { _registerWrite(address: 0xBA, value: newValue) }
  }

  /// TWI (Slave) Address register (0xBA)
  public struct Twar: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Twar register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

// MARK: - TC16 Peripherals

extension ATmega328P {
  /// The TC1 peripheral.
  public enum Tc1 {
  }
}

// MARK: - TC1 Registers

extension ATmega328P.Tc1 {
  /// Timer/Counter Interrupt Mask Register (0x6F)
  public static var `timsk1`: Timsk1 {
    get { _registerRead(address: 0x6F) }
    set { _registerWrite(address: 0x6F, value: newValue) }
  }

  /// Timer/Counter Interrupt Mask Register (0x6F)
  public struct Timsk1: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Timsk1 register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Tc1 {
  /// Timer/Counter Interrupt Flag register (0x36)
  public static var `tifr1`: Tifr1 {
    get { _registerRead(address: 0x36) }
    set { _registerWrite(address: 0x36, value: newValue) }
  }

  /// Timer/Counter Interrupt Flag register (0x36)
  public struct Tifr1: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Tifr1 register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Tc1 {
  /// Timer/Counter1 Control Register A (0x80)
  public static var `tccr1a`: Tccr1A {
    get { _registerRead(address: 0x80) }
    set { _registerWrite(address: 0x80, value: newValue) }
  }

  /// Timer/Counter1 Control Register A (0x80)
  public struct Tccr1A: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Tccr1A register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Tc1 {
  /// Timer/Counter1 Control Register B (0x81)
  public static var `tccr1b`: Tccr1B {
    get { _registerRead(address: 0x81) }
    set { _registerWrite(address: 0x81, value: newValue) }
  }

  /// Timer/Counter1 Control Register B (0x81)
  public struct Tccr1B: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Tccr1B register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Tc1 {
  /// Timer/Counter1 Control Register C (0x82)
  public static var `tccr1c`: Tccr1C {
    get { _registerRead(address: 0x82) }
    set { _registerWrite(address: 0x82, value: newValue) }
  }

  /// Timer/Counter1 Control Register C (0x82)
  public struct Tccr1C: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Tccr1C register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Tc1 {
  /// Timer/Counter1  Bytes (0x84)
  public static var `tcnt1`: UInt16 {
    get { _registerRead(address: 0x84) & 0xFFFF }
    set { _registerWrite(address: 0x84, value: newValue & 0xFFFF) }
  }
}

extension ATmega328P.Tc1 {
  /// Timer/Counter1 Output Compare Register  Bytes (0x88)
  public static var `ocr1a`: UInt16 {
    get { _registerRead(address: 0x88) & 0xFFFF }
    set { _registerWrite(address: 0x88, value: newValue & 0xFFFF) }
  }
}

extension ATmega328P.Tc1 {
  /// Timer/Counter1 Output Compare Register  Bytes (0x8A)
  public static var `ocr1b`: UInt16 {
    get { _registerRead(address: 0x8A) & 0xFFFF }
    set { _registerWrite(address: 0x8A, value: newValue & 0xFFFF) }
  }
}

extension ATmega328P.Tc1 {
  /// Timer/Counter1 Input Capture Register  Bytes (0x86)
  public static var `icr1`: UInt16 {
    get { _registerRead(address: 0x86) & 0xFFFF }
    set { _registerWrite(address: 0x86, value: newValue & 0xFFFF) }
  }
}

extension ATmega328P.Tc1 {
  /// General Timer/Counter Control Register (0x43)
  public static var `gtccr`: Gtccr {
    get { _registerRead(address: 0x43) }
    set { _registerWrite(address: 0x43, value: newValue) }
  }

  /// General Timer/Counter Control Register (0x43)
  public struct Gtccr: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Gtccr register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

// MARK: - TC8_ASYNC Peripherals

extension ATmega328P {
  /// The TC2 peripheral.
  public enum Tc2 {
  }
}

// MARK: - TC2 Registers

extension ATmega328P.Tc2 {
  /// Timer/Counter Interrupt Mask register (0x70)
  public static var `timsk2`: Timsk2 {
    get { _registerRead(address: 0x70) }
    set { _registerWrite(address: 0x70, value: newValue) }
  }

  /// Timer/Counter Interrupt Mask register (0x70)
  public struct Timsk2: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Timsk2 register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Tc2 {
  /// Timer/Counter Interrupt Flag Register (0x37)
  public static var `tifr2`: Tifr2 {
    get { _registerRead(address: 0x37) }
    set { _registerWrite(address: 0x37, value: newValue) }
  }

  /// Timer/Counter Interrupt Flag Register (0x37)
  public struct Tifr2: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Tifr2 register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Tc2 {
  /// Timer/Counter2 Control Register A (0xB0)
  public static var `tccr2a`: Tccr2A {
    get { _registerRead(address: 0xB0) }
    set { _registerWrite(address: 0xB0, value: newValue) }
  }

  /// Timer/Counter2 Control Register A (0xB0)
  public struct Tccr2A: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Tccr2A register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Tc2 {
  /// Timer/Counter2 Control Register B (0xB1)
  public static var `tccr2b`: Tccr2B {
    get { _registerRead(address: 0xB1) }
    set { _registerWrite(address: 0xB1, value: newValue) }
  }

  /// Timer/Counter2 Control Register B (0xB1)
  public struct Tccr2B: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Tccr2B register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Tc2 {
  /// Timer/Counter2 (0xB2)
  public static var `tcnt2`: UInt8 {
    get { _registerRead(address: 0xB2) & 0xFF }
    set { _registerWrite(address: 0xB2, value: newValue & 0xFF) }
  }
}

extension ATmega328P.Tc2 {
  /// Timer/Counter2 Output Compare Register B (0xB4)
  public static var `ocr2b`: UInt8 {
    get { _registerRead(address: 0xB4) & 0xFF }
    set { _registerWrite(address: 0xB4, value: newValue & 0xFF) }
  }
}

extension ATmega328P.Tc2 {
  /// Timer/Counter2 Output Compare Register A (0xB3)
  public static var `ocr2a`: UInt8 {
    get { _registerRead(address: 0xB3) & 0xFF }
    set { _registerWrite(address: 0xB3, value: newValue & 0xFF) }
  }
}

extension ATmega328P.Tc2 {
  /// Asynchronous Status Register (0xB6)
  public static var `assr`: Assr {
    get { _registerRead(address: 0xB6) }
    set { _registerWrite(address: 0xB6, value: newValue) }
  }

  /// Asynchronous Status Register (0xB6)
  public struct Assr: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Assr register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Tc2 {
  /// General Timer Counter Control register (0x43)
  public static var `gtccr`: Gtccr {
    get { _registerRead(address: 0x43) }
    set { _registerWrite(address: 0x43, value: newValue) }
  }

  /// General Timer Counter Control register (0x43)
  public struct Gtccr: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Gtccr register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

// MARK: - ADC Peripherals

extension ATmega328P {
  /// The ADC peripheral.
  public enum Adc {
  }
}

// MARK: - ADC Registers

extension ATmega328P.Adc {
  /// The ADC multiplexer Selection Register (0x7C)
  public static var `admux`: Admux {
    get { _registerRead(address: 0x7C) }
    set { _registerWrite(address: 0x7C, value: newValue) }
  }

  /// The ADC multiplexer Selection Register (0x7C)
  public struct Admux: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Admux register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Adc {
  /// ADC Data Register  Bytes (0x78)
  public static var `adc`: UInt16 {
    get { _registerRead(address: 0x78) & 0xFFFF }
    set { _registerWrite(address: 0x78, value: newValue & 0xFFFF) }
  }
}

extension ATmega328P.Adc {
  /// The ADC Control and Status register A (0x7A)
  public static var `adcsra`: Adcsra {
    get { _registerRead(address: 0x7A) }
    set { _registerWrite(address: 0x7A, value: newValue) }
  }

  /// The ADC Control and Status register A (0x7A)
  public struct Adcsra: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Adcsra register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Adc {
  /// The ADC Control and Status register B (0x7B)
  public static var `adcsrb`: Adcsrb {
    get { _registerRead(address: 0x7B) }
    set { _registerWrite(address: 0x7B, value: newValue) }
  }

  /// The ADC Control and Status register B (0x7B)
  public struct Adcsrb: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Adcsrb register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Adc {
  /// Digital Input Disable Register (0x7E)
  public static var `didr0`: Didr0 {
    get { _registerRead(address: 0x7E) }
    set { _registerWrite(address: 0x7E, value: newValue) }
  }

  /// Digital Input Disable Register (0x7E)
  public struct Didr0: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Didr0 register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

// MARK: - AC Peripherals

extension ATmega328P {
  /// The AC peripheral.
  public enum Ac {
  }
}

// MARK: - AC Registers

extension ATmega328P.Ac {
  /// Analog Comparator Control And Status Register (0x50)
  public static var `acsr`: Acsr {
    get { _registerRead(address: 0x50) }
    set { _registerWrite(address: 0x50, value: newValue) }
  }

  /// Analog Comparator Control And Status Register (0x50)
  public struct Acsr: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Acsr register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Ac {
  /// Digital Input Disable Register 1 (0x7F)
  public static var `didr1`: Didr1 {
    get { _registerRead(address: 0x7F) }
    set { _registerWrite(address: 0x7F, value: newValue) }
  }

  /// Digital Input Disable Register 1 (0x7F)
  public struct Didr1: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Didr1 register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

// MARK: - PORT Peripherals

extension ATmega328P {
  /// The PORTB peripheral.
  public enum Portb {
  }
}

// MARK: - PORTB Registers

extension ATmega328P.Portb {
  /// Port B Data Register (0x25)
  public static var `portb`: UInt8 {
    get { _registerRead(address: 0x25) & 0xFF }
    set { _registerWrite(address: 0x25, value: newValue & 0xFF) }
  }
}

extension ATmega328P.Portb {
  /// Port B Data Direction Register (0x24)
  public static var `ddrb`: UInt8 {
    get { _registerRead(address: 0x24) & 0xFF }
    set { _registerWrite(address: 0x24, value: newValue & 0xFF) }
  }
}

extension ATmega328P.Portb {
  /// Port B Input Pins (0x23)
  public static var `pinb`: UInt8 {
    get { _registerRead(address: 0x23) & 0xFF }
    set { _registerWrite(address: 0x23, value: newValue & 0xFF) }
  }
}

extension ATmega328P {
  /// The PORTC peripheral.
  public enum Portc {
  }
}

// MARK: - PORTC Registers

extension ATmega328P.Portc {
  /// Port C Data Register (0x28)
  public static var `portc`: UInt8 {
    get { _registerRead(address: 0x28) & 0x7F }
    set { _registerWrite(address: 0x28, value: newValue & 0x7F) }
  }
}

extension ATmega328P.Portc {
  /// Port C Data Direction Register (0x27)
  public static var `ddrc`: UInt8 {
    get { _registerRead(address: 0x27) & 0x7F }
    set { _registerWrite(address: 0x27, value: newValue & 0x7F) }
  }
}

extension ATmega328P.Portc {
  /// Port C Input Pins (0x26)
  public static var `pinc`: UInt8 {
    get { _registerRead(address: 0x26) & 0x7F }
    set { _registerWrite(address: 0x26, value: newValue & 0x7F) }
  }
}

extension ATmega328P {
  /// The PORTD peripheral.
  public enum Portd {
  }
}

// MARK: - PORTD Registers

extension ATmega328P.Portd {
  /// Port D Data Register (0x2B)
  public static var `portd`: UInt8 {
    get { _registerRead(address: 0x2B) & 0xFF }
    set { _registerWrite(address: 0x2B, value: newValue & 0xFF) }
  }
}

extension ATmega328P.Portd {
  /// Port D Data Direction Register (0x2A)
  public static var `ddrd`: UInt8 {
    get { _registerRead(address: 0x2A) & 0xFF }
    set { _registerWrite(address: 0x2A, value: newValue & 0xFF) }
  }
}

extension ATmega328P.Portd {
  /// Port D Input Pins (0x29)
  public static var `pind`: UInt8 {
    get { _registerRead(address: 0x29) & 0xFF }
    set { _registerWrite(address: 0x29, value: newValue & 0xFF) }
  }
}

// MARK: - TC8 Peripherals

extension ATmega328P {
  /// The TC0 peripheral.
  public enum Tc0 {
  }
}

// MARK: - TC0 Registers

extension ATmega328P.Tc0 {
  /// Timer/Counter0 Output Compare Register (0x48)
  public static var `ocr0b`: UInt8 {
    get { _registerRead(address: 0x48) & 0xFF }
    set { _registerWrite(address: 0x48, value: newValue & 0xFF) }
  }
}

extension ATmega328P.Tc0 {
  /// Timer/Counter0 Output Compare Register (0x47)
  public static var `ocr0a`: UInt8 {
    get { _registerRead(address: 0x47) & 0xFF }
    set { _registerWrite(address: 0x47, value: newValue & 0xFF) }
  }
}

extension ATmega328P.Tc0 {
  /// Timer/Counter0 (0x46)
  public static var `tcnt0`: UInt8 {
    get { _registerRead(address: 0x46) & 0xFF }
    set { _registerWrite(address: 0x46, value: newValue & 0xFF) }
  }
}

extension ATmega328P.Tc0 {
  /// Timer/Counter Control Register B (0x45)
  public static var `tccr0b`: Tccr0B {
    get { _registerRead(address: 0x45) }
    set { _registerWrite(address: 0x45, value: newValue) }
  }

  /// Timer/Counter Control Register B (0x45)
  public struct Tccr0B: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Tccr0B register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Tc0 {
  /// Timer/Counter  Control Register A (0x44)
  public static var `tccr0a`: Tccr0A {
    get { _registerRead(address: 0x44) }
    set { _registerWrite(address: 0x44, value: newValue) }
  }

  /// Timer/Counter  Control Register A (0x44)
  public struct Tccr0A: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Tccr0A register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Tc0 {
  /// Timer/Counter0 Interrupt Mask Register (0x6E)
  public static var `timsk0`: Timsk0 {
    get { _registerRead(address: 0x6E) }
    set { _registerWrite(address: 0x6E, value: newValue) }
  }

  /// Timer/Counter0 Interrupt Mask Register (0x6E)
  public struct Timsk0: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Timsk0 register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Tc0 {
  /// Timer/Counter0 Interrupt Flag register (0x35)
  public static var `tifr0`: Tifr0 {
    get { _registerRead(address: 0x35) }
    set { _registerWrite(address: 0x35, value: newValue) }
  }

  /// Timer/Counter0 Interrupt Flag register (0x35)
  public struct Tifr0: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Tifr0 register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Tc0 {
  /// General Timer/Counter Control Register (0x43)
  public static var `gtccr`: Gtccr {
    get { _registerRead(address: 0x43) }
    set { _registerWrite(address: 0x43, value: newValue) }
  }

  /// General Timer/Counter Control Register (0x43)
  public struct Gtccr: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Gtccr register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

// MARK: - EXINT Peripherals

extension ATmega328P {
  /// The EXINT peripheral.
  public enum Exint {
  }
}

// MARK: - EXINT Registers

extension ATmega328P.Exint {
  /// External Interrupt Control Register (0x69)
  public static var `eicra`: Eicra {
    get { _registerRead(address: 0x69) }
    set { _registerWrite(address: 0x69, value: newValue) }
  }

  /// External Interrupt Control Register (0x69)
  public struct Eicra: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Eicra register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Exint {
  /// External Interrupt Mask Register (0x3D)
  public static var `eimsk`: Eimsk {
    get { _registerRead(address: 0x3D) }
    set { _registerWrite(address: 0x3D, value: newValue) }
  }

  /// External Interrupt Mask Register (0x3D)
  public struct Eimsk: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Eimsk register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Exint {
  /// External Interrupt Flag Register (0x3C)
  public static var `eifr`: Eifr {
    get { _registerRead(address: 0x3C) }
    set { _registerWrite(address: 0x3C, value: newValue) }
  }

  /// External Interrupt Flag Register (0x3C)
  public struct Eifr: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Eifr register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Exint {
  /// Pin Change Interrupt Control Register (0x68)
  public static var `pcicr`: Pcicr {
    get { _registerRead(address: 0x68) }
    set { _registerWrite(address: 0x68, value: newValue) }
  }

  /// Pin Change Interrupt Control Register (0x68)
  public struct Pcicr: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Pcicr register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Exint {
  /// Pin Change Mask Register 2 (0x6D)
  public static var `pcmsk2`: Pcmsk2 {
    get { _registerRead(address: 0x6D) }
    set { _registerWrite(address: 0x6D, value: newValue) }
  }

  /// Pin Change Mask Register 2 (0x6D)
  public struct Pcmsk2: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Pcmsk2 register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Exint {
  /// Pin Change Mask Register 1 (0x6C)
  public static var `pcmsk1`: Pcmsk1 {
    get { _registerRead(address: 0x6C) }
    set { _registerWrite(address: 0x6C, value: newValue) }
  }

  /// Pin Change Mask Register 1 (0x6C)
  public struct Pcmsk1: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Pcmsk1 register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Exint {
  /// Pin Change Mask Register 0 (0x6B)
  public static var `pcmsk0`: Pcmsk0 {
    get { _registerRead(address: 0x6B) }
    set { _registerWrite(address: 0x6B, value: newValue) }
  }

  /// Pin Change Mask Register 0 (0x6B)
  public struct Pcmsk0: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Pcmsk0 register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Exint {
  /// Pin Change Interrupt Flag Register (0x3B)
  public static var `pcifr`: Pcifr {
    get { _registerRead(address: 0x3B) }
    set { _registerWrite(address: 0x3B, value: newValue) }
  }

  /// Pin Change Interrupt Flag Register (0x3B)
  public struct Pcifr: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Pcifr register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

// MARK: - SPI Peripherals

extension ATmega328P {
  /// The SPI peripheral.
  public enum Spi {
  }
}

// MARK: - SPI Registers

extension ATmega328P.Spi {
  /// SPI Data Register (0x4E)
  public static var `spdr`: UInt8 {
    get { _registerRead(address: 0x4E) & 0xFF }
    set { _registerWrite(address: 0x4E, value: newValue & 0xFF) }
  }
}

extension ATmega328P.Spi {
  /// SPI Status Register (0x4D)
  public static var `spsr`: Spsr {
    get { _registerRead(address: 0x4D) }
    set { _registerWrite(address: 0x4D, value: newValue) }
  }

  /// SPI Status Register (0x4D)
  public struct Spsr: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Spsr register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Spi {
  /// SPI Control Register (0x4C)
  public static var `spcr`: Spcr {
    get { _registerRead(address: 0x4C) }
    set { _registerWrite(address: 0x4C, value: newValue) }
  }

  /// SPI Control Register (0x4C)
  public struct Spcr: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Spcr register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

// MARK: - WDT Peripherals

extension ATmega328P {
  /// The WDT peripheral.
  public enum Wdt {
  }
}

// MARK: - WDT Registers

extension ATmega328P.Wdt {
  /// Watchdog Timer Control Register (0x60)
  public static var `wdtcsr`: Wdtcsr {
    get { _registerRead(address: 0x60) }
    set { _registerWrite(address: 0x60, value: newValue) }
  }

  /// Watchdog Timer Control Register (0x60)
  public struct Wdtcsr: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Wdtcsr register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

// MARK: - EEPROM Peripherals

extension ATmega328P {
  /// The EEPROM peripheral.
  public enum Eeprom {
  }
}

// MARK: - EEPROM Registers

extension ATmega328P.Eeprom {
  /// EEPROM Address Register  Bytes (0x41)
  public static var `eear`: UInt16 {
    get { _registerRead(address: 0x41) & 0x03FF }
    set { _registerWrite(address: 0x41, value: newValue & 0x03FF) }
  }
}

extension ATmega328P.Eeprom {
  /// EEPROM Data Register (0x40)
  public static var `eedr`: UInt8 {
    get { _registerRead(address: 0x40) & 0xFF }
    set { _registerWrite(address: 0x40, value: newValue & 0xFF) }
  }
}

extension ATmega328P.Eeprom {
  /// EEPROM Control Register (0x3F)
  public static var `eecr`: Eecr {
    get { _registerRead(address: 0x3F) }
    set { _registerWrite(address: 0x3F, value: newValue) }
  }

  /// EEPROM Control Register (0x3F)
  public struct Eecr: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Eecr register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

// MARK: - CPU Peripherals

extension ATmega328P {
  /// The CPU peripheral.
  public enum Cpu {
  }
}

// MARK: - CPU Registers

extension ATmega328P.Cpu {
  /// Power Reduction Register (0x64)
  public static var `prr`: Prr {
    get { _registerRead(address: 0x64) }
    set { _registerWrite(address: 0x64, value: newValue) }
  }

  /// Power Reduction Register (0x64)
  public struct Prr: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Prr register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Cpu {
  /// Oscillator Calibration Value (0x66)
  public static var `osccal`: Osccal {
    get { _registerRead(address: 0x66) }
    set { _registerWrite(address: 0x66, value: newValue) }
  }

  /// Oscillator Calibration Value (0x66)
  public struct Osccal: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Osccal register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Cpu {
  /// Clock Prescale Register (0x61)
  public static var `clkpr`: Clkpr {
    get { _registerRead(address: 0x61) }
    set { _registerWrite(address: 0x61, value: newValue) }
  }

  /// Clock Prescale Register (0x61)
  public struct Clkpr: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Clkpr register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Cpu {
  /// Status Register (0x5F)
  public static var `sreg`: Sreg {
    get { _registerRead(address: 0x5F) }
    set { _registerWrite(address: 0x5F, value: newValue) }
  }

  /// Status Register (0x5F)
  public struct Sreg: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Sreg register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Cpu {
  /// Stack Pointer  (0x5D)
  public static var `sp`: UInt16 {
    get { _registerRead(address: 0x5D) & 0x0FFF }
    set { _registerWrite(address: 0x5D, value: newValue & 0x0FFF) }
  }
}

extension ATmega328P.Cpu {
  /// Store Program Memory Control and Status Register (0x57)
  public static var `spmcsr`: Spmcsr {
    get { _registerRead(address: 0x57) }
    set { _registerWrite(address: 0x57, value: newValue) }
  }

  /// Store Program Memory Control and Status Register (0x57)
  public struct Spmcsr: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Spmcsr register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Cpu {
  /// MCU Control Register (0x55)
  public static var `mcucr`: Mcucr {
    get { _registerRead(address: 0x55) }
    set { _registerWrite(address: 0x55, value: newValue) }
  }

  /// MCU Control Register (0x55)
  public struct Mcucr: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Mcucr register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Cpu {
  /// MCU Status Register (0x54)
  public static var `mcusr`: Mcusr {
    get { _registerRead(address: 0x54) }
    set { _registerWrite(address: 0x54, value: newValue) }
  }

  /// MCU Status Register (0x54)
  public struct Mcusr: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Mcusr register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Cpu {
  /// Sleep Mode Control Register (0x53)
  public static var `smcr`: Smcr {
    get { _registerRead(address: 0x53) }
    set { _registerWrite(address: 0x53, value: newValue) }
  }

  /// Sleep Mode Control Register (0x53)
  public struct Smcr: MutableRegisterValue {
    /// The raw register value.
    public var registerValue: UInt8

    /// Initializes a new instance of the Smcr register.
    public init(registerValue: UInt8) {
      self.registerValue = registerValue
    }
  }
}

extension ATmega328P.Cpu {
  /// General Purpose I/O Register 2 (0x4B)
  public static var `gpior2`: UInt8 {
    get { _registerRead(address: 0x4B) & 0xFF }
    set { _registerWrite(address: 0x4B, value: newValue & 0xFF) }
  }
}

extension ATmega328P.Cpu {
  /// General Purpose I/O Register 1 (0x4A)
  public static var `gpior1`: UInt8 {
    get { _registerRead(address: 0x4A) & 0xFF }
    set { _registerWrite(address: 0x4A, value: newValue & 0xFF) }
  }
}

extension ATmega328P.Cpu {
  /// General Purpose I/O Register 0 (0x3E)
  public static var `gpior0`: UInt8 {
    get { _registerRead(address: 0x3E) & 0xFF }
    set { _registerWrite(address: 0x3E, value: newValue & 0xFF) }
  }
}

// MARK: - FUSE Peripherals

extension ATmega328P {
  /// The FUSE peripheral.
  public enum Fuse {
  }
}

// MARK: - LOCKBIT Peripherals

extension ATmega328P {
  /// The LOCKBIT peripheral.
  public enum Lockbit {
  }
}
