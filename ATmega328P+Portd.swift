import HAL

extension ATmega328P.Portd: PortPeripheral {
  /// The DataRegister type for this port.
  public typealias DataRegister = UInt8

  /// The DataDirectionRegister type for this port.
  public typealias DataDirectionRegister = UInt8

  /// The InputRegister type for this port.
  public typealias InputRegister = UInt8

  /// The data register for this port.
  public static var data: UInt8 {
    get { Self.`portd` }
    set { Self.`portd` = newValue }
  }

  /// The direction register for this port.
  public static var direction: UInt8 {
    get { Self.`ddrd` }
    set { Self.`ddrd` = newValue }
  }

  /// The input register for this port.
  public static var input: UInt8 {
    get { Self.`pind` }
    set { Self.`pind` = newValue }
  }
}
