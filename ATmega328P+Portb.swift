import HAL

extension ATmega328P.Portb: PortPeripheral {
  /// The DataRegister type for this port.
  public typealias DataRegister = UInt8

  /// The DataDirectionRegister type for this port.
  public typealias DataDirectionRegister = UInt8

  /// The InputRegister type for this port.
  public typealias InputRegister = UInt8

  /// The data register for this port.
  @inlinable @inline(__always) public static var data: UInt8 {
    @inlinable @inline(__always) get { Self.`portb` }
    @inlinable @inline(__always) set { Self.`portb` = newValue }
  }

  /// The direction register for this port.
  @inlinable @inline(__always) public static var direction: UInt8 {
    @inlinable @inline(__always) get { Self.`ddrb` }
    @inlinable @inline(__always) set { Self.`ddrb` = newValue }
  }

  /// The input register for this port.
  @inlinable @inline(__always) public static var input: UInt8 {
    @inlinable @inline(__always) get { Self.`pinb` }
    @inlinable @inline(__always) set { Self.`pinb` = newValue }
  }
}

extension ATmega328P.Portb {
  /// The PB0 digital output pin.
  public enum Pb0 {
  }
}

extension ATmega328P.Portb.Pb0: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portb

    /// The bit number of this pin. (0x0)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x0 }

  }
}

extension ATmega328P.Portb.Pb0: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portb

    /// The bit number of this pin. (0x0)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x0 }

  }
}

extension ATmega328P.Portb.Signals.P0: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portb.Pb0.DigitalOutput
}

extension ATmega328P.Portb.Signals.P0: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portb.Pb0.DigitalInput
}

extension ATmega328P.Portb {
  /// The PB1 digital output pin.
  public enum Pb1 {
  }
}

extension ATmega328P.Portb.Pb1: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portb

    /// The bit number of this pin. (0x1)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x1 }

  }
}

extension ATmega328P.Portb.Pb1: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portb

    /// The bit number of this pin. (0x1)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x1 }

  }
}

extension ATmega328P.Portb.Signals.P1: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portb.Pb1.DigitalOutput
}

extension ATmega328P.Portb.Signals.P1: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portb.Pb1.DigitalInput
}

extension ATmega328P.Portb {
  /// The PB2 digital output pin.
  public enum Pb2 {
  }
}

extension ATmega328P.Portb.Pb2: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portb

    /// The bit number of this pin. (0x2)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x2 }

  }
}

extension ATmega328P.Portb.Pb2: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portb

    /// The bit number of this pin. (0x2)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x2 }

  }
}

extension ATmega328P.Portb.Signals.P2: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portb.Pb2.DigitalOutput
}

extension ATmega328P.Portb.Signals.P2: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portb.Pb2.DigitalInput
}

extension ATmega328P.Portb {
  /// The PB3 digital output pin.
  public enum Pb3 {
  }
}

extension ATmega328P.Portb.Pb3: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portb

    /// The bit number of this pin. (0x3)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x3 }

  }
}

extension ATmega328P.Portb.Pb3: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portb

    /// The bit number of this pin. (0x3)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x3 }

  }
}

extension ATmega328P.Portb.Signals.P3: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portb.Pb3.DigitalOutput
}

extension ATmega328P.Portb.Signals.P3: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portb.Pb3.DigitalInput
}

extension ATmega328P.Portb {
  /// The PB4 digital output pin.
  public enum Pb4 {
  }
}

extension ATmega328P.Portb.Pb4: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portb

    /// The bit number of this pin. (0x4)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x4 }

  }
}

extension ATmega328P.Portb.Pb4: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portb

    /// The bit number of this pin. (0x4)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x4 }

  }
}

extension ATmega328P.Portb.Signals.P4: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portb.Pb4.DigitalOutput
}

extension ATmega328P.Portb.Signals.P4: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portb.Pb4.DigitalInput
}

extension ATmega328P.Portb {
  /// The PB5 digital output pin.
  public enum Pb5 {
  }
}

extension ATmega328P.Portb.Pb5: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portb

    /// The bit number of this pin. (0x5)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x5 }

  }
}

extension ATmega328P.Portb.Pb5: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portb

    /// The bit number of this pin. (0x5)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x5 }

  }
}

extension ATmega328P.Portb.Signals.P5: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portb.Pb5.DigitalOutput
}

extension ATmega328P.Portb.Signals.P5: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portb.Pb5.DigitalInput
}

extension ATmega328P.Portb {
  /// The PB6 digital output pin.
  public enum Pb6 {
  }
}

extension ATmega328P.Portb.Pb6: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portb

    /// The bit number of this pin. (0x6)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x6 }

  }
}

extension ATmega328P.Portb.Pb6: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portb

    /// The bit number of this pin. (0x6)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x6 }

  }
}

extension ATmega328P.Portb.Signals.P6: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portb.Pb6.DigitalOutput
}

extension ATmega328P.Portb.Signals.P6: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portb.Pb6.DigitalInput
}

extension ATmega328P.Portb {
  /// The PB7 digital output pin.
  public enum Pb7 {
  }
}

extension ATmega328P.Portb.Pb7: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portb

    /// The bit number of this pin. (0x7)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x7 }

  }
}

extension ATmega328P.Portb.Pb7: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portb

    /// The bit number of this pin. (0x7)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x7 }

  }
}

extension ATmega328P.Portb.Signals.P7: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portb.Pb7.DigitalOutput
}

extension ATmega328P.Portb.Signals.P7: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portb.Pb7.DigitalInput
}
