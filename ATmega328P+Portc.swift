import HAL

extension ATmega328P.Portc: PortPeripheral {
  /// The DataRegister type for this port.
  public typealias DataRegister = UInt8

  /// The DataDirectionRegister type for this port.
  public typealias DataDirectionRegister = UInt8

  /// The InputRegister type for this port.
  public typealias InputRegister = UInt8

  /// The data register for this port.
  public static var data: UInt8 {
    get { Self.`portc` }
    set { Self.`portc` = newValue }
  }

  /// The direction register for this port.
  public static var direction: UInt8 {
    get { Self.`ddrc` }
    set { Self.`ddrc` = newValue }
  }

  /// The input register for this port.
  public static var input: UInt8 {
    get { Self.`pinc` }
    set { Self.`pinc` = newValue }
  }
}
