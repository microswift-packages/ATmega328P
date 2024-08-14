import HAL

extension ATmega328P.Usart0: Usart {
  @inlinable @inline(__always) public static var ucsra: UInt8 {
    @inlinable @inline(__always) get { Self.`ucsr0a`.registerValue }
    @inlinable @inline(__always) set { Self.`ucsr0a`.registerValue = newValue }
  }

  @inlinable @inline(__always) public static var ucsrb: UInt8 {
    @inlinable @inline(__always) get { Self.`ucsr0b`.registerValue }
    @inlinable @inline(__always) set { Self.`ucsr0b`.registerValue = newValue }
  }

  @inlinable @inline(__always) public static var ucsrc: UInt8 {
    @inlinable @inline(__always) get { Self.`ucsr0c`.registerValue }
    @inlinable @inline(__always) set { Self.`ucsr0c`.registerValue = newValue }
  }

  @inlinable @inline(__always) public static var udr: UInt8 {
    @inlinable @inline(__always) get { Self.`udr0` }
    @inlinable @inline(__always) set { Self.`udr0` = newValue }
  }

  @inlinable @inline(__always) public static var ubrr: UInt16 {
    @inlinable @inline(__always) get { Self.`ubrr0` }
    @inlinable @inline(__always) set { Self.`ubrr0` = newValue }
  }
}

extension ATmega328P.Usart0: UartPeripheral {
  /// The data register type.
  public typealias DataRegisterType = UInt8

  /// The data register.
  @inlinable @inline(__always) public static var data: UInt8 {
    @inlinable @inline(__always) get { Self.`udr0` }
    @inlinable @inline(__always) set { Self.`udr0` = newValue }
  }

  /// The baud rate register.
  @inlinable @inline(__always) public static var baudRateRegister: UInt16 {
    @inlinable @inline(__always) get { Self.`ubrr0` }
    @inlinable @inline(__always) set { Self.`ubrr0` = newValue }
  }

  @inlinable @inline(__always) public static func configure(mode config: UartModeConfig) {
    Self.asyncDoubleSpeed = config.doubleSpeed
    Self.mode = config.mode
    Self.baudRateRegister = .init(registerValue: config.baudRateRegister.registerValue)
  }

  /// The receiveComplete bitfield.
  @inlinable @inline(never) public static var receiveComplete: Bool { self.`ucsr0a`.`rxc0` }

  /// The transmitComplete bitfield.
  @inlinable @inline(never) public static var transmitComplete: Bool { self.`ucsr0a`.`txc0` }

  /// The dataRegisterEmpty bitfield.
  @inlinable @inline(never) public static var dataRegisterEmpty: Bool { self.`ucsr0a`.`udre0` }

  /// The frameError bitfield.
  @inlinable @inline(__always) public static var frameError: Bool { self.`ucsr0a`.`fe0` }

  /// The dataOverRun bitfield.
  @inlinable @inline(__always) public static var dataOverRun: Bool { self.`ucsr0a`.`dor0` }

  /// The parityError bitfield.
  @inlinable @inline(__always) public static var parityError: Bool { self.`ucsr0a`.`upe0` }

  /// The asyncDoubleSpeed bitfield.
  @inlinable @inline(__always) public internal(set) static var asyncDoubleSpeed: Bool {
    @inlinable @inline(__always) get { self.`ucsr0a`.`u2x0` }
    set { Self.`ucsr0a`.`u2x0` = newValue }
  }

  /// The multiProcessorCommunicationMode bitfield.
  @inlinable @inline(__always) public static var multiProcessorCommunicationMode: Bool {
    @inlinable @inline(__always) get { self.`ucsr0a`.`mpcm0` }
    @inlinable @inline(__always) set { Self.`ucsr0a`.`mpcm0` = newValue }
  }

  /// The receiverEnable bitfield.
  @inlinable @inline(__always) public static var receiverEnable: Bool {
    @inlinable @inline(__always) get { self.`ucsr0b`.`rxen0` }
    @inlinable @inline(__always) set { Self.`ucsr0b`.`rxen0` = newValue }
  }

  /// The transmitterEnable bitfield.
  @inlinable @inline(__always) public static var transmitterEnable: Bool {
    @inlinable @inline(__always) get { self.`ucsr0b`.`txen0` }
    @inlinable @inline(__always) set { Self.`ucsr0b`.`txen0` = newValue }
  }

  /// The receiveDataBit8 bitfield.
  @inlinable @inline(__always) public static var receiveDataBit8: Bool { self.`ucsr0b`.`rxb80` }

  /// The transmitDataBit8 bitfield.
  @inlinable @inline(__always) public static var transmitDataBit8: Bool {
    @inlinable @inline(__always) get { self.`ucsr0b`.`txb80` }
    @inlinable @inline(__always) set { Self.`ucsr0b`.`txb80` = newValue }
  }

  /// The mode bitfield.
  @inlinable @inline(__always) public internal(set) static var mode: UartModeSelect {
    @inlinable @inline(__always) get { UartModeSelect(bitfieldValue: Self.`ucsr0c`.`umsel0`.bitfieldValue) }
    set { Self.`ucsr0c`.`umsel0` = Ucsr0C.CommUsartMode2Bit(bitfieldValue: newValue.bitfieldValue) }
  }

  /// The parityMode bitfield.
  @inlinable @inline(__always) public static var parityMode: UartParityMode {
    @inlinable @inline(__always) get { UartParityMode(bitfieldValue: Self.`ucsr0c`.`upm0`.bitfieldValue) }
    @inlinable @inline(__always) set { Self.`ucsr0c`.`upm0` = Ucsr0C.CommUpmParityMode(bitfieldValue: newValue.bitfieldValue) }
  }

  /// The numberOfStopBits bitfield.
  @inlinable @inline(__always) public static var numberOfStopBits: UartNumberOfStopBits {
    @inlinable @inline(__always) get { UartNumberOfStopBits(bitfieldValue: Self.`ucsr0c`.`usbs0`.bitfieldValue) }
    @inlinable @inline(__always) set { Self.`ucsr0c`.`usbs0` = Ucsr0C.CommStopBitSel(bitfieldValue: newValue.bitfieldValue) }
  }

  /// The clockPolarity bitfield.
  @inlinable @inline(__always) public static var clockPolarity: UartClockPolarity {
    @inlinable @inline(__always) get { UartClockPolarity(bitfieldValue: Self.`ucsr0c`.`ucpol0`.bitfieldValue) }
    @inlinable @inline(__always) set { Self.`ucsr0c`.`ucpol0` = Bool(bitfieldValue: newValue.bitfieldValue) }
  }

  @inlinable @inline(__always) public static var numberOfDataBits: UartNumberOfDataBits {
    @inlinable @inline(__always) get {
      let size = Self.`ucsr0c`.`ucsz0`.bitfieldValue
      let size2 = Self.`ucsr0b`.`ucsz02`.bitfieldValue
      let fullSize = (size2 << 2) | size
      return UartNumberOfDataBits(rawValue: fullSize) ?? .five
    }
    @inlinable @inline(__always) set {
      let size = newValue.rawValue & 0x03
      let size2 = (newValue.rawValue >> 2) == 0x01
      Self.`ucsr0c`.`ucsz0` = .init(bitfieldValue: size)
      Self.`ucsr0b`.`ucsz02` = .init(bitfieldValue: size2)
    }
  }
}

extension ATmega328P.Usart0: HasUart {
  /// The UART peripheral is its own `Uart` type.
  public typealias Uart = Self
}
