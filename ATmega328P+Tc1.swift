import HAL
// Adds ``HAL/TimerPeripheral`` conformance to the ``ATmega328P/Tc1`` peripheral.

extension ATmega328P.Tc1: TimerPeripheral {
  /// Provides access to the current counter value.
  @inlinable @inline(__always) public static var counter: UInt16 {
    @inlinable @inline(__always) get { .init(Self.`tcnt1`.registerValue) }
    @inlinable @inline(__always) set { Self.`tcnt1`.registerValue = .init(truncatingIfNeeded: newValue) }
  }

  /// Determines the clock source for the timer.
  @inlinable @inline(__always) public internal(set) static var clock: ClockSelect3BitWithExternal {
    @inlinable @inline(__always) get { .init(bitfieldValue: Self.`tccr1b`.`cs1`.bitfieldValue) }
    set { Self.`tccr1b`.`cs1` = .init(bitfieldValue: newValue.bitfieldValue) }
  }

  /// The waveform generation mode.
  @inlinable @inline(__always) public static var waveformGenerationMode: UInt8 {
    @inlinable @inline(__always) get {
      let wgm = Self.`tccr1a`.`wgm1`.bitfieldValue
      let wgm2 = Self.`tccr1b`.`wgm12`.bitfieldValue
      return wgm2 << 2 | wgm
    }
    @inlinable @inline(__always) set {
      Self.`tccr1a`.`wgm1` = .init(bitfieldValue: newValue & 0b11)
      Self.`tccr1b`.`wgm12` = .init(bitfieldValue: (newValue >> 2) & 0b11)
    }
  }

  /// Configures the timer in 'normal' mode. In this mode, the timer simply counts up until it overflows.
  /// When it overflows, the ``overflowTriggered`` is set, and the timer starts counting from `0` again.
  /// If an interrupt is enabled for the overflow, the interrupt will be triggered as well.
  @inlinable @inline(__always) public static func configureModeNormal(clock: ClockSelect3BitWithExternal) {
    Self.waveformGenerationMode = 0b0
    Self.counter = 0
    Self.clock = clock
  }

  /// Checks if the timer is in 'normal' mode.
  @inlinable @inline(__always) public static var isModeNormal: Bool { Self.waveformGenerationMode == 0b0 }
}

extension ATmega328P.Tc1: TimerPhaseCorrectPWM8BitConfigurable {
  /// Configures the timer in 8-bit Phase Correct PWM mode. In this mode, the timer counts up until it hits `0xFF`,
  /// then it counts down until it hits `0`. When that happens, the ``overflowTriggered`` is set, and the timer starts
  /// counting from `0` again. If an interrupt is enabled for the overflow, the interrupt will be triggered as well.
  /// - Parameter clock: The clock source to use for the timer.
  @inlinable @inline(__always) public static func configureModePhaseCorrectPWM8Bit(clock: ClockSelect3BitWithExternal) {
    Self.waveformGenerationMode = 0b1
    Self.clock = clock
  }

  /// Checks if the timer is in this mode.
  @inlinable @inline(__always) public static var isModePhaseCorrectPWM8Bit: Bool { Self.waveformGenerationMode == 0b1 }
}

extension ATmega328P.Tc1: TimerPhaseCorrectPWM9BitConfigurable {
  /// Configures the timer in 9-bit Phase Correct PWM mode. In this mode, the timer counts up until it hits `0x1FF`,
  /// then it counts down until it hits `0`. When that happens, the ``overflowTriggered`` is set, and the timer starts
  /// counting from `0` again. If an interrupt is enabled for the overflow, the interrupt will be triggered as well.
  /// - Parameter clock: The clock source to use for the timer.
  @inlinable @inline(__always) public static func configureModePhaseCorrectPWM9Bit(clock: ClockSelect3BitWithExternal) {
    Self.waveformGenerationMode = 0b10
    Self.clock = clock
  }

  /// Checks if the timer is in this mode.
  @inlinable @inline(__always) public static var isModePhaseCorrectPWM9Bit: Bool { Self.waveformGenerationMode == 0b10 }
}

extension ATmega328P.Tc1: TimerPhaseCorrectPWM10BitConfigurable {
  /// Configures the timer in 10-bit Phase Correct PWM mode. In this mode, the timer counts up until it hits `0x3FF`,
  /// then it counts down until it hits `0`. When that happens, the ``overflowTriggered`` is set, and the timer starts
  /// counting from `0` again. If an interrupt is enabled for the overflow, the interrupt will be triggered as well.
  /// - Parameter clock: The clock source to use for the timer.
  @inlinable @inline(__always) public static func configureModePhaseCorrectPWM10Bit(clock: ClockSelect3BitWithExternal) {
    Self.waveformGenerationMode = 0b11
    Self.clock = clock
  }

  /// Checks if the timer is in this mode.
  @inlinable @inline(__always) public static var isModePhaseCorrectPWM10Bit: Bool { Self.waveformGenerationMode == 0b11 }
}

extension ATmega328P.Tc1: TimerPhaseCorrectPWMWithTopAtChannelAConfigurable {
  /// Configures the timer in Phase Correct PWM mode with the top value set by the ``ChannelA/compareValue``. In this mode,
  /// the timer counts up until it hits the value in ``channelA``, then it counts down until it hits `0`. When that happens,
  /// the ``overflowTriggered`` is set, and the timer starts counting from `0` again. If an interrupt is enabled for the
  /// overflow, the interrupt will be triggered as well.
  /// - Parameter clock: The clock source to use for the timer.
  @inlinable @inline(__always) public static func configureModePhaseCorrectPWMWithTopAtChannelA(clock: ClockSelect3BitWithExternal) {
    Self.waveformGenerationMode = 0b1011
    Self.clock = clock
  }

  /// Checks if the timer is in this mode.
  @inlinable @inline(__always) public static var isModePhaseCorrectPWMWithTopAtChannelA: Bool { Self.waveformGenerationMode == 0b1011 }
}

extension ATmega328P.Tc1: TimerPhaseCorrectPWMWithTopAtInputCaptureConfigurable {
  /// Configures the timer in Phase Correct PWM mode with the top value set by the ``InputCapture/value``. In this mode,
  /// the timer counts up until it hits the value in ``value``, then it counts down until it hits `0`. When that happens,
  /// the ``overflowTriggered`` is set, and the timer starts counting from `0` again. If an interrupt is enabled for the
  /// overflow, the interrupt will be triggered as well.
  /// - Parameter clock: The clock source to use for the timer.
  @inlinable @inline(__always) public static func configureModePhaseCorrectPWMWithTopAtInputCapture(clock: ClockSelect3BitWithExternal) {
    Self.waveformGenerationMode = 0b1010
    Self.clock = clock
  }

  /// Checks if the timer is in this mode.
  @inlinable @inline(__always) public static var isModePhaseCorrectPWMWithTopAtInputCapture: Bool { Self.waveformGenerationMode == 0b1010 }
}

extension ATmega328P.Tc1: TimerFastPWM8BitConfigurable {
  /// Configures the timer in Fast PWM mode. In this mode, the timer counts up until it hits `0xFF`, then it
  /// starts counting from `0` again. When that happens, the ``overflowTriggered`` is set, and the timer starts
  /// counting from `0` again. If an interrupt is enabled for the overflow, the interrupt will be triggered as well.
  /// - Parameter clock: The clock source to use for the timer.
  @inlinable @inline(__always) public static func configureModeFastPWM8Bit(clock: ClockSelect3BitWithExternal) {
    Self.waveformGenerationMode = 0b101
    Self.clock = clock
  }

  /// Checks if the timer is in this mode.
  @inlinable @inline(__always) public static var isModeFastPWM8Bit: Bool { Self.waveformGenerationMode == 0b101 }
}

extension ATmega328P.Tc1: TimerFastPWM9BitConfigurable {
  /// Configures the timer in Fast PWM mode. In this mode, the timer counts up until it hits `0x1FF`, then it
  /// starts counting from `0` again. When that happens, the ``overflowTriggered`` is set, and the timer starts
  /// counting from `0` again. If an interrupt is enabled for the overflow, the interrupt will be triggered as well.
  /// - Parameter clock: The clock source to use for the timer.
  @inlinable @inline(__always) public static func configureModeFastPWM9Bit(clock: ClockSelect3BitWithExternal) {
    Self.waveformGenerationMode = 0b110
    Self.clock = clock
  }

  /// Checks if the timer is in this mode.
  @inlinable @inline(__always) public static var isModeFastPWM9Bit: Bool { Self.waveformGenerationMode == 0b110 }
}

extension ATmega328P.Tc1: TimerFastPWM10BitConfigurable {
  /// Configures the timer in Fast PWM mode. In this mode, the timer counts up until it hits `0x3FF`, then it
  /// starts counting from `0` again. When that happens, the ``overflowTriggered`` is set, and the timer starts
  /// counting from `0` again. If an interrupt is enabled for the overflow, the interrupt will be triggered as well.
  /// - Parameter clock: The clock source to use for the timer.
  @inlinable @inline(__always) public static func configureModeFastPWM10Bit(clock: ClockSelect3BitWithExternal) {
    Self.waveformGenerationMode = 0b111
    Self.clock = clock
  }

  /// Checks if the timer is in this mode.
  @inlinable @inline(__always) public static var isModeFastPWM10Bit: Bool { Self.waveformGenerationMode == 0b111 }
}

extension ATmega328P.Tc1: TimerFastPWMWithTopAtChannelAConfigurable {
  /// Configures the timer in Fast PWM mode with the top value set by the ``ChannelA/compareValue``. In this mode,
  /// the timer counts up until it hits the value in ``channelA``, then it starts counting from `0` again. When that happens,
  /// the ``overflowTriggered`` is set, and the timer starts counting from `0` again. If an interrupt is enabled for the
  /// overflow, the interrupt will be triggered as well.
  /// - Parameter clock: The clock source to use for the timer.
  @inlinable @inline(__always) public static func configureModeFastPWMWithTopAtChannelA(clock: ClockSelect3BitWithExternal) {
    Self.waveformGenerationMode = 0b1111
    Self.clock = clock
  }

  /// Checks if the timer is in this mode.
  @inlinable @inline(__always) public static var isModeFastPWMWithTopAtChannelA: Bool { Self.waveformGenerationMode == 0b1111 }
}

extension ATmega328P.Tc1: TimerFastPWMWithTopAtInputCaptureConfigurable {
  /// Configures the timer in Fast PWM mode with the top value set by the ``InputCapture/value``. In this mode,
  /// the timer counts up until it hits the value in ``value``, then it starts counting from `0` again. When that happens,
  /// the ``overflowTriggered`` is set, and the timer starts counting from `0` again. If an interrupt is enabled for the
  /// overflow, the interrupt will be triggered as well.
  /// - Parameter clock: The clock source to use for the timer.
  @inlinable @inline(__always) public static func configureModeFastPWMWithTopAtInputCapture(clock: ClockSelect3BitWithExternal) {
    Self.waveformGenerationMode = 0b1110
    Self.clock = clock
  }

  /// Checks if the timer is in this mode.
  @inlinable @inline(__always) public static var isModeFastPWMWithTopAtInputCapture: Bool { Self.waveformGenerationMode == 0b1110 }
}

extension ATmega328P.Tc1: TimerPhaseAndFrequencyCorrectPWMWithTopAtChannelAConfigurable {
  /// Configures the timer in Phase and Frequency Correct PWM mode with the top value set by the ``ChannelA/compareValue``. In this mode,
  /// the timer counts up until it hits the value in ``channelA``, then it counts down until it hits `0`. When that happens,
  /// the ``overflowTriggered`` is set, and the timer starts counting from `0` again. If an interrupt is enabled for the
  /// overflow, the interrupt will be triggered as well.
  /// - Parameter clock: The clock source to use for the timer.
  @inlinable @inline(__always) public static func configureModePhaseAndFrequencyCorrectPWMWithTopAtChannelA(clock: ClockSelect3BitWithExternal) {
    Self.waveformGenerationMode = 0b1001
    Self.clock = clock
  }

  /// Checks if the timer is in this mode.
  @inlinable @inline(__always) public static var isModePhaseAndFrequencyCorrectPWMWithTopAtChannelA: Bool { Self.waveformGenerationMode == 0b1001 }
}

extension ATmega328P.Tc1: TimerPhaseAndFrequencyCorrectPWMWithTopAtInputCaptureConfigurable {
  /// Configures the timer in Phase and Frequency Correct PWM mode with the top value set by the ``InputCapture/value``. In this mode,
  /// the timer counts up until it hits the value in ``value``, then it counts down until it hits `0`. When that happens,
  /// the ``overflowTriggered`` is set, and the timer starts counting from `0` again. If an interrupt is enabled for the
  /// overflow, the interrupt will be triggered as well.
  /// - Parameter clock: The clock source to use for the timer.
  @inlinable @inline(__always) public static func configureModePhaseAndFrequencyCorrectPWMWithTopAtInputCapture(clock: ClockSelect3BitWithExternal) {
    Self.waveformGenerationMode = 0b1000
    Self.clock = clock
  }

  /// Checks if the timer is in this mode.
  @inlinable @inline(__always) public static var isModePhaseAndFrequencyCorrectPWMWithTopAtInputCapture: Bool { Self.waveformGenerationMode == 0b1000 }
}

// MARK: ChannelA

extension ATmega328P.Tc1: TimerWithChannelA {
  /// The "A" channel of the ``ATmega328P/Tc1`` peripheral.
  public enum ChannelA: Timer8BitChannel {
    /// The ``TimerPeripheral`` type that owns this channel.
    public typealias Timer = ATmega328P.Tc1

    /// This value is used as a comparison value against the ``timer``'s counter value.
    @inlinable @inline(__always) public static var compareValue: Counter {
      @inlinable @inline(__always) get { .init(Timer.`ocr1a`.registerValue) }
      @inlinable @inline(__always) set { Timer.`ocr1a` = .init(registerValue: .init(newValue)) }
    }
  }
}

extension ATmega328P.Tc1.ChannelA: TimerChannelWithPin {
  /// Determines the effect of the ``compareValue`` on the ``timer``'s output pin.
  @inlinable @inline(__always) public static var outputPinEffect: OutputComparePinEffect {
    @inlinable @inline(__always) get { .init(bitfieldValue: Timer.`tccr1a`.`com1a`.bitfieldValue) }
    @inlinable @inline(__always) set { Timer.`tccr1a`.`com1a` = .init(bitfieldValue: newValue.bitfieldValue) }
  }

  /// Forces the ``outputPinEffect`` to be applied immediately, if the timer
  /// is in a waveform generation mode that allows the compare register to be updated immediately.
  @inlinable @inline(__always) public static func forceCompareMatch() -> Bool {
    guard Timer.isModeNormal || Timer.isModeCTC else { return false }
    Timer.`tccr1c`.`foc1a` = .init(bitfieldValue: 1)
    return true
  }
}

extension ATmega328P.Tc1.ChannelA: HasOutputComparePin {
  /// The ``OutputComparePin`` type for this channel.
  public enum OutputCompare: TimerOutputComparePin {
    public typealias Channel = ATmega328P.Tc1.ChannelA

    public typealias Port = ATmega328P.Portb

    public typealias Value = Channel.Counter

    public typealias ClockSelect = Channel.Timer.ClockSelect

    /// The pin number
    @inlinable @inline(__always) public static var portPin: UInt8 { 1 }

  }
}

extension ATmega328P.Tc1.Signals.Oca: HasOutputComparePin {
  /// The ``OutputComparePin`` for ``ATmega328P/Tc1``.``ATmega328P/Tc1/ChannelA``.
  public typealias OutputCompare = ATmega328P.Tc1.ChannelA.OutputCompare
}

extension ATmega328P.Tc1.ChannelA: HasPWM8BitPin {
  /// The 8-bit ``PWMPin`` type for this channel.
  public enum PWM8: TimerPWM8BitPin, HasPWM8BitPin {
    /// The Channel type.
    public typealias Channel = ATmega328P.Tc1.ChannelA

    /// The PWM8 is its own ``PWM8`` type, for HasPWM8BitPin.
    public typealias PWM8 = Self

    /// The Port type.
    public typealias Port = ATmega328P.Portb

    /// The pin number
    @inlinable @inline(__always) public static var portPin: UInt8 { 1 }

  }
}

extension ATmega328P.Tc1.Signals.Oca: HasPWM8BitPin {
  /// The  8-bit ``PWMPin`` for ``ATmega328P/Tc1``.``ATmega328P/Tc1/ChannelA``.
  public typealias PWM8 = ATmega328P.Tc1.ChannelA.PWM8
}

extension ATmega328P.Tc1.ChannelA: HasPWM9BitPin {
  /// The 9-bit ``PWMPin`` type for this channel.
  public enum PWM9: TimerPWM9BitPin, HasPWM9BitPin {
    /// The Channel type.
    public typealias Channel = ATmega328P.Tc1.ChannelA

    /// The PWM9 is its own ``PWM9`` type, for HasPWM9BitPin.
    public typealias PWM9 = Self

    /// The Port type.
    public typealias Port = ATmega328P.Portb

    /// The pin number
    @inlinable @inline(__always) public static var portPin: UInt8 { 1 }

  }
}

extension ATmega328P.Tc1.Signals.Oca: HasPWM9BitPin {
  /// The  9-bit ``PWMPin`` for ``ATmega328P/Tc1``.``ATmega328P/Tc1/ChannelA``.
  public typealias PWM9 = ATmega328P.Tc1.ChannelA.PWM9
}

extension ATmega328P.Tc1.ChannelA: HasPWM10BitPin {
  /// The 10-bit ``PWMPin`` type for this channel.
  public enum PWM10: TimerPWM10BitPin, HasPWM10BitPin {
    /// The Channel type.
    public typealias Channel = ATmega328P.Tc1.ChannelA

    /// The PWM10 is its own ``PWM10`` type, for HasPWM10BitPin.
    public typealias PWM10 = Self

    /// The Port type.
    public typealias Port = ATmega328P.Portb

    /// The pin number
    @inlinable @inline(__always) public static var portPin: UInt8 { 1 }

  }
}

extension ATmega328P.Tc1.Signals.Oca: HasPWM10BitPin {
  /// The  10-bit ``PWMPin`` for ``ATmega328P/Tc1``.``ATmega328P/Tc1/ChannelA``.
  public typealias PWM10 = ATmega328P.Tc1.ChannelA.PWM10
}

extension ATmega328P.Tc1 {
  /// Configures the timer in Clear Timer on Compare (CTC) mode. When in this mode, the timer counts up until it
  /// reaches the value in the ``channelA``'s ``compareValue``. When that happens, the ``channelA``'s
  /// ``ChannelA/onMatch/triggered`` is set, and the timer starts counting from `0` again.
  @inlinable @inline(__always) public static func configureModeCTC(clock: ClockSelect3BitWithExternal, top: ChannelA.Counter) {
    Self.waveformGenerationMode = 0b100
    Self.clock = clock
  }

  /// Checks if the timer is in Clear Timer on Compare (CTC) mode.
  @inlinable @inline(__always) public static var isModeCTC: Bool { Self.waveformGenerationMode == 0b100 }
}

// MARK: ChannelB

extension ATmega328P.Tc1: TimerWithChannelB {
  /// The "B" channel of the ``ATmega328P/Tc1`` peripheral.
  public enum ChannelB: Timer8BitChannel {
    /// The ``TimerPeripheral`` type that owns this channel.
    public typealias Timer = ATmega328P.Tc1

    /// This value is used as a comparison value against the ``timer``'s counter value.
    @inlinable @inline(__always) public static var compareValue: Counter {
      @inlinable @inline(__always) get { .init(Timer.`ocr1b`.registerValue) }
      @inlinable @inline(__always) set { Timer.`ocr1b` = .init(registerValue: .init(newValue)) }
    }
  }
}

extension ATmega328P.Tc1.ChannelB: TimerChannelWithPin {
  /// Determines the effect of the ``compareValue`` on the ``timer``'s output pin.
  @inlinable @inline(__always) public static var outputPinEffect: OutputComparePinEffect {
    @inlinable @inline(__always) get { .init(bitfieldValue: Timer.`tccr1a`.`com1b`.bitfieldValue) }
    @inlinable @inline(__always) set { Timer.`tccr1a`.`com1b` = .init(bitfieldValue: newValue.bitfieldValue) }
  }

  /// Forces the ``outputPinEffect`` to be applied immediately, if the timer
  /// is in a waveform generation mode that allows the compare register to be updated immediately.
  @inlinable @inline(__always) public static func forceCompareMatch() -> Bool {
    guard Timer.isModeNormal || Timer.isModeCTC else { return false }
    Timer.`tccr1c`.`foc1b` = .init(bitfieldValue: 1)
    return true
  }
}

extension ATmega328P.Tc1.ChannelB: HasOutputComparePin {
  /// The ``OutputComparePin`` type for this channel.
  public enum OutputCompare: TimerOutputComparePin {
    public typealias Channel = ATmega328P.Tc1.ChannelB

    public typealias Port = ATmega328P.Portb

    public typealias Value = Channel.Counter

    public typealias ClockSelect = Channel.Timer.ClockSelect

    /// The pin number
    @inlinable @inline(__always) public static var portPin: UInt8 { 2 }

  }
}

extension ATmega328P.Tc1.Signals.Ocb: HasOutputComparePin {
  /// The ``OutputComparePin`` for ``ATmega328P/Tc1``.``ATmega328P/Tc1/ChannelB``.
  public typealias OutputCompare = ATmega328P.Tc1.ChannelB.OutputCompare
}

extension ATmega328P.Tc1.ChannelB: HasPWM8BitPin {
  /// The 8-bit ``PWMPin`` type for this channel.
  public enum PWM8: TimerPWM8BitPin, HasPWM8BitPin {
    /// The Channel type.
    public typealias Channel = ATmega328P.Tc1.ChannelB

    /// The PWM8 is its own ``PWM8`` type, for HasPWM8BitPin.
    public typealias PWM8 = Self

    /// The Port type.
    public typealias Port = ATmega328P.Portb

    /// The pin number
    @inlinable @inline(__always) public static var portPin: UInt8 { 2 }

  }
}

extension ATmega328P.Tc1.Signals.Ocb: HasPWM8BitPin {
  /// The  8-bit ``PWMPin`` for ``ATmega328P/Tc1``.``ATmega328P/Tc1/ChannelB``.
  public typealias PWM8 = ATmega328P.Tc1.ChannelB.PWM8
}

extension ATmega328P.Tc1.ChannelB: HasPWM9BitPin {
  /// The 9-bit ``PWMPin`` type for this channel.
  public enum PWM9: TimerPWM9BitPin, HasPWM9BitPin {
    /// The Channel type.
    public typealias Channel = ATmega328P.Tc1.ChannelB

    /// The PWM9 is its own ``PWM9`` type, for HasPWM9BitPin.
    public typealias PWM9 = Self

    /// The Port type.
    public typealias Port = ATmega328P.Portb

    /// The pin number
    @inlinable @inline(__always) public static var portPin: UInt8 { 2 }

  }
}

extension ATmega328P.Tc1.Signals.Ocb: HasPWM9BitPin {
  /// The  9-bit ``PWMPin`` for ``ATmega328P/Tc1``.``ATmega328P/Tc1/ChannelB``.
  public typealias PWM9 = ATmega328P.Tc1.ChannelB.PWM9
}

extension ATmega328P.Tc1.ChannelB: HasPWM10BitPin {
  /// The 10-bit ``PWMPin`` type for this channel.
  public enum PWM10: TimerPWM10BitPin, HasPWM10BitPin {
    /// The Channel type.
    public typealias Channel = ATmega328P.Tc1.ChannelB

    /// The PWM10 is its own ``PWM10`` type, for HasPWM10BitPin.
    public typealias PWM10 = Self

    /// The Port type.
    public typealias Port = ATmega328P.Portb

    /// The pin number
    @inlinable @inline(__always) public static var portPin: UInt8 { 2 }

  }
}

extension ATmega328P.Tc1.Signals.Ocb: HasPWM10BitPin {
  /// The  10-bit ``PWMPin`` for ``ATmega328P/Tc1``.``ATmega328P/Tc1/ChannelB``.
  public typealias PWM10 = ATmega328P.Tc1.ChannelB.PWM10
}
