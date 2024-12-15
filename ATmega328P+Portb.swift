import HAL

extension ATmega328P.Portb: PortPeripheral {
  /// The DataRegister type for this port.
  public typealias DataRegister = UInt8

  /// The DataDirectionRegister type for this port.
  public typealias DataDirectionRegister = UInt8

  /// The InputRegister type for this port.
  public typealias InputRegister = UInt8

  /// The data register for this port.
  public static var data: UInt8 {
    get { Self.`portb` }
    set { Self.`portb` = newValue }
  }

  /// The direction register for this port.
  public static var direction: UInt8 {
    get { Self.`ddrb` }
    set { Self.`ddrb` = newValue }
  }

  /// The input register for this port.
  public static var input: UInt8 {
    get { Self.`pinb` }
    set { Self.`pinb` = newValue }
  }
}
