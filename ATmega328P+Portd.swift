import HAL

extension ATmega328P.Portd: PortPeripheral {
  /// The DataRegister type for this port.
  public typealias DataRegister = UInt8

  /// The DataDirectionRegister type for this port.
  public typealias DataDirectionRegister = UInt8

  /// The InputRegister type for this port.
  public typealias InputRegister = UInt8

  /// The data register for this port.
  @inlinable @inline(__always) public static var data: UInt8 {
    @inlinable @inline(__always) get { Self.`portd` }
    @inlinable @inline(__always) set { Self.`portd` = newValue }
  }

  /// The direction register for this port.
  @inlinable @inline(__always) public static var direction: UInt8 {
    @inlinable @inline(__always) get { Self.`ddrd` }
    @inlinable @inline(__always) set { Self.`ddrd` = newValue }
  }

  /// The input register for this port.
  @inlinable @inline(__always) public static var input: UInt8 {
    @inlinable @inline(__always) get { Self.`pind` }
    @inlinable @inline(__always) set { Self.`pind` = newValue }
  }
}

extension ATmega328P.Portd {
  /// The PD0 digital output pin.
  public enum Pd0 {
  }
}

extension ATmega328P.Portd.Pd0: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portd

    /// The bit number of this pin. (0x0)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x0 }

  }
}

extension ATmega328P.Portd.Pd0: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portd

    /// The bit number of this pin. (0x0)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x0 }

  }
}

extension ATmega328P.Portd.Signals.P0: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portd.Pd0.DigitalOutput
}

extension ATmega328P.Portd.Signals.P0: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portd.Pd0.DigitalInput
}

extension ATmega328P.Portd {
  /// The PD1 digital output pin.
  public enum Pd1 {
  }
}

extension ATmega328P.Portd.Pd1: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portd

    /// The bit number of this pin. (0x1)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x1 }

  }
}

extension ATmega328P.Portd.Pd1: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portd

    /// The bit number of this pin. (0x1)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x1 }

  }
}

extension ATmega328P.Portd.Signals.P1: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portd.Pd1.DigitalOutput
}

extension ATmega328P.Portd.Signals.P1: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portd.Pd1.DigitalInput
}

extension ATmega328P.Portd {
  /// The PD2 digital output pin.
  public enum Pd2 {
  }
}

extension ATmega328P.Portd.Pd2: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portd

    /// The bit number of this pin. (0x2)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x2 }

  }
}

extension ATmega328P.Portd.Pd2: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portd

    /// The bit number of this pin. (0x2)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x2 }

  }
}

extension ATmega328P.Portd.Signals.P2: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portd.Pd2.DigitalOutput
}

extension ATmega328P.Portd.Signals.P2: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portd.Pd2.DigitalInput
}

extension ATmega328P.Portd {
  /// The PD3 digital output pin.
  public enum Pd3 {
  }
}

extension ATmega328P.Portd.Pd3: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portd

    /// The bit number of this pin. (0x3)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x3 }

  }
}

extension ATmega328P.Portd.Pd3: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portd

    /// The bit number of this pin. (0x3)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x3 }

  }
}

extension ATmega328P.Portd.Signals.P3: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portd.Pd3.DigitalOutput
}

extension ATmega328P.Portd.Signals.P3: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portd.Pd3.DigitalInput
}

extension ATmega328P.Portd {
  /// The PD4 digital output pin.
  public enum Pd4 {
  }
}

extension ATmega328P.Portd.Pd4: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portd

    /// The bit number of this pin. (0x4)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x4 }

  }
}

extension ATmega328P.Portd.Pd4: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portd

    /// The bit number of this pin. (0x4)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x4 }

  }
}

extension ATmega328P.Portd.Signals.P4: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portd.Pd4.DigitalOutput
}

extension ATmega328P.Portd.Signals.P4: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portd.Pd4.DigitalInput
}

extension ATmega328P.Portd {
  /// The PD5 digital output pin.
  public enum Pd5 {
  }
}

extension ATmega328P.Portd.Pd5: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portd

    /// The bit number of this pin. (0x5)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x5 }

  }
}

extension ATmega328P.Portd.Pd5: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portd

    /// The bit number of this pin. (0x5)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x5 }

  }
}

extension ATmega328P.Portd.Signals.P5: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portd.Pd5.DigitalOutput
}

extension ATmega328P.Portd.Signals.P5: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portd.Pd5.DigitalInput
}

extension ATmega328P.Portd {
  /// The PD6 digital output pin.
  public enum Pd6 {
  }
}

extension ATmega328P.Portd.Pd6: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portd

    /// The bit number of this pin. (0x6)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x6 }

  }
}

extension ATmega328P.Portd.Pd6: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portd

    /// The bit number of this pin. (0x6)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x6 }

  }
}

extension ATmega328P.Portd.Signals.P6: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portd.Pd6.DigitalOutput
}

extension ATmega328P.Portd.Signals.P6: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portd.Pd6.DigitalInput
}

extension ATmega328P.Portd {
  /// The PD7 digital output pin.
  public enum Pd7 {
  }
}

extension ATmega328P.Portd.Pd7: HasDigitalOutput {
  /// The digital output pin for this signal.
  public enum DigitalOutput: PortDigitalOutput, HasDigitalOutput {
    /// The port type.
    public typealias Port = ATmega328P.Portd

    /// The bit number of this pin. (0x7)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x7 }

  }
}

extension ATmega328P.Portd.Pd7: HasDigitalInput {
  /// The digital input pin for this signal.
  public enum DigitalInput: PortDigitalInput, HasDigitalInput {
    /// The port type.
    public typealias Port = ATmega328P.Portd

    /// The bit number of this pin. (0x7)
    @inlinable @inline(__always) public static var bit: UInt8 { 0x7 }

  }
}

extension ATmega328P.Portd.Signals.P7: HasDigitalOutput {
  /// The digital output pin for this signal.
  public typealias DigitalOutput = ATmega328P.Portd.Pd7.DigitalOutput
}

extension ATmega328P.Portd.Signals.P7: HasDigitalInput {
  /// The digital input pin for this signal.
  public typealias DigitalInput = ATmega328P.Portd.Pd7.DigitalInput
}
