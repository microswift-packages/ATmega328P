import HAL

extension ATmega328P.Portc: PortPeripheral {
  /// The DataRegister type for this port.
  public typealias DataRegister = UInt8

  /// The DataDirectionRegister type for this port.
  public typealias DataDirectionRegister = UInt8

  /// The InputRegister type for this port.
  public typealias InputRegister = UInt8

  /// The data register for this port.
  @inlinable @inline(__always) public static var data: UInt8 {
    @inlinable @inline(__always) get { Self.`portc` }
    @inlinable @inline(__always) set { Self.`portc` = newValue }
  }

  /// The direction register for this port.
  @inlinable @inline(__always) public static var direction: UInt8 {
    @inlinable @inline(__always) get { Self.`ddrc` }
    @inlinable @inline(__always) set { Self.`ddrc` = newValue }
  }

  /// The input register for this port.
  @inlinable @inline(__always) public static var input: UInt8 {
    @inlinable @inline(__always) get { Self.`pinc` }
    @inlinable @inline(__always) set { Self.`pinc` = newValue }
  }
}

extension ATmega328P.Portc {
  /// The PC0 digital output pin.
  public enum Pc0 {
  }
}

extension ATmega328P.Portc.Pc0: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portc

    /// The bit number of this pin. (0x0)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x0 }

  }
}

extension ATmega328P.Portc.Pc0: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portc

    /// The bit number of this pin. (0x0)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x0 }

  }
}

extension ATmega328P.Portc.Signals.P0: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portc.Pc0.DigitalOutput
}

extension ATmega328P.Portc.Signals.P0: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portc.Pc0.DigitalInput
}

extension ATmega328P.Portc {
  /// The PC1 digital output pin.
  public enum Pc1 {
  }
}

extension ATmega328P.Portc.Pc1: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portc

    /// The bit number of this pin. (0x1)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x1 }

  }
}

extension ATmega328P.Portc.Pc1: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portc

    /// The bit number of this pin. (0x1)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x1 }

  }
}

extension ATmega328P.Portc.Signals.P1: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portc.Pc1.DigitalOutput
}

extension ATmega328P.Portc.Signals.P1: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portc.Pc1.DigitalInput
}

extension ATmega328P.Portc {
  /// The PC2 digital output pin.
  public enum Pc2 {
  }
}

extension ATmega328P.Portc.Pc2: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portc

    /// The bit number of this pin. (0x2)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x2 }

  }
}

extension ATmega328P.Portc.Pc2: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portc

    /// The bit number of this pin. (0x2)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x2 }

  }
}

extension ATmega328P.Portc.Signals.P2: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portc.Pc2.DigitalOutput
}

extension ATmega328P.Portc.Signals.P2: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portc.Pc2.DigitalInput
}

extension ATmega328P.Portc {
  /// The PC3 digital output pin.
  public enum Pc3 {
  }
}

extension ATmega328P.Portc.Pc3: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portc

    /// The bit number of this pin. (0x3)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x3 }

  }
}

extension ATmega328P.Portc.Pc3: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portc

    /// The bit number of this pin. (0x3)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x3 }

  }
}

extension ATmega328P.Portc.Signals.P3: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portc.Pc3.DigitalOutput
}

extension ATmega328P.Portc.Signals.P3: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portc.Pc3.DigitalInput
}

extension ATmega328P.Portc {
  /// The PC4 digital output pin.
  public enum Pc4 {
  }
}

extension ATmega328P.Portc.Pc4: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portc

    /// The bit number of this pin. (0x4)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x4 }

  }
}

extension ATmega328P.Portc.Pc4: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portc

    /// The bit number of this pin. (0x4)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x4 }

  }
}

extension ATmega328P.Portc.Signals.P4: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portc.Pc4.DigitalOutput
}

extension ATmega328P.Portc.Signals.P4: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portc.Pc4.DigitalInput
}

extension ATmega328P.Portc {
  /// The PC5 digital output pin.
  public enum Pc5 {
  }
}

extension ATmega328P.Portc.Pc5: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portc

    /// The bit number of this pin. (0x5)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x5 }

  }
}

extension ATmega328P.Portc.Pc5: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portc

    /// The bit number of this pin. (0x5)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x5 }

  }
}

extension ATmega328P.Portc.Signals.P5: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portc.Pc5.DigitalOutput
}

extension ATmega328P.Portc.Signals.P5: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portc.Pc5.DigitalInput
}

extension ATmega328P.Portc {
  /// The PC6 digital output pin.
  public enum Pc6 {
  }
}

extension ATmega328P.Portc.Pc6: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portc

    /// The bit number of this pin. (0x6)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x6 }

  }
}

extension ATmega328P.Portc.Pc6: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portc

    /// The bit number of this pin. (0x6)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x6 }

  }
}

extension ATmega328P.Portc.Signals.P6: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portc.Pc6.DigitalOutput
}

extension ATmega328P.Portc.Signals.P6: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portc.Pc6.DigitalInput
}
