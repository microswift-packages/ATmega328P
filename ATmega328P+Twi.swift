import HAL

extension ATmega328P.Twi: Twi {
  /// Low level register conformance.
  /// We believe there's never multiple TWI so no need for detailed property
  /// breakouts.
}
// Adds ``HAL/TwiPeripheral`` conformance to the ``ATmega328P/Twi`` peripheral.

extension ATmega328P.Twi: TwiPeripheral, HasTwi {
  /// The control register. This contains several control and status flags. Often, they need to be set
  /// simultaneously. For example, this is a typical sequence for starting a TWI transaction:
  /// ```swift
  /// twi.controlRegister = .init(
  ///   interruptFlag: true,
  ///   startCondition: true,
  ///   enabled: true
  /// )
  /// ```
  /// By passing in the register value as a parameter, all flags can be set in a single operation.
  @inlinable @inline(__always) internal static var controlRegister: TwiControlRegister {
    @inlinable @inline(__always) get { .init(registerValue: Self.`twcr`.registerValue) }
    set { Self.`twcr` = .init(registerValue: newValue.registerValue) }
  }

  /// Configures the TWI peripheral with the given settings. These will be written to the control register simultaneously.
  /// - Parameters:
  ///   - interruptFlag: If `true`, the TWI interrupt flag will be set.
  ///   - enableAcknowledge: If `true`, the TWI will acknowledge the reception of data.
  ///   - startCondition: If `true`, a start condition will be generated.
  ///   - stopCondition: If `true`, a stop condition will be generated.
  ///   - enabled: If `true`, the TWI will be enabled.
  @inlinable @inline(__always) public static func control(interruptFlag: Bool, enableAcknowledge: Bool, startCondition: Bool, stopCondition: Bool, enabled: Bool) {
    Self.controlRegister = .init(interruptFlag: interruptFlag, enableAcknowledge: enableAcknowledge, startCondition: startCondition, stopCondition: stopCondition, enabled: enabled)
  }

  /// Checks if the TWI peripheral is ready to send or receive data. This is true when the TWI interrupt flag is set.
  @inlinable @inline(__always) public static var isReady: Bool { Self.controlRegister.interruptFlag }

  /// Indicates if sending acknowledgement is enabled. This is true when the TWI acknowledge bit is set in the control register.
  @inlinable @inline(__always) public static var acknowledgeEnabled: Bool { Self.controlRegister.enableAcknowledge }

  /// Indicates if the TWI peripheral is generating a start condition. This is true when the TWI start bit is set in the control register.
  @inlinable @inline(__always) public static var startConditionEnabled: Bool { Self.controlRegister.startCondition }

  /// Indicates if the TWI peripheral is generating a stop condition. This is true when the TWI stop bit is set in the control register.
  @inlinable @inline(__always) public static var stopConditionEnabled: Bool { Self.controlRegister.stopCondition }

  /// Indicates if there was a write collision. This is true when the TWI write collision bit is set in the control register.
  @inlinable @inline(__always) public static var hadWriteCollision: Bool { Self.controlRegister.hadWriteCollision }

  /// Indicates if the TWI peripheral is enabled. This is true when the TWI is enabled in the control register.
  @inlinable @inline(__always) public static var enabled: Bool { Self.controlRegister.enabled }

  /// The Two Wire Interface peripheral's slave address. Only used when in 'Slave' mode.
  @inlinable @inline(__always) public static var slaveAddress: TwiSlaveAddress {
    @inlinable @inline(__always) get { .init(rawValue: Self.`twar`.`twa`.bitfieldValue) }
    @inlinable @inline(__always) set { Self.`twar`.`twa` = .init(bitfieldValue: newValue.rawValue) }
  }

  /// Do we respond to the general call address?
  @inlinable @inline(__always) public static var respondToGeneralCall: Bool {
    @inlinable @inline(__always) get { .init(bitfieldValue: Self.`twar`.`twgce`.bitfieldValue) }
    @inlinable @inline(__always) set { Self.`twar`.`twgce` = .init(bitfieldValue: newValue.bitfieldValue) }
  }

  /// The Two Wire Interface peripheral's bit rate register.
  @inlinable @inline(__always) public static var bitRateRegister: UInt8 {
    @inlinable @inline(__always) get { .init(registerValue: Self.`twbr`.registerValue) }
    @inlinable @inline(__always) set { Self.`twbr` = .init(registerValue: newValue.registerValue) }
  }

  /// The prescaler value.
  @inlinable @inline(__always) public static var prescaler: TwiPrescaler {
    @inlinable @inline(__always) get { .init(bitfieldValue: Self.`twsr`.`twps`.bitfieldValue) }
    @inlinable @inline(__always) set { Self.`twsr`.`twps` = .init(bitfieldValue: newValue.bitfieldValue) }
  }

  /// The data.
  @inlinable @inline(__always) public static var dataRegister: UInt8 {
    @inlinable @inline(__always) get { .init(registerValue: Self.`twdr`.registerValue) }
    @inlinable @inline(__always) set { Self.`twdr` = .init(registerValue: newValue.registerValue) }
  }

  /// The status flag.
  @inlinable @inline(__always) public static var status: UInt8 {
    @inlinable @inline(__always) get { .init(bitfieldValue: Self.`twsr`.`tws3`.bitfieldValue << 3) }
    @inlinable @inline(__always) set { Self.`twsr`.`tws3` = .init(bitfieldValue: newValue.bitfieldValue >> 3) }
  }

  /// The TWIPeriperheral type for this is itself.
  public typealias Twi = Self
}

/// Adds ``HAL/TwiWithSlaveAddressMask`` conformance to the ``ATmega328P/Twi`` peripheral.
extension ATmega328P.Twi: TwiWithSlaveAddressMask {
  /// The Two Wire Interface peripheral's slave address mask.
  @inlinable @inline(__always) public static var slaveAddressMask: TwiSlaveAddressMask {
    @inlinable @inline(__always) get { .init(registerValue: Self.`twamr`.`twam`.registerValue) }
    @inlinable @inline(__always) set { Self.`twamr`.`twam` = .init(bitfieldValue: newValue.registerValue) }
  }
}
