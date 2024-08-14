import HAL

extension ATmega328P.Tc1: Timer16BitPeripheral {
  /// The timer's 16-bit counter value.
  @inlinable @inline(__always) public static var counter16: UInt16 { counter }
}

extension ATmega328P.Tc1: TimerWithInputCapture {
  /// The timer's input capture unit type.
  public enum InputCapture: TimerInputCapture {
    /// The Timer type.
    public typealias Timer = ATmega328P.Tc1

    /// The input capture value.
    @inlinable @inline(__always) public static var value: Counter {
      @inlinable @inline(__always) get { .init(Timer.`icr1`.registerValue) }
      @inlinable @inline(__always) set { Timer.`icr1`.registerValue = .init(newValue) }
    }

    /// Is the input capture noise canceler enabled?
    @inlinable @inline(__always) public internal(set) static var noiseCancelerEnabled: Bool {
      @inlinable @inline(__always) get { .init(bitfieldValue: Timer.`tccr1b`.`icnc1`.bitfieldValue) }
      set { Timer.`tccr1b`.`icnc1` = .init(bitfieldValue: newValue.bitfieldValue) }
    }

    /// Which edge does it capture?
    @inlinable @inline(__always) public internal(set) static var captureEdge: TimerInputCaptureEdgeSelect {
      @inlinable @inline(__always) get { .init(bitfieldValue: Timer.`tccr1b`.`ices1`.bitfieldValue) }
      set { Timer.`tccr1b`.`ices1` = .init(bitfieldValue: newValue.bitfieldValue) }
    }

    /// Configures the input capture unit.
    /// - Parameter noiseCancelerEnabled: Should the input capture noise canceler be enabled?
    /// - Parameter captureEdge: Which edge should it capture?
    @inlinable @inline(__always) public static func configure(noiseCancelerEnabled: Bool, captureEdge: TimerInputCaptureEdgeSelect) {
      Self.noiseCancelerEnabled = noiseCancelerEnabled
      Self.captureEdge = captureEdge
    }
  }
}

extension ATmega328P.Tc1.ChannelA: Timer16BitChannel {
  // Automatic conformance.
}

extension ATmega328P.Tc1.ChannelB: Timer16BitChannel {
  // Automatic conformance.
}
