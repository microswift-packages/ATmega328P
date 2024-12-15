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

    /// USART Receive Complete
    public var `rxc0`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x80) >> 7)) }
      set { registerValue = (registerValue & ~0x80) | (Ucsr0A.RegisterType(newValue.bitfieldValue) << 7) }
    }

    /// USART Transmitt Complete
    public var `txc0`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x40) >> 6)) }
      set { registerValue = (registerValue & ~0x40) | (Ucsr0A.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// USART Data Register Empty
    public var `udre0`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x20) >> 5)) }
      set { registerValue = (registerValue & ~0x20) | (Ucsr0A.RegisterType(newValue.bitfieldValue) << 5) }
    }

    /// Framing Error
    public var `fe0`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x10) >> 4)) }
      set { registerValue = (registerValue & ~0x10) | (Ucsr0A.RegisterType(newValue.bitfieldValue) << 4) }
    }

    /// Data overRun
    public var `dor0`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x8) >> 3)) }
      set { registerValue = (registerValue & ~0x8) | (Ucsr0A.RegisterType(newValue.bitfieldValue) << 3) }
    }

    /// Parity Error
    public var `upe0`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x4) >> 2)) }
      set { registerValue = (registerValue & ~0x4) | (Ucsr0A.RegisterType(newValue.bitfieldValue) << 2) }
    }

    /// Double the USART transmission speed
    public var `u2x0`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x2) >> 1)) }
      set { registerValue = (registerValue & ~0x2) | (Ucsr0A.RegisterType(newValue.bitfieldValue) << 1) }
    }

    /// Multi-processor Communication Mode
    public var `mpcm0`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Ucsr0A.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// RX Complete Interrupt Enable
    public var `rxcie0`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x80) >> 7)) }
      set { registerValue = (registerValue & ~0x80) | (Ucsr0B.RegisterType(newValue.bitfieldValue) << 7) }
    }

    /// TX Complete Interrupt Enable
    public var `txcie0`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x40) >> 6)) }
      set { registerValue = (registerValue & ~0x40) | (Ucsr0B.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// USART Data register Empty Interrupt Enable
    public var `udrie0`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x20) >> 5)) }
      set { registerValue = (registerValue & ~0x20) | (Ucsr0B.RegisterType(newValue.bitfieldValue) << 5) }
    }

    /// Receiver Enable
    public var `rxen0`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x10) >> 4)) }
      set { registerValue = (registerValue & ~0x10) | (Ucsr0B.RegisterType(newValue.bitfieldValue) << 4) }
    }

    /// Transmitter Enable
    public var `txen0`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x8) >> 3)) }
      set { registerValue = (registerValue & ~0x8) | (Ucsr0B.RegisterType(newValue.bitfieldValue) << 3) }
    }

    /// Character Size - together with UCSZ0 in UCSR0C
    public var `ucsz02`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x4) >> 2)) }
      set { registerValue = (registerValue & ~0x4) | (Ucsr0B.RegisterType(newValue.bitfieldValue) << 2) }
    }

    /// Receive Data Bit 8
    public var `rxb80`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x2) >> 1)) }
      set { registerValue = (registerValue & ~0x2) | (Ucsr0B.RegisterType(newValue.bitfieldValue) << 1) }
    }

    /// Transmit Data Bit 8
    public var `txb80`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Ucsr0B.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// USART Mode Select
    public var `umsel0`: CommUsartMode2Bit {
      get { .init(bitfieldValue: CommUsartMode2Bit.BitfieldType((registerValue & 0xC0) >> 6)) }
      set { registerValue = (registerValue & ~0xC0) | (Ucsr0C.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// Parity Mode Bits
    public var `upm0`: CommUpmParityMode {
      get { .init(bitfieldValue: CommUpmParityMode.BitfieldType((registerValue & 0x30) >> 4)) }
      set { registerValue = (registerValue & ~0x30) | (Ucsr0C.RegisterType(newValue.bitfieldValue) << 4) }
    }

    /// Stop Bit Select
    public var `usbs0`: CommStopBitSel {
      get { .init(bitfieldValue: CommStopBitSel.BitfieldType((registerValue & 0x8) >> 3)) }
      set { registerValue = (registerValue & ~0x8) | (Ucsr0C.RegisterType(newValue.bitfieldValue) << 3) }
    }

    /// Character Size - together with UCSZ2 in UCSR0B
    public var `ucsz0`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0x6) >> 1)) }
      set { registerValue = (registerValue & ~0x6) | (Ucsr0C.RegisterType(newValue.bitfieldValue) << 1) }
    }

    /// Clock Polarity
    public var `ucpol0`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Ucsr0C.RegisterType(newValue.bitfieldValue) << 0) }
    }

    /// COMM_USART_MODE_2BIT
    public enum CommUsartMode2Bit: UInt8, Bitfield, CaseIterable {
      /// ASYNCHRONOUS_USART: Asynchronous USART (0x0)
      case asynchronousUsart = 0x0

      /// SYNCHRONOUS_USART: Synchronous USART (0x1)
      case synchronousUsart = 0x1

      /// MASTER_SPI: Master SPI (0x3)
      case masterSpi = 0x3
    }

    /// COMM_UPM_PARITY_MODE
    public enum CommUpmParityMode: UInt8, Bitfield, CaseIterable {
      /// DISABLED: Disabled (0x0)
      case disabled = 0x0

      /// ENABLED_EVEN_PARITY: Enabled, Even Parity (0x2)
      case enabledEvenParity = 0x2

      /// ENABLED_ODD_PARITY: Enabled, Odd Parity (0x3)
      case enabledOddParity = 0x3
    }

    /// COMM_STOP_BIT_SEL
    public enum CommStopBitSel: UInt8, Bitfield, CaseIterable {
      /// 1_BIT: 1-bit (0x0)
      case _1Bit = 0x0

      /// 2_BIT: 2-bit (0x1)
      case _2Bit = 0x1
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

// MARK: - USART0 Peripheral Signals

extension ATmega328P.Usart0 {
  /// The signals definitions for the USART0 peripheral.
  public enum Signals {
  }
}

extension ATmega328P.Usart0.Signals {
  /// The TXD signal -> Pd1 pad.
  public typealias Txd = ATmega328P.Pads.Pd1
}

extension ATmega328P.Usart0.Signals {
  /// The RXD signal -> Pd0 pad.
  public typealias Rxd = ATmega328P.Pads.Pd0
}

extension ATmega328P.Usart0.Signals {
  /// The XCK signal -> Pd4 pad.
  public typealias Xck = ATmega328P.Pads.Pd4
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

    /// TWAM
    public var `twam`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0xFE) >> 1)) }
      set { registerValue = (registerValue & ~0xFE) | (Twamr.RegisterType(newValue.bitfieldValue) << 1) }
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

    /// TWI Interrupt Flag
    public var `twint`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x80) >> 7)) }
      set { registerValue = (registerValue & ~0x80) | (Twcr.RegisterType(newValue.bitfieldValue) << 7) }
    }

    /// TWI Enable Acknowledge Bit
    public var `twea`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x40) >> 6)) }
      set { registerValue = (registerValue & ~0x40) | (Twcr.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// TWI Start Condition Bit
    public var `twsta`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x20) >> 5)) }
      set { registerValue = (registerValue & ~0x20) | (Twcr.RegisterType(newValue.bitfieldValue) << 5) }
    }

    /// TWI Stop Condition Bit
    public var `twsto`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x10) >> 4)) }
      set { registerValue = (registerValue & ~0x10) | (Twcr.RegisterType(newValue.bitfieldValue) << 4) }
    }

    /// TWI Write Collition Flag
    public var `twwc`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x8) >> 3)) }
      set { registerValue = (registerValue & ~0x8) | (Twcr.RegisterType(newValue.bitfieldValue) << 3) }
    }

    /// TWI Enable Bit
    public var `twen`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x4) >> 2)) }
      set { registerValue = (registerValue & ~0x4) | (Twcr.RegisterType(newValue.bitfieldValue) << 2) }
    }

    /// TWI Interrupt Enable
    public var `twie`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Twcr.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// TWI Status
    public var `tws3`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0xF8) >> 3)) }
      set { registerValue = (registerValue & ~0xF8) | (Twsr.RegisterType(newValue.bitfieldValue) << 3) }
    }

    /// TWI Prescaler
    public var `twps`: CommTwiPresacle {
      get { .init(bitfieldValue: CommTwiPresacle.BitfieldType((registerValue & 0x3) >> 0)) }
      set { registerValue = (registerValue & ~0x3) | (Twsr.RegisterType(newValue.bitfieldValue) << 0) }
    }

    /// COMM_TWI_PRESACLE
    public enum CommTwiPresacle: UInt8, Bitfield, CaseIterable {
      /// 1 (0x0)
      case _1 = 0x0

      /// 4 (0x1)
      case _4 = 0x1

      /// 16 (0x2)
      case _16 = 0x2

      /// 64 (0x3)
      case _64 = 0x3
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

    /// TWI (Slave) Address register Bits
    public var `twa`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0xFE) >> 1)) }
      set { registerValue = (registerValue & ~0xFE) | (Twar.RegisterType(newValue.bitfieldValue) << 1) }
    }

    /// TWI General Call Recognition Enable Bit
    public var `twgce`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Twar.RegisterType(newValue.bitfieldValue) << 0) }
    }
  }
}

// MARK: - TWI Peripheral Signals

extension ATmega328P.Twi {
  /// The signals definitions for the TWI peripheral.
  public enum Signals {
  }
}

extension ATmega328P.Twi.Signals {
  /// The SDA signal -> Pc4 pad.
  public typealias Sda = ATmega328P.Pads.Pc4
}

extension ATmega328P.Twi.Signals {
  /// The SCL signal -> Pc5 pad.
  public typealias Scl = ATmega328P.Pads.Pc5
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

    /// Timer/Counter1 Input Capture Interrupt Enable
    public var `icie1`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x20) >> 5)) }
      set { registerValue = (registerValue & ~0x20) | (Timsk1.RegisterType(newValue.bitfieldValue) << 5) }
    }

    /// Timer/Counter1 Output CompareB Match Interrupt Enable
    public var `ocie1b`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x4) >> 2)) }
      set { registerValue = (registerValue & ~0x4) | (Timsk1.RegisterType(newValue.bitfieldValue) << 2) }
    }

    /// Timer/Counter1 Output CompareA Match Interrupt Enable
    public var `ocie1a`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x2) >> 1)) }
      set { registerValue = (registerValue & ~0x2) | (Timsk1.RegisterType(newValue.bitfieldValue) << 1) }
    }

    /// Timer/Counter1 Overflow Interrupt Enable
    public var `toie1`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Timsk1.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// Input Capture Flag 1
    public var `icf1`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x20) >> 5)) }
      set { registerValue = (registerValue & ~0x20) | (Tifr1.RegisterType(newValue.bitfieldValue) << 5) }
    }

    /// Output Compare Flag 1B
    public var `ocf1b`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x4) >> 2)) }
      set { registerValue = (registerValue & ~0x4) | (Tifr1.RegisterType(newValue.bitfieldValue) << 2) }
    }

    /// Output Compare Flag 1A
    public var `ocf1a`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x2) >> 1)) }
      set { registerValue = (registerValue & ~0x2) | (Tifr1.RegisterType(newValue.bitfieldValue) << 1) }
    }

    /// Timer/Counter1 Overflow Flag
    public var `tov1`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Tifr1.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// Compare Output Mode 1A, bits
    public var `com1a`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0xC0) >> 6)) }
      set { registerValue = (registerValue & ~0xC0) | (Tccr1A.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// Compare Output Mode 1B, bits
    public var `com1b`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0x30) >> 4)) }
      set { registerValue = (registerValue & ~0x30) | (Tccr1A.RegisterType(newValue.bitfieldValue) << 4) }
    }

    /// Waveform Generation Mode
    public var `wgm1`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0x3) >> 0)) }
      set { registerValue = (registerValue & ~0x3) | (Tccr1A.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// Input Capture 1 Noise Canceler
    public var `icnc1`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x80) >> 7)) }
      set { registerValue = (registerValue & ~0x80) | (Tccr1B.RegisterType(newValue.bitfieldValue) << 7) }
    }

    /// Input Capture 1 Edge Select
    public var `ices1`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x40) >> 6)) }
      set { registerValue = (registerValue & ~0x40) | (Tccr1B.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// Waveform Generation Mode
    public var `wgm12`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0x18) >> 3)) }
      set { registerValue = (registerValue & ~0x18) | (Tccr1B.RegisterType(newValue.bitfieldValue) << 3) }
    }

    /// Prescaler source of Timer/Counter 1
    public var `cs1`: ClkSel3BitExt {
      get { .init(bitfieldValue: ClkSel3BitExt.BitfieldType((registerValue & 0x7) >> 0)) }
      set { registerValue = (registerValue & ~0x7) | (Tccr1B.RegisterType(newValue.bitfieldValue) << 0) }
    }

    /// CLK_SEL_3BIT_EXT
    public enum ClkSel3BitExt: UInt8, Bitfield, CaseIterable {
      /// NO_CLOCK_SOURCE_STOPPED: No Clock Source (Stopped) (0x0)
      case noClockSourceStopped = 0x0

      /// RUNNING_NO_PRESCALING: Running, No Prescaling (0x1)
      case runningNoPrescaling = 0x1

      /// RUNNING_CLK_8: Running, CLK/8 (0x2)
      case runningClk8 = 0x2

      /// RUNNING_CLK_64: Running, CLK/64 (0x3)
      case runningClk64 = 0x3

      /// RUNNING_CLK_256: Running, CLK/256 (0x4)
      case runningClk256 = 0x4

      /// RUNNING_CLK_1024: Running, CLK/1024 (0x5)
      case runningClk1024 = 0x5

      /// RUNNING_EXTCLK_TN_FALLING_EDGE: Running, ExtClk Tn Falling Edge (0x6)
      case runningExtclkTnFallingEdge = 0x6

      /// RUNNING_EXTCLK_TN_RISING_EDGE: Running, ExtClk Tn Rising Edge (0x7)
      case runningExtclkTnRisingEdge = 0x7
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

    /// FOC1A
    public var `foc1a`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x80) >> 7)) }
      set { registerValue = (registerValue & ~0x80) | (Tccr1C.RegisterType(newValue.bitfieldValue) << 7) }
    }

    /// FOC1B
    public var `foc1b`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x40) >> 6)) }
      set { registerValue = (registerValue & ~0x40) | (Tccr1C.RegisterType(newValue.bitfieldValue) << 6) }
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

    /// Timer/Counter Synchronization Mode
    public var `tsm`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x80) >> 7)) }
      set { registerValue = (registerValue & ~0x80) | (Gtccr.RegisterType(newValue.bitfieldValue) << 7) }
    }

    /// Prescaler Reset Timer/Counter1 and Timer/Counter0
    public var `psrsync`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Gtccr.RegisterType(newValue.bitfieldValue) << 0) }
    }
  }
}

// MARK: - TC1 Peripheral Signals

extension ATmega328P.Tc1 {
  /// The signals definitions for the TC1 peripheral.
  public enum Signals {
  }
}

extension ATmega328P.Tc1.Signals {
  /// The T signal -> Pd5 pad.
  public typealias T = ATmega328P.Pads.Pd5
}

extension ATmega328P.Tc1.Signals {
  /// The ICP signal -> Pb0 pad.
  public typealias Icp = ATmega328P.Pads.Pb0
}

extension ATmega328P.Tc1.Signals {
  /// The OCA signal -> Pb1 pad.
  public typealias Oca = ATmega328P.Pads.Pb1
}

extension ATmega328P.Tc1.Signals {
  /// The OCB signal -> Pb2 pad.
  public typealias Ocb = ATmega328P.Pads.Pb2
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

    /// Timer/Counter2 Output Compare Match B Interrupt Enable
    public var `ocie2b`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x4) >> 2)) }
      set { registerValue = (registerValue & ~0x4) | (Timsk2.RegisterType(newValue.bitfieldValue) << 2) }
    }

    /// Timer/Counter2 Output Compare Match A Interrupt Enable
    public var `ocie2a`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x2) >> 1)) }
      set { registerValue = (registerValue & ~0x2) | (Timsk2.RegisterType(newValue.bitfieldValue) << 1) }
    }

    /// Timer/Counter2 Overflow Interrupt Enable
    public var `toie2`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Timsk2.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// Output Compare Flag 2B
    public var `ocf2b`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x4) >> 2)) }
      set { registerValue = (registerValue & ~0x4) | (Tifr2.RegisterType(newValue.bitfieldValue) << 2) }
    }

    /// Output Compare Flag 2A
    public var `ocf2a`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x2) >> 1)) }
      set { registerValue = (registerValue & ~0x2) | (Tifr2.RegisterType(newValue.bitfieldValue) << 1) }
    }

    /// Timer/Counter2 Overflow Flag
    public var `tov2`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Tifr2.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// Compare Output Mode bits
    public var `com2a`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0xC0) >> 6)) }
      set { registerValue = (registerValue & ~0xC0) | (Tccr2A.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// Compare Output Mode bits
    public var `com2b`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0x30) >> 4)) }
      set { registerValue = (registerValue & ~0x30) | (Tccr2A.RegisterType(newValue.bitfieldValue) << 4) }
    }

    /// Waveform Genration Mode
    public var `wgm2`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0x3) >> 0)) }
      set { registerValue = (registerValue & ~0x3) | (Tccr2A.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// Force Output Compare A
    public var `foc2a`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x80) >> 7)) }
      set { registerValue = (registerValue & ~0x80) | (Tccr2B.RegisterType(newValue.bitfieldValue) << 7) }
    }

    /// Force Output Compare B
    public var `foc2b`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x40) >> 6)) }
      set { registerValue = (registerValue & ~0x40) | (Tccr2B.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// Waveform Generation Mode
    public var `wgm22`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x8) >> 3)) }
      set { registerValue = (registerValue & ~0x8) | (Tccr2B.RegisterType(newValue.bitfieldValue) << 3) }
    }

    /// Clock Select bits
    public var `cs2`: ClkSel3Bit {
      get { .init(bitfieldValue: ClkSel3Bit.BitfieldType((registerValue & 0x7) >> 0)) }
      set { registerValue = (registerValue & ~0x7) | (Tccr2B.RegisterType(newValue.bitfieldValue) << 0) }
    }

    /// CLK_SEL_3BIT
    public enum ClkSel3Bit: UInt8, Bitfield, CaseIterable {
      /// NO_CLOCK_SOURCE_STOPPED: No Clock Source (Stopped) (0x0)
      case noClockSourceStopped = 0x0

      /// RUNNING_NO_PRESCALING: Running, No Prescaling (0x1)
      case runningNoPrescaling = 0x1

      /// RUNNING_CLK_8: Running, CLK/8 (0x2)
      case runningClk8 = 0x2

      /// RUNNING_CLK_32: Running, CLK/32 (0x3)
      case runningClk32 = 0x3

      /// RUNNING_CLK_64: Running, CLK/64 (0x4)
      case runningClk64 = 0x4

      /// RUNNING_CLK_128: Running, CLK/128 (0x5)
      case runningClk128 = 0x5

      /// RUNNING_CLK_256: Running, CLK/256 (0x6)
      case runningClk256 = 0x6

      /// RUNNING_CLK_1024: Running, CLK/1024 (0x7)
      case runningClk1024 = 0x7
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

    /// Enable External Clock Input
    public var `exclk`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x40) >> 6)) }
      set { registerValue = (registerValue & ~0x40) | (Assr.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// Asynchronous Timer/Counter2
    public var `as2`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x20) >> 5)) }
      set { registerValue = (registerValue & ~0x20) | (Assr.RegisterType(newValue.bitfieldValue) << 5) }
    }

    /// Timer/Counter2 Update Busy
    public var `tcn2ub`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x10) >> 4)) }
      set { registerValue = (registerValue & ~0x10) | (Assr.RegisterType(newValue.bitfieldValue) << 4) }
    }

    /// Output Compare Register2 Update Busy
    public var `ocr2aub`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x8) >> 3)) }
      set { registerValue = (registerValue & ~0x8) | (Assr.RegisterType(newValue.bitfieldValue) << 3) }
    }

    /// Output Compare Register 2 Update Busy
    public var `ocr2bub`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x4) >> 2)) }
      set { registerValue = (registerValue & ~0x4) | (Assr.RegisterType(newValue.bitfieldValue) << 2) }
    }

    /// Timer/Counter Control Register2 Update Busy
    public var `tcr2aub`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x2) >> 1)) }
      set { registerValue = (registerValue & ~0x2) | (Assr.RegisterType(newValue.bitfieldValue) << 1) }
    }

    /// Timer/Counter Control Register2 Update Busy
    public var `tcr2bub`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Assr.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// Timer/Counter Synchronization Mode
    public var `tsm`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x80) >> 7)) }
      set { registerValue = (registerValue & ~0x80) | (Gtccr.RegisterType(newValue.bitfieldValue) << 7) }
    }

    /// Prescaler Reset Timer/Counter2
    public var `psrasy`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x2) >> 1)) }
      set { registerValue = (registerValue & ~0x2) | (Gtccr.RegisterType(newValue.bitfieldValue) << 1) }
    }
  }
}

// MARK: - TC2 Peripheral Signals

extension ATmega328P.Tc2 {
  /// The signals definitions for the TC2 peripheral.
  public enum Signals {
  }
}

extension ATmega328P.Tc2.Signals {
  /// The OCA signal -> Pb3 pad.
  public typealias Oca = ATmega328P.Pads.Pb3
}

extension ATmega328P.Tc2.Signals {
  /// The OCB signal -> Pd3 pad.
  public typealias Ocb = ATmega328P.Pads.Pd3
}

extension ATmega328P.Tc2.Signals {
  /// The TOSC1 signal -> Pb6 pad.
  public typealias Tosc1 = ATmega328P.Pads.Pb6
}

extension ATmega328P.Tc2.Signals {
  /// The TOSC2 signal -> Pb7 pad.
  public typealias Tosc2 = ATmega328P.Pads.Pb7
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

    /// Reference Selection Bits
    public var `refs`: AnalogAdcVRef3 {
      get { .init(bitfieldValue: AnalogAdcVRef3.BitfieldType((registerValue & 0xC0) >> 6)) }
      set { registerValue = (registerValue & ~0xC0) | (Admux.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// Left Adjust Result
    public var `adlar`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x20) >> 5)) }
      set { registerValue = (registerValue & ~0x20) | (Admux.RegisterType(newValue.bitfieldValue) << 5) }
    }

    /// Analog Channel Selection Bits
    public var `mux`: AdcMuxSingle {
      get { .init(bitfieldValue: AdcMuxSingle.BitfieldType((registerValue & 0xF) >> 0)) }
      set { registerValue = (registerValue & ~0xF) | (Admux.RegisterType(newValue.bitfieldValue) << 0) }
    }

    /// ANALOG_ADC_V_REF3
    public enum AnalogAdcVRef3: UInt8, Bitfield, CaseIterable {
      /// AREF_INTERNAL_VREF_TURNED_OFF: AREF, Internal Vref turned off (0x0)
      case arefInternalVrefTurnedOff = 0x0

      /// AVCC_WITH_EXTERNAL_CAPACITOR_AT_AREF_PIN: AVCC with external capacitor at AREF pin (0x1)
      case avccWithExternalCapacitorAtArefPin = 0x1

      /// INTERNAL_1_1V_VOLTAGE_REFERENCE_WITH_EXTERNAL_CAPACITOR_AT_AREF_PIN: Internal 1.1V Voltage Reference with external capacitor at AREF pin (0x3)
      case internal11VVoltageReferenceWithExternalCapacitorAtArefPin = 0x3
    }

    /// ADC_MUX_SINGLE
    public enum AdcMuxSingle: UInt8, Bitfield, CaseIterable {
      /// ADC0: ADC Single Ended Input pin 0 (0x0)
      case adc0 = 0x0

      /// ADC1: ADC Single Ended Input pin 1 (0x1)
      case adc1 = 0x1

      /// ADC2: ADC Single Ended Input pin 2 (0x2)
      case adc2 = 0x2

      /// ADC3: ADC Single Ended Input pin 3 (0x3)
      case adc3 = 0x3

      /// ADC4: ADC Single Ended Input pin 4 (0x4)
      case adc4 = 0x4

      /// ADC5: ADC Single Ended Input pin 5 (0x5)
      case adc5 = 0x5

      /// ADC6: ADC Single Ended Input pin 6 (0x6)
      case adc6 = 0x6

      /// ADC7: ADC Single Ended Input pin 7 (0x7)
      case adc7 = 0x7

      /// TEMPSENS: Temperature sensor (0x8)
      case tempsens = 0x8

      /// ADC_VBG: Internal Reference (VBG) (0xe)
      case adcVbg = 0xe

      /// ADC_GND: 0V (GND) (0xf)
      case adcGnd = 0xf
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

    /// ADC Enable
    public var `aden`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x80) >> 7)) }
      set { registerValue = (registerValue & ~0x80) | (Adcsra.RegisterType(newValue.bitfieldValue) << 7) }
    }

    /// ADC Start Conversion
    public var `adsc`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x40) >> 6)) }
      set { registerValue = (registerValue & ~0x40) | (Adcsra.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// ADC  Auto Trigger Enable
    public var `adate`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x20) >> 5)) }
      set { registerValue = (registerValue & ~0x20) | (Adcsra.RegisterType(newValue.bitfieldValue) << 5) }
    }

    /// ADC Interrupt Flag
    public var `adif`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x10) >> 4)) }
      set { registerValue = (registerValue & ~0x10) | (Adcsra.RegisterType(newValue.bitfieldValue) << 4) }
    }

    /// ADC Interrupt Enable
    public var `adie`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x8) >> 3)) }
      set { registerValue = (registerValue & ~0x8) | (Adcsra.RegisterType(newValue.bitfieldValue) << 3) }
    }

    /// ADC  Prescaler Select Bits
    public var `adps`: AnalogAdcPrescaler {
      get { .init(bitfieldValue: AnalogAdcPrescaler.BitfieldType((registerValue & 0x7) >> 0)) }
      set { registerValue = (registerValue & ~0x7) | (Adcsra.RegisterType(newValue.bitfieldValue) << 0) }
    }

    /// ANALOG_ADC_PRESCALER
    public enum AnalogAdcPrescaler: UInt8, Bitfield, CaseIterable {
      /// 2 (0x0)
      case _2 = 0x0

      /// 4 (0x2)
      case _4 = 0x2

      /// 8 (0x3)
      case _8 = 0x3

      /// 16 (0x4)
      case _16 = 0x4

      /// 32 (0x5)
      case _32 = 0x5

      /// 64 (0x6)
      case _64 = 0x6

      /// 128 (0x7)
      case _128 = 0x7
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

    /// ACME
    public var `acme`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x40) >> 6)) }
      set { registerValue = (registerValue & ~0x40) | (Adcsrb.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// ADC Auto Trigger Source bits
    public var `adts`: AnalogAdcAutoTrigger {
      get { .init(bitfieldValue: AnalogAdcAutoTrigger.BitfieldType((registerValue & 0x7) >> 0)) }
      set { registerValue = (registerValue & ~0x7) | (Adcsrb.RegisterType(newValue.bitfieldValue) << 0) }
    }

    /// ANALOG_ADC_AUTO_TRIGGER
    public enum AnalogAdcAutoTrigger: UInt8, Bitfield, CaseIterable {
      /// FREE_RUNNING_MODE: Free Running mode (0x0)
      case freeRunningMode = 0x0

      /// ANALOG_COMPARATOR: Analog Comparator (0x1)
      case analogComparator = 0x1

      /// EXTERNAL_INTERRUPT_REQUEST_0: External Interrupt Request 0 (0x2)
      case externalInterruptRequest0 = 0x2

      /// TIMER_COUNTER0_COMPARE_MATCH_A: Timer/Counter0 Compare Match A (0x3)
      case timerCounter0CompareMatchA = 0x3

      /// TIMER_COUNTER0_OVERFLOW: Timer/Counter0 Overflow (0x4)
      case timerCounter0Overflow = 0x4

      /// TIMER_COUNTER1_COMPARE_MATCH_B: Timer/Counter1 Compare Match B (0x5)
      case timerCounter1CompareMatchB = 0x5

      /// TIMER_COUNTER1_OVERFLOW: Timer/Counter1 Overflow (0x6)
      case timerCounter1Overflow = 0x6

      /// TIMER_COUNTER1_CAPTURE_EVENT: Timer/Counter1 Capture Event (0x7)
      case timerCounter1CaptureEvent = 0x7
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

    /// ADC5D
    public var `adc5d`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x20) >> 5)) }
      set { registerValue = (registerValue & ~0x20) | (Didr0.RegisterType(newValue.bitfieldValue) << 5) }
    }

    /// ADC4D
    public var `adc4d`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x10) >> 4)) }
      set { registerValue = (registerValue & ~0x10) | (Didr0.RegisterType(newValue.bitfieldValue) << 4) }
    }

    /// ADC3D
    public var `adc3d`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x8) >> 3)) }
      set { registerValue = (registerValue & ~0x8) | (Didr0.RegisterType(newValue.bitfieldValue) << 3) }
    }

    /// ADC2D
    public var `adc2d`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x4) >> 2)) }
      set { registerValue = (registerValue & ~0x4) | (Didr0.RegisterType(newValue.bitfieldValue) << 2) }
    }

    /// ADC1D
    public var `adc1d`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x2) >> 1)) }
      set { registerValue = (registerValue & ~0x2) | (Didr0.RegisterType(newValue.bitfieldValue) << 1) }
    }

    /// ADC0D
    public var `adc0d`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Didr0.RegisterType(newValue.bitfieldValue) << 0) }
    }
  }
}

// MARK: - ADC Peripheral Signals

extension ATmega328P.Adc {
  /// The signals definitions for the ADC peripheral.
  public enum Signals {
  }
}

extension ATmega328P.Adc.Signals {
  /// The ADC0 signal -> Pc0 pad.
  public typealias Adc0 = ATmega328P.Pads.Pc0
}

extension ATmega328P.Adc.Signals {
  /// The ADC1 signal -> Pc1 pad.
  public typealias Adc1 = ATmega328P.Pads.Pc1
}

extension ATmega328P.Adc.Signals {
  /// The ADC2 signal -> Pc2 pad.
  public typealias Adc2 = ATmega328P.Pads.Pc2
}

extension ATmega328P.Adc.Signals {
  /// The ADC3 signal -> Pc3 pad.
  public typealias Adc3 = ATmega328P.Pads.Pc3
}

extension ATmega328P.Adc.Signals {
  /// The ADC4 signal -> Pc4 pad.
  public typealias Adc4 = ATmega328P.Pads.Pc4
}

extension ATmega328P.Adc.Signals {
  /// The ADC5 signal -> Pc5 pad.
  public typealias Adc5 = ATmega328P.Pads.Pc5
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

    /// Analog Comparator Disable
    public var `acd`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x80) >> 7)) }
      set { registerValue = (registerValue & ~0x80) | (Acsr.RegisterType(newValue.bitfieldValue) << 7) }
    }

    /// Analog Comparator Bandgap Select
    public var `acbg`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x40) >> 6)) }
      set { registerValue = (registerValue & ~0x40) | (Acsr.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// Analog Compare Output
    public var `aco`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x20) >> 5)) }
      set { registerValue = (registerValue & ~0x20) | (Acsr.RegisterType(newValue.bitfieldValue) << 5) }
    }

    /// Analog Comparator Interrupt Flag
    public var `aci`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x10) >> 4)) }
      set { registerValue = (registerValue & ~0x10) | (Acsr.RegisterType(newValue.bitfieldValue) << 4) }
    }

    /// Analog Comparator Interrupt Enable
    public var `acie`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x8) >> 3)) }
      set { registerValue = (registerValue & ~0x8) | (Acsr.RegisterType(newValue.bitfieldValue) << 3) }
    }

    /// Analog Comparator Input Capture Enable
    public var `acic`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x4) >> 2)) }
      set { registerValue = (registerValue & ~0x4) | (Acsr.RegisterType(newValue.bitfieldValue) << 2) }
    }

    /// Analog Comparator Interrupt Mode Select bits
    public var `acis`: AnalogCompInterrupt {
      get { .init(bitfieldValue: AnalogCompInterrupt.BitfieldType((registerValue & 0x3) >> 0)) }
      set { registerValue = (registerValue & ~0x3) | (Acsr.RegisterType(newValue.bitfieldValue) << 0) }
    }

    /// ANALOG_COMP_INTERRUPT
    public enum AnalogCompInterrupt: UInt8, Bitfield, CaseIterable {
      /// INTERRUPT_ON_TOGGLE: Interrupt on Toggle (0x0)
      case interruptOnToggle = 0x0

      /// INTERRUPT_ON_FALLING_EDGE: Interrupt on Falling Edge (0x2)
      case interruptOnFallingEdge = 0x2

      /// INTERRUPT_ON_RISING_EDGE: Interrupt on Rising Edge (0x3)
      case interruptOnRisingEdge = 0x3
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

    /// AIN1 Digital Input Disable
    public var `ain1d`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x2) >> 1)) }
      set { registerValue = (registerValue & ~0x2) | (Didr1.RegisterType(newValue.bitfieldValue) << 1) }
    }

    /// AIN0 Digital Input Disable
    public var `ain0d`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Didr1.RegisterType(newValue.bitfieldValue) << 0) }
    }
  }
}

// MARK: - AC Peripheral Signals

extension ATmega328P.Ac {
  /// The signals definitions for the AC peripheral.
  public enum Signals {
  }
}

extension ATmega328P.Ac.Signals {
  /// The AIN0 signal -> Pd6 pad.
  public typealias Ain0 = ATmega328P.Pads.Pd6
}

extension ATmega328P.Ac.Signals {
  /// The AIN1 signal -> Pd7 pad.
  public typealias Ain1 = ATmega328P.Pads.Pd7
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

// MARK: - PORTB Peripheral Signals

extension ATmega328P.Portb {
  /// The signals definitions for the PORTB peripheral.
  public enum Signals {
  }
}

extension ATmega328P.Portb.Signals {
  /// The P0 signal -> Pb0 pad.
  public typealias P0 = ATmega328P.Pads.Pb0
}

extension ATmega328P.Portb.Signals {
  /// The P1 signal -> Pb1 pad.
  public typealias P1 = ATmega328P.Pads.Pb1
}

extension ATmega328P.Portb.Signals {
  /// The P2 signal -> Pb2 pad.
  public typealias P2 = ATmega328P.Pads.Pb2
}

extension ATmega328P.Portb.Signals {
  /// The P3 signal -> Pb3 pad.
  public typealias P3 = ATmega328P.Pads.Pb3
}

extension ATmega328P.Portb.Signals {
  /// The P4 signal -> Pb4 pad.
  public typealias P4 = ATmega328P.Pads.Pb4
}

extension ATmega328P.Portb.Signals {
  /// The P5 signal -> Pb5 pad.
  public typealias P5 = ATmega328P.Pads.Pb5
}

extension ATmega328P.Portb.Signals {
  /// The P6 signal -> Pb6 pad.
  public typealias P6 = ATmega328P.Pads.Pb6
}

extension ATmega328P.Portb.Signals {
  /// The P7 signal -> Pb7 pad.
  public typealias P7 = ATmega328P.Pads.Pb7
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

// MARK: - PORTC Peripheral Signals

extension ATmega328P.Portc {
  /// The signals definitions for the PORTC peripheral.
  public enum Signals {
  }
}

extension ATmega328P.Portc.Signals {
  /// The P0 signal -> Pc0 pad.
  public typealias P0 = ATmega328P.Pads.Pc0
}

extension ATmega328P.Portc.Signals {
  /// The P1 signal -> Pc1 pad.
  public typealias P1 = ATmega328P.Pads.Pc1
}

extension ATmega328P.Portc.Signals {
  /// The P2 signal -> Pc2 pad.
  public typealias P2 = ATmega328P.Pads.Pc2
}

extension ATmega328P.Portc.Signals {
  /// The P3 signal -> Pc3 pad.
  public typealias P3 = ATmega328P.Pads.Pc3
}

extension ATmega328P.Portc.Signals {
  /// The P4 signal -> Pc4 pad.
  public typealias P4 = ATmega328P.Pads.Pc4
}

extension ATmega328P.Portc.Signals {
  /// The P5 signal -> Pc5 pad.
  public typealias P5 = ATmega328P.Pads.Pc5
}

extension ATmega328P.Portc.Signals {
  /// The P6 signal -> Pc6 pad.
  public typealias P6 = ATmega328P.Pads.Pc6
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

// MARK: - PORTD Peripheral Signals

extension ATmega328P.Portd {
  /// The signals definitions for the PORTD peripheral.
  public enum Signals {
  }
}

extension ATmega328P.Portd.Signals {
  /// The P0 signal -> Pd0 pad.
  public typealias P0 = ATmega328P.Pads.Pd0
}

extension ATmega328P.Portd.Signals {
  /// The P1 signal -> Pd1 pad.
  public typealias P1 = ATmega328P.Pads.Pd1
}

extension ATmega328P.Portd.Signals {
  /// The P2 signal -> Pd2 pad.
  public typealias P2 = ATmega328P.Pads.Pd2
}

extension ATmega328P.Portd.Signals {
  /// The P3 signal -> Pd3 pad.
  public typealias P3 = ATmega328P.Pads.Pd3
}

extension ATmega328P.Portd.Signals {
  /// The P4 signal -> Pd4 pad.
  public typealias P4 = ATmega328P.Pads.Pd4
}

extension ATmega328P.Portd.Signals {
  /// The P5 signal -> Pd5 pad.
  public typealias P5 = ATmega328P.Pads.Pd5
}

extension ATmega328P.Portd.Signals {
  /// The P6 signal -> Pd6 pad.
  public typealias P6 = ATmega328P.Pads.Pd6
}

extension ATmega328P.Portd.Signals {
  /// The P7 signal -> Pd7 pad.
  public typealias P7 = ATmega328P.Pads.Pd7
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

    /// Force Output Compare A
    public var `foc0a`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x80) >> 7)) }
      set { registerValue = (registerValue & ~0x80) | (Tccr0B.RegisterType(newValue.bitfieldValue) << 7) }
    }

    /// Force Output Compare B
    public var `foc0b`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x40) >> 6)) }
      set { registerValue = (registerValue & ~0x40) | (Tccr0B.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// WGM02
    public var `wgm02`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x8) >> 3)) }
      set { registerValue = (registerValue & ~0x8) | (Tccr0B.RegisterType(newValue.bitfieldValue) << 3) }
    }

    /// Clock Select
    public var `cs0`: ClkSel3BitExt {
      get { .init(bitfieldValue: ClkSel3BitExt.BitfieldType((registerValue & 0x7) >> 0)) }
      set { registerValue = (registerValue & ~0x7) | (Tccr0B.RegisterType(newValue.bitfieldValue) << 0) }
    }

    /// CLK_SEL_3BIT_EXT
    public enum ClkSel3BitExt: UInt8, Bitfield, CaseIterable {
      /// NO_CLOCK_SOURCE_STOPPED: No Clock Source (Stopped) (0x0)
      case noClockSourceStopped = 0x0

      /// RUNNING_NO_PRESCALING: Running, No Prescaling (0x1)
      case runningNoPrescaling = 0x1

      /// RUNNING_CLK_8: Running, CLK/8 (0x2)
      case runningClk8 = 0x2

      /// RUNNING_CLK_64: Running, CLK/64 (0x3)
      case runningClk64 = 0x3

      /// RUNNING_CLK_256: Running, CLK/256 (0x4)
      case runningClk256 = 0x4

      /// RUNNING_CLK_1024: Running, CLK/1024 (0x5)
      case runningClk1024 = 0x5

      /// RUNNING_EXTCLK_TN_FALLING_EDGE: Running, ExtClk Tn Falling Edge (0x6)
      case runningExtclkTnFallingEdge = 0x6

      /// RUNNING_EXTCLK_TN_RISING_EDGE: Running, ExtClk Tn Rising Edge (0x7)
      case runningExtclkTnRisingEdge = 0x7
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

    /// Compare Output Mode, Phase Correct PWM Mode
    public var `com0a`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0xC0) >> 6)) }
      set { registerValue = (registerValue & ~0xC0) | (Tccr0A.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// Compare Output Mode, Fast PWm
    public var `com0b`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0x30) >> 4)) }
      set { registerValue = (registerValue & ~0x30) | (Tccr0A.RegisterType(newValue.bitfieldValue) << 4) }
    }

    /// Waveform Generation Mode
    public var `wgm0`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0x3) >> 0)) }
      set { registerValue = (registerValue & ~0x3) | (Tccr0A.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// Timer/Counter0 Output Compare Match B Interrupt Enable
    public var `ocie0b`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x4) >> 2)) }
      set { registerValue = (registerValue & ~0x4) | (Timsk0.RegisterType(newValue.bitfieldValue) << 2) }
    }

    /// Timer/Counter0 Output Compare Match A Interrupt Enable
    public var `ocie0a`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x2) >> 1)) }
      set { registerValue = (registerValue & ~0x2) | (Timsk0.RegisterType(newValue.bitfieldValue) << 1) }
    }

    /// Timer/Counter0 Overflow Interrupt Enable
    public var `toie0`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Timsk0.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// Timer/Counter0 Output Compare Flag 0B
    public var `ocf0b`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x4) >> 2)) }
      set { registerValue = (registerValue & ~0x4) | (Tifr0.RegisterType(newValue.bitfieldValue) << 2) }
    }

    /// Timer/Counter0 Output Compare Flag 0A
    public var `ocf0a`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x2) >> 1)) }
      set { registerValue = (registerValue & ~0x2) | (Tifr0.RegisterType(newValue.bitfieldValue) << 1) }
    }

    /// Timer/Counter0 Overflow Flag
    public var `tov0`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Tifr0.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// Timer/Counter Synchronization Mode
    public var `tsm`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x80) >> 7)) }
      set { registerValue = (registerValue & ~0x80) | (Gtccr.RegisterType(newValue.bitfieldValue) << 7) }
    }

    /// Prescaler Reset Timer/Counter1 and Timer/Counter0
    public var `psrsync`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Gtccr.RegisterType(newValue.bitfieldValue) << 0) }
    }
  }
}

// MARK: - TC0 Peripheral Signals

extension ATmega328P.Tc0 {
  /// The signals definitions for the TC0 peripheral.
  public enum Signals {
  }
}

extension ATmega328P.Tc0.Signals {
  /// The T signal -> Pd4 pad.
  public typealias T = ATmega328P.Pads.Pd4
}

extension ATmega328P.Tc0.Signals {
  /// The OCB signal -> Pd5 pad.
  public typealias Ocb = ATmega328P.Pads.Pd5
}

extension ATmega328P.Tc0.Signals {
  /// The OCA signal -> Pd6 pad.
  public typealias Oca = ATmega328P.Pads.Pd6
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

    /// External Interrupt Sense Control 1 Bits
    public var `isc1`: InterruptSenseControl {
      get { .init(bitfieldValue: InterruptSenseControl.BitfieldType((registerValue & 0xC) >> 2)) }
      set { registerValue = (registerValue & ~0xC) | (Eicra.RegisterType(newValue.bitfieldValue) << 2) }
    }

    /// External Interrupt Sense Control 0 Bits
    public var `isc0`: InterruptSenseControl {
      get { .init(bitfieldValue: InterruptSenseControl.BitfieldType((registerValue & 0x3) >> 0)) }
      set { registerValue = (registerValue & ~0x3) | (Eicra.RegisterType(newValue.bitfieldValue) << 0) }
    }

    /// INTERRUPT_SENSE_CONTROL: Interrupt Sense Control
    public enum InterruptSenseControl: UInt8, Bitfield, CaseIterable {
      /// LOW_LEVEL_OF_INTX: Low Level of INTX (0x0)
      case lowLevelOfIntx = 0x0

      /// ANY_LOGICAL_CHANGE_OF_INTX: Any Logical Change of INTX (0x1)
      case anyLogicalChangeOfIntx = 0x1

      /// FALLING_EDGE_OF_INTX: Falling Edge of INTX (0x2)
      case fallingEdgeOfIntx = 0x2

      /// RISING_EDGE_OF_INTX: Rising Edge of INTX (0x3)
      case risingEdgeOfIntx = 0x3
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

    /// External Interrupt Request 1 Enable
    public var `int`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0x3) >> 0)) }
      set { registerValue = (registerValue & ~0x3) | (Eimsk.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// External Interrupt Flags
    public var `intf`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0x3) >> 0)) }
      set { registerValue = (registerValue & ~0x3) | (Eifr.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// Pin Change Interrupt Enables
    public var `pcie`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0x7) >> 0)) }
      set { registerValue = (registerValue & ~0x7) | (Pcicr.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// Pin Change Enable Masks
    public var `pcint16`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0xFF) >> 0)) }
      set { registerValue = (registerValue & ~0xFF) | (Pcmsk2.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// Pin Change Enable Masks
    public var `pcint8`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0x7F) >> 0)) }
      set { registerValue = (registerValue & ~0x7F) | (Pcmsk1.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// Pin Change Enable Masks
    public var `pcint`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0xFF) >> 0)) }
      set { registerValue = (registerValue & ~0xFF) | (Pcmsk0.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// Pin Change Interrupt Flags
    public var `pcif`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0x7) >> 0)) }
      set { registerValue = (registerValue & ~0x7) | (Pcifr.RegisterType(newValue.bitfieldValue) << 0) }
    }
  }
}

// MARK: - EXINT Peripheral Signals

extension ATmega328P.Exint {
  /// The signals definitions for the EXINT peripheral.
  public enum Signals {
  }
}

extension ATmega328P.Exint.Signals {
  /// The INT1 signal -> Pd3 pad.
  public typealias Int1 = ATmega328P.Pads.Pd3
}

extension ATmega328P.Exint.Signals {
  /// The PCINT19 signal -> Pd3 pad.
  public typealias Pcint19 = ATmega328P.Pads.Pd3
}

extension ATmega328P.Exint.Signals {
  /// The PCINT20 signal -> Pd4 pad.
  public typealias Pcint20 = ATmega328P.Pads.Pd4
}

extension ATmega328P.Exint.Signals {
  /// The PCINT6 signal -> Pb6 pad.
  public typealias Pcint6 = ATmega328P.Pads.Pb6
}

extension ATmega328P.Exint.Signals {
  /// The PCINT7 signal -> Pb7 pad.
  public typealias Pcint7 = ATmega328P.Pads.Pb7
}

extension ATmega328P.Exint.Signals {
  /// The PCINT21 signal -> Pd5 pad.
  public typealias Pcint21 = ATmega328P.Pads.Pd5
}

extension ATmega328P.Exint.Signals {
  /// The PCINT22 signal -> Pd6 pad.
  public typealias Pcint22 = ATmega328P.Pads.Pd6
}

extension ATmega328P.Exint.Signals {
  /// The PCINT23 signal -> Pd7 pad.
  public typealias Pcint23 = ATmega328P.Pads.Pd7
}

extension ATmega328P.Exint.Signals {
  /// The PCINT0 signal -> Pb0 pad.
  public typealias Pcint0 = ATmega328P.Pads.Pb0
}

extension ATmega328P.Exint.Signals {
  /// The PCINT1 signal -> Pb1 pad.
  public typealias Pcint1 = ATmega328P.Pads.Pb1
}

extension ATmega328P.Exint.Signals {
  /// The PCINT2 signal -> Pb2 pad.
  public typealias Pcint2 = ATmega328P.Pads.Pb2
}

extension ATmega328P.Exint.Signals {
  /// The PCINT3 signal -> Pb3 pad.
  public typealias Pcint3 = ATmega328P.Pads.Pb3
}

extension ATmega328P.Exint.Signals {
  /// The PCINT4 signal -> Pb4 pad.
  public typealias Pcint4 = ATmega328P.Pads.Pb4
}

extension ATmega328P.Exint.Signals {
  /// The PCINT5 signal -> Pb5 pad.
  public typealias Pcint5 = ATmega328P.Pads.Pb5
}

extension ATmega328P.Exint.Signals {
  /// The PCINT8 signal -> Pc0 pad.
  public typealias Pcint8 = ATmega328P.Pads.Pc0
}

extension ATmega328P.Exint.Signals {
  /// The PCINT9 signal -> Pc1 pad.
  public typealias Pcint9 = ATmega328P.Pads.Pc1
}

extension ATmega328P.Exint.Signals {
  /// The PCINT10 signal -> Pc2 pad.
  public typealias Pcint10 = ATmega328P.Pads.Pc2
}

extension ATmega328P.Exint.Signals {
  /// The PCINT11 signal -> Pc3 pad.
  public typealias Pcint11 = ATmega328P.Pads.Pc3
}

extension ATmega328P.Exint.Signals {
  /// The PCINT12 signal -> Pc4 pad.
  public typealias Pcint12 = ATmega328P.Pads.Pc4
}

extension ATmega328P.Exint.Signals {
  /// The PCINT13 signal -> Pc5 pad.
  public typealias Pcint13 = ATmega328P.Pads.Pc5
}

extension ATmega328P.Exint.Signals {
  /// The PCINT14 signal -> Pc6 pad.
  public typealias Pcint14 = ATmega328P.Pads.Pc6
}

extension ATmega328P.Exint.Signals {
  /// The PCINT16 signal -> Pd0 pad.
  public typealias Pcint16 = ATmega328P.Pads.Pd0
}

extension ATmega328P.Exint.Signals {
  /// The PCINT17 signal -> Pd1 pad.
  public typealias Pcint17 = ATmega328P.Pads.Pd1
}

extension ATmega328P.Exint.Signals {
  /// The PCINT18 signal -> Pd2 pad.
  public typealias Pcint18 = ATmega328P.Pads.Pd2
}

extension ATmega328P.Exint.Signals {
  /// The INT0 signal -> Pd2 pad.
  public typealias Int0 = ATmega328P.Pads.Pd2
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

    /// SPI Interrupt Flag
    public var `spif`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x80) >> 7)) }
      set { registerValue = (registerValue & ~0x80) | (Spsr.RegisterType(newValue.bitfieldValue) << 7) }
    }

    /// Write Collision Flag
    public var `wcol`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x40) >> 6)) }
      set { registerValue = (registerValue & ~0x40) | (Spsr.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// Double SPI Speed Bit
    public var `spi2x`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Spsr.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// SPI Interrupt Enable
    public var `spie`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x80) >> 7)) }
      set { registerValue = (registerValue & ~0x80) | (Spcr.RegisterType(newValue.bitfieldValue) << 7) }
    }

    /// SPI Enable
    public var `spe`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x40) >> 6)) }
      set { registerValue = (registerValue & ~0x40) | (Spcr.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// Data Order
    public var `dord`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x20) >> 5)) }
      set { registerValue = (registerValue & ~0x20) | (Spcr.RegisterType(newValue.bitfieldValue) << 5) }
    }

    /// Master/Slave Select
    public var `mstr`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x10) >> 4)) }
      set { registerValue = (registerValue & ~0x10) | (Spcr.RegisterType(newValue.bitfieldValue) << 4) }
    }

    /// Clock polarity
    public var `cpol`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x8) >> 3)) }
      set { registerValue = (registerValue & ~0x8) | (Spcr.RegisterType(newValue.bitfieldValue) << 3) }
    }

    /// Clock Phase
    public var `cpha`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x4) >> 2)) }
      set { registerValue = (registerValue & ~0x4) | (Spcr.RegisterType(newValue.bitfieldValue) << 2) }
    }

    /// SPI Clock Rate Selects
    public var `spr`: CommSckRate3Bit {
      get { .init(bitfieldValue: CommSckRate3Bit.BitfieldType((registerValue & 0x3) >> 0)) }
      set { registerValue = (registerValue & ~0x3) | (Spcr.RegisterType(newValue.bitfieldValue) << 0) }
    }

    /// COMM_SCK_RATE_3BIT
    public enum CommSckRate3Bit: UInt8, Bitfield, CaseIterable {
      /// FOSC_2_OR_FOSC_4: fosc/2 or fosc/4 (0x0)
      case fosc2OrFosc4 = 0x0

      /// FOSC_8_OR_FOSC_16: fosc/8 or fosc/16 (0x1)
      case fosc8OrFosc16 = 0x1

      /// FOSC_32_OR_FOSC_64: fosc/32 or fosc/64 (0x2)
      case fosc32OrFosc64 = 0x2

      /// FOSC_64_OR_FOSC_128: fosc/64 or fosc/128 (0x3)
      case fosc64OrFosc128 = 0x3
    }
  }
}

// MARK: - SPI Peripheral Signals

extension ATmega328P.Spi {
  /// The signals definitions for the SPI peripheral.
  public enum Signals {
  }
}

extension ATmega328P.Spi.Signals {
  /// The SS signal -> Pb2 pad.
  public typealias Ss = ATmega328P.Pads.Pb2
}

extension ATmega328P.Spi.Signals {
  /// The MOSI signal -> Pb3 pad.
  public typealias Mosi = ATmega328P.Pads.Pb3
}

extension ATmega328P.Spi.Signals {
  /// The MISO signal -> Pb4 pad.
  public typealias Miso = ATmega328P.Pads.Pb4
}

extension ATmega328P.Spi.Signals {
  /// The SCK signal -> Pb5 pad.
  public typealias Sck = ATmega328P.Pads.Pb5
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

    /// Watchdog Timeout Interrupt Flag
    public var `wdif`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x80) >> 7)) }
      set { registerValue = (registerValue & ~0x80) | (Wdtcsr.RegisterType(newValue.bitfieldValue) << 7) }
    }

    /// Watchdog Timeout Interrupt Enable
    public var `wdie`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x40) >> 6)) }
      set { registerValue = (registerValue & ~0x40) | (Wdtcsr.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// Watchdog Timer Prescaler Bits
    public var `wdp`: WdogTimerPrescale4Bits {
      get { .init(bitfieldValue: WdogTimerPrescale4Bits.BitfieldType((registerValue & 0x27) >> 0)) }
      set { registerValue = (registerValue & ~0x27) | (Wdtcsr.RegisterType(newValue.bitfieldValue) << 0) }
    }

    /// Watchdog Change Enable
    public var `wdce`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x10) >> 4)) }
      set { registerValue = (registerValue & ~0x10) | (Wdtcsr.RegisterType(newValue.bitfieldValue) << 4) }
    }

    /// Watch Dog Enable
    public var `wde`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x8) >> 3)) }
      set { registerValue = (registerValue & ~0x8) | (Wdtcsr.RegisterType(newValue.bitfieldValue) << 3) }
    }

    /// WDOG_TIMER_PRESCALE_4BITS
    public enum WdogTimerPrescale4Bits: UInt8, Bitfield, CaseIterable {
      /// OSCILLATOR_CYCLES_2K: Oscillator Cycles 2K (0x0)
      case oscillatorCycles2K = 0x0

      /// OSCILLATOR_CYCLES_4K: Oscillator Cycles 4K (0x1)
      case oscillatorCycles4K = 0x1

      /// OSCILLATOR_CYCLES_8K: Oscillator Cycles 8K (0x2)
      case oscillatorCycles8K = 0x2

      /// OSCILLATOR_CYCLES_16K: Oscillator Cycles 16K (0x3)
      case oscillatorCycles16K = 0x3

      /// OSCILLATOR_CYCLES_32K: Oscillator Cycles 32K (0x4)
      case oscillatorCycles32K = 0x4

      /// OSCILLATOR_CYCLES_64K: Oscillator Cycles 64K (0x5)
      case oscillatorCycles64K = 0x5

      /// OSCILLATOR_CYCLES_128K: Oscillator Cycles 128K (0x6)
      case oscillatorCycles128K = 0x6

      /// OSCILLATOR_CYCLES_256K: Oscillator Cycles 256K (0x7)
      case oscillatorCycles256K = 0x7

      /// OSCILLATOR_CYCLES_512K: Oscillator Cycles 512K (0x8)
      case oscillatorCycles512K = 0x8

      /// OSCILLATOR_CYCLES_1024K: Oscillator Cycles 1024K (0x9)
      case oscillatorCycles1024K = 0x9
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

    /// EEPROM Programming Mode Bits
    public var `eepm`: EepMode {
      get { .init(bitfieldValue: EepMode.BitfieldType((registerValue & 0x30) >> 4)) }
      set { registerValue = (registerValue & ~0x30) | (Eecr.RegisterType(newValue.bitfieldValue) << 4) }
    }

    /// EEPROM Ready Interrupt Enable
    public var `eerie`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x8) >> 3)) }
      set { registerValue = (registerValue & ~0x8) | (Eecr.RegisterType(newValue.bitfieldValue) << 3) }
    }

    /// EEPROM Master Write Enable
    public var `eempe`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x4) >> 2)) }
      set { registerValue = (registerValue & ~0x4) | (Eecr.RegisterType(newValue.bitfieldValue) << 2) }
    }

    /// EEPROM Write Enable
    public var `eepe`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x2) >> 1)) }
      set { registerValue = (registerValue & ~0x2) | (Eecr.RegisterType(newValue.bitfieldValue) << 1) }
    }

    /// EEPROM Read Enable
    public var `eere`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Eecr.RegisterType(newValue.bitfieldValue) << 0) }
    }

    /// EEP_MODE
    public enum EepMode: UInt8, Bitfield, CaseIterable {
      /// ERASE_AND_WRITE_IN_ONE_OPERATION: Erase and Write in one operation (0x0)
      case eraseAndWriteInOneOperation = 0x0

      /// ERASE_ONLY: Erase Only (0x1)
      case eraseOnly = 0x1

      /// WRITE_ONLY: Write Only (0x2)
      case writeOnly = 0x2
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

    /// Power Reduction TWI
    public var `prtwi`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x80) >> 7)) }
      set { registerValue = (registerValue & ~0x80) | (Prr.RegisterType(newValue.bitfieldValue) << 7) }
    }

    /// Power Reduction Timer/Counter2
    public var `prtim2`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x40) >> 6)) }
      set { registerValue = (registerValue & ~0x40) | (Prr.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// Power Reduction Timer/Counter0
    public var `prtim0`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x20) >> 5)) }
      set { registerValue = (registerValue & ~0x20) | (Prr.RegisterType(newValue.bitfieldValue) << 5) }
    }

    /// Power Reduction Timer/Counter1
    public var `prtim1`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x8) >> 3)) }
      set { registerValue = (registerValue & ~0x8) | (Prr.RegisterType(newValue.bitfieldValue) << 3) }
    }

    /// Power Reduction Serial Peripheral Interface
    public var `prspi`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x4) >> 2)) }
      set { registerValue = (registerValue & ~0x4) | (Prr.RegisterType(newValue.bitfieldValue) << 2) }
    }

    /// Power Reduction USART
    public var `prusart0`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x2) >> 1)) }
      set { registerValue = (registerValue & ~0x2) | (Prr.RegisterType(newValue.bitfieldValue) << 1) }
    }

    /// Power Reduction ADC
    public var `pradc`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Prr.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// Oscillator Calibration 
    public var `osccal`: UInt8 {
      get { .init(bitfieldValue: UInt8.BitfieldType((registerValue & 0xFF) >> 0)) }
      set { registerValue = (registerValue & ~0xFF) | (Osccal.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// Clock Prescaler Change Enable
    public var `clkpce`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x80) >> 7)) }
      set { registerValue = (registerValue & ~0x80) | (Clkpr.RegisterType(newValue.bitfieldValue) << 7) }
    }

    /// Clock Prescaler Select Bits
    public var `clkps`: CpuClkPrescale4BitsSmall {
      get { .init(bitfieldValue: CpuClkPrescale4BitsSmall.BitfieldType((registerValue & 0xF) >> 0)) }
      set { registerValue = (registerValue & ~0xF) | (Clkpr.RegisterType(newValue.bitfieldValue) << 0) }
    }

    /// CPU_CLK_PRESCALE_4_BITS_SMALL
    public enum CpuClkPrescale4BitsSmall: UInt8, Bitfield, CaseIterable {
      /// 1 (0x0)
      case _1 = 0x0

      /// 2 (0x1)
      case _2 = 0x1

      /// 4 (0x2)
      case _4 = 0x2

      /// 8 (0x3)
      case _8 = 0x3

      /// 16 (0x4)
      case _16 = 0x4

      /// 32 (0x5)
      case _32 = 0x5

      /// 64 (0x6)
      case _64 = 0x6

      /// 128 (0x7)
      case _128 = 0x7

      /// 256 (0x8)
      case _256 = 0x8
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

    /// Global Interrupt Enable
    public var `i`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x80) >> 7)) }
      set { registerValue = (registerValue & ~0x80) | (Sreg.RegisterType(newValue.bitfieldValue) << 7) }
    }

    /// Bit Copy Storage
    public var `t`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x40) >> 6)) }
      set { registerValue = (registerValue & ~0x40) | (Sreg.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// Half Carry Flag
    public var `h`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x20) >> 5)) }
      set { registerValue = (registerValue & ~0x20) | (Sreg.RegisterType(newValue.bitfieldValue) << 5) }
    }

    /// Sign Bit
    public var `s`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x10) >> 4)) }
      set { registerValue = (registerValue & ~0x10) | (Sreg.RegisterType(newValue.bitfieldValue) << 4) }
    }

    /// Two's Complement Overflow Flag
    public var `v`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x8) >> 3)) }
      set { registerValue = (registerValue & ~0x8) | (Sreg.RegisterType(newValue.bitfieldValue) << 3) }
    }

    /// Negative Flag
    public var `n`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x4) >> 2)) }
      set { registerValue = (registerValue & ~0x4) | (Sreg.RegisterType(newValue.bitfieldValue) << 2) }
    }

    /// Zero Flag
    public var `z`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x2) >> 1)) }
      set { registerValue = (registerValue & ~0x2) | (Sreg.RegisterType(newValue.bitfieldValue) << 1) }
    }

    /// Carry Flag
    public var `c`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Sreg.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// SPM Interrupt Enable
    public var `spmie`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x80) >> 7)) }
      set { registerValue = (registerValue & ~0x80) | (Spmcsr.RegisterType(newValue.bitfieldValue) << 7) }
    }

    /// Read-While-Write Section Busy
    public var `rwwsb`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x40) >> 6)) }
      set { registerValue = (registerValue & ~0x40) | (Spmcsr.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// Signature Row Read
    public var `sigrd`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x20) >> 5)) }
      set { registerValue = (registerValue & ~0x20) | (Spmcsr.RegisterType(newValue.bitfieldValue) << 5) }
    }

    /// Read-While-Write section read enable
    public var `rwwsre`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x10) >> 4)) }
      set { registerValue = (registerValue & ~0x10) | (Spmcsr.RegisterType(newValue.bitfieldValue) << 4) }
    }

    /// Boot Lock Bit Set
    public var `blbset`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x8) >> 3)) }
      set { registerValue = (registerValue & ~0x8) | (Spmcsr.RegisterType(newValue.bitfieldValue) << 3) }
    }

    /// Page Write
    public var `pgwrt`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x4) >> 2)) }
      set { registerValue = (registerValue & ~0x4) | (Spmcsr.RegisterType(newValue.bitfieldValue) << 2) }
    }

    /// Page Erase
    public var `pgers`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x2) >> 1)) }
      set { registerValue = (registerValue & ~0x2) | (Spmcsr.RegisterType(newValue.bitfieldValue) << 1) }
    }

    /// Store Program Memory
    public var `spmen`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Spmcsr.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// BOD Sleep
    public var `bods`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x40) >> 6)) }
      set { registerValue = (registerValue & ~0x40) | (Mcucr.RegisterType(newValue.bitfieldValue) << 6) }
    }

    /// BOD Sleep Enable
    public var `bodse`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x20) >> 5)) }
      set { registerValue = (registerValue & ~0x20) | (Mcucr.RegisterType(newValue.bitfieldValue) << 5) }
    }

    /// PUD
    public var `pud`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x10) >> 4)) }
      set { registerValue = (registerValue & ~0x10) | (Mcucr.RegisterType(newValue.bitfieldValue) << 4) }
    }

    /// IVSEL
    public var `ivsel`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x2) >> 1)) }
      set { registerValue = (registerValue & ~0x2) | (Mcucr.RegisterType(newValue.bitfieldValue) << 1) }
    }

    /// IVCE
    public var `ivce`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Mcucr.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// Watchdog Reset Flag
    public var `wdrf`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x8) >> 3)) }
      set { registerValue = (registerValue & ~0x8) | (Mcusr.RegisterType(newValue.bitfieldValue) << 3) }
    }

    /// Brown-out Reset Flag
    public var `borf`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x4) >> 2)) }
      set { registerValue = (registerValue & ~0x4) | (Mcusr.RegisterType(newValue.bitfieldValue) << 2) }
    }

    /// External Reset Flag
    public var `extrf`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x2) >> 1)) }
      set { registerValue = (registerValue & ~0x2) | (Mcusr.RegisterType(newValue.bitfieldValue) << 1) }
    }

    /// Power-on reset flag
    public var `porf`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Mcusr.RegisterType(newValue.bitfieldValue) << 0) }
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

    /// Sleep Mode Select Bits
    public var `sm`: CpuSleepMode3Bits2 {
      get { .init(bitfieldValue: CpuSleepMode3Bits2.BitfieldType((registerValue & 0xE) >> 1)) }
      set { registerValue = (registerValue & ~0xE) | (Smcr.RegisterType(newValue.bitfieldValue) << 1) }
    }

    /// Sleep Enable
    public var `se`: Bool {
      get { .init(bitfieldValue: Bool.BitfieldType((registerValue & 0x1) >> 0)) }
      set { registerValue = (registerValue & ~0x1) | (Smcr.RegisterType(newValue.bitfieldValue) << 0) }
    }

    /// CPU_SLEEP_MODE_3BITS2
    public enum CpuSleepMode3Bits2: UInt8, Bitfield, CaseIterable {
      /// IDLE: Idle (0x0)
      case idle = 0x0

      /// ADC: ADC Noise Reduction (If Available) (0x1)
      case adc = 0x1

      /// PDOWN: Power Down (0x2)
      case pdown = 0x2

      /// PSAVE: Power Save (0x3)
      case psave = 0x3

      /// VAL_0x04: Reserved (0x4)
      case val0X04 = 0x4

      /// VAL_0x05: Reserved (0x5)
      case val0X05 = 0x5

      /// STDBY: Standby (0x6)
      case stdby = 0x6

      /// ESTDBY: Extended Standby (0x7)
      case estdby = 0x7
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

// MARK: - CPU Peripheral Signals

extension ATmega328P.Cpu {
  /// The signals definitions for the CPU peripheral.
  public enum Signals {
  }
}

extension ATmega328P.Cpu.Signals {
  /// The CLK0 signal -> Pb0 pad.
  public typealias Clk0 = ATmega328P.Pads.Pb0
}

extension ATmega328P.Cpu.Signals {
  /// The XTAL1 signal -> Pb6 pad.
  public typealias Xtal1 = ATmega328P.Pads.Pb6
}

extension ATmega328P.Cpu.Signals {
  /// The XTAL2 signal -> Pb7 pad.
  public typealias Xtal2 = ATmega328P.Pads.Pb7
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
