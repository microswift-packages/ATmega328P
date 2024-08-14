import HAL
// Adds ``HAL/TimerPeripheral`` conformance to the ``ATmega328P/Tc0`` peripheral.

extension ATmega328P.Tc0: TimerPeripheral {
  /// Provides access to the current counter value.
  @inlinable @inline(__always) public static var counter: UInt8 {
    @inlinable @inline(__always) get { .init(Self.`tcnt0`.registerValue) }
    @inlinable @inline(__always) set { Self.`tcnt0`.registerValue = .init(truncatingIfNeeded: newValue) }
  }

  /// Determines the clock source for the timer.
  @inlinable @inline(__always) public internal(set) static var clock: ClockSelect3BitWithExternal {
    @inlinable @inline(__always) get { .init(bitfieldValue: Self.`tccr0b`.`cs0`.bitfieldValue) }
    set { Self.`tccr0b`.`cs0` = .init(bitfieldValue: newValue.bitfieldValue) }
  }

  /// The waveform generation mode.
  @inlinable @inline(__always) public static var waveformGenerationMode: UInt8 {
    @inlinable @inline(__always) get {
      let wgm = Self.`tccr0a`.`wgm0`.bitfieldValue
      let wgm2 = Self.`tccr0b`.`wgm02`.bitfieldValue
      return wgm2 << 2 | wgm
    }
    @inlinable @inline(__always) set {
      Self.`tccr0a`.`wgm0` = .init(bitfieldValue: newValue & 0b11)
      Self.`tccr0b`.`wgm02` = .init(bitfieldValue: (newValue >> 2) & 0b1)
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

extension ATmega328P.Tc0: TimerPhaseCorrectPWM8BitConfigurable {
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

extension ATmega328P.Tc0: TimerPhaseCorrectPWMWithTopAtChannelAConfigurable {
  /// Configures the timer in Phase Correct PWM mode with the top value set by the ``ChannelA/compareValue``. In this mode,
  /// the timer counts up until it hits the value in ``channelA``, then it counts down until it hits `0`. When that happens,
  /// the ``overflowTriggered`` is set, and the timer starts counting from `0` again. If an interrupt is enabled for the
  /// overflow, the interrupt will be triggered as well.
  /// - Parameter clock: The clock source to use for the timer.
  @inlinable @inline(__always) public static func configureModePhaseCorrectPWMWithTopAtChannelA(clock: ClockSelect3BitWithExternal) {
    Self.waveformGenerationMode = 0b101
    Self.clock = clock
  }

  /// Checks if the timer is in this mode.
  @inlinable @inline(__always) public static var isModePhaseCorrectPWMWithTopAtChannelA: Bool { Self.waveformGenerationMode == 0b101 }
}

extension ATmega328P.Tc0: TimerFastPWM8BitConfigurable {
  /// Configures the timer in Fast PWM mode. In this mode, the timer counts up until it hits `0xFF`, then it
  /// starts counting from `0` again. When that happens, the ``overflowTriggered`` is set, and the timer starts
  /// counting from `0` again. If an interrupt is enabled for the overflow, the interrupt will be triggered as well.
  /// - Parameter clock: The clock source to use for the timer.
  @inlinable @inline(__always) public static func configureModeFastPWM8Bit(clock: ClockSelect3BitWithExternal) {
    Self.waveformGenerationMode = 0b11
    Self.clock = clock
  }

  /// Checks if the timer is in this mode.
  @inlinable @inline(__always) public static var isModeFastPWM8Bit: Bool { Self.waveformGenerationMode == 0b11 }
}

extension ATmega328P.Tc0: TimerFastPWMWithTopAtChannelAConfigurable {
  /// Configures the timer in Fast PWM mode with the top value set by the ``ChannelA/compareValue``. In this mode,
  /// the timer counts up until it hits the value in ``channelA``, then it starts counting from `0` again. When that happens,
  /// the ``overflowTriggered`` is set, and the timer starts counting from `0` again. If an interrupt is enabled for the
  /// overflow, the interrupt will be triggered as well.
  /// - Parameter clock: The clock source to use for the timer.
  @inlinable @inline(__always) public static func configureModeFastPWMWithTopAtChannelA(clock: ClockSelect3BitWithExternal) {
    Self.waveformGenerationMode = 0b111
    Self.clock = clock
  }

  /// Checks if the timer is in this mode.
  @inlinable @inline(__always) public static var isModeFastPWMWithTopAtChannelA: Bool { Self.waveformGenerationMode == 0b111 }
}

// MARK: ChannelA

extension ATmega328P.Tc0: TimerWithChannelA {
  /// The "A" channel of the ``ATmega328P/Tc0`` peripheral.
  public enum ChannelA: Timer8BitChannel {
    /// The ``TimerPeripheral`` type that owns this channel.
    public typealias Timer = ATmega328P.Tc0

    /// This value is used as a comparison value against the ``timer``'s counter value.
    @inlinable @inline(__always) public static var compareValue: Counter {
      @inlinable @inline(__always) get { .init(Timer.`ocr0a`.registerValue) }
      @inlinable @inline(__always) set { Timer.`ocr0a` = .init(registerValue: .init(newValue)) }
    }
  }
}

extension ATmega328P.Tc0.ChannelA: TimerChannelWithPin {
  /// Determines the effect of the ``compareValue`` on the ``timer``'s output pin.
  @inlinable @inline(__always) public static var outputPinEffect: OutputComparePinEffect {
    @inlinable @inline(__always) get { .init(bitfieldValue: Timer.`tccr0a`.`com0a`.bitfieldValue) }
    @inlinable @inline(__always) set { Timer.`tccr0a`.`com0a` = .init(bitfieldValue: newValue.bitfieldValue) }
  }

  /// Forces the ``outputPinEffect`` to be applied immediately, if the timer
  /// is in a waveform generation mode that allows the compare register to be updated immediately.
  @inlinable @inline(__always) public static func forceCompareMatch() -> Bool {
    guard Timer.isModeNormal || Timer.isModeCTC else { return false }
    Timer.`tccr0b`.`foc0a` = .init(bitfieldValue: 1)
    return true
  }
}

extension ATmega328P.Tc0.ChannelA: HasOutputComparePin {
  /// The ``OutputComparePin`` type for this channel.
  public enum OutputCompare: TimerOutputComparePin {
    public typealias Channel = ATmega328P.Tc0.ChannelA

    public typealias Port = ATmega328P.Portd

    public typealias Value = Channel.Counter

    public typealias ClockSelect = Channel.Timer.ClockSelect

    /// The pin number
    @inlinable @inline(__always) public static var portPin: UInt8 { 6 }

  }
}

extension ATmega328P.Tc0.Signals.Oca: HasOutputComparePin {
  /// The ``OutputComparePin`` for ``ATmega328P/Tc0``.``ATmega328P/Tc0/ChannelA``.
  public typealias OutputCompare = ATmega328P.Tc0.ChannelA.OutputCompare
}

extension ATmega328P.Tc0.ChannelA: HasPWM8BitPin {
  /// The 8-bit ``PWMPin`` type for this channel.
  public enum PWM8: TimerPWM8BitPin, HasPWM8BitPin {
    /// The Channel type.
    public typealias Channel = ATmega328P.Tc0.ChannelA

    /// The PWM8 is its own ``PWM8`` type, for HasPWM8BitPin.
    public typealias PWM8 = Self

    /// The Port type.
    public typealias Port = ATmega328P.Portd

    /// The pin number
    @inlinable @inline(__always) public static var portPin: UInt8 { 6 }

  }
}

extension ATmega328P.Tc0.Signals.Oca: HasPWM8BitPin {
  /// The  8-bit ``PWMPin`` for ``ATmega328P/Tc0``.``ATmega328P/Tc0/ChannelA``.
  public typealias PWM8 = ATmega328P.Tc0.ChannelA.PWM8
}

extension ATmega328P.Tc0 {
  /// Configures the timer in Clear Timer on Compare (CTC) mode. When in this mode, the timer counts up until it
  /// reaches the value in the ``channelA``'s ``compareValue``. When that happens, the ``channelA``'s
  /// ``ChannelA/onMatch/triggered`` is set, and the timer starts counting from `0` again.
  @inlinable @inline(__always) public static func configureModeCTC(clock: ClockSelect3BitWithExternal, top: ChannelA.Counter) {
    Self.waveformGenerationMode = 0b10
    Self.clock = clock
  }

  /// Checks if the timer is in Clear Timer on Compare (CTC) mode.
  @inlinable @inline(__always) public static var isModeCTC: Bool { Self.waveformGenerationMode == 0b10 }
}

// MARK: ChannelB

extension ATmega328P.Tc0: TimerWithChannelB {
  /// The "B" channel of the ``ATmega328P/Tc0`` peripheral.
  public enum ChannelB: Timer8BitChannel {
    /// The ``TimerPeripheral`` type that owns this channel.
    public typealias Timer = ATmega328P.Tc0

    /// This value is used as a comparison value against the ``timer``'s counter value.
    @inlinable @inline(__always) public static var compareValue: Counter {
      @inlinable @inline(__always) get { .init(Timer.`ocr0b`.registerValue) }
      @inlinable @inline(__always) set { Timer.`ocr0b` = .init(registerValue: .init(newValue)) }
    }
  }
}

extension ATmega328P.Tc0.ChannelB: TimerChannelWithPin {
  /// Determines the effect of the ``compareValue`` on the ``timer``'s output pin.
  @inlinable @inline(__always) public static var outputPinEffect: OutputComparePinEffect {
    @inlinable @inline(__always) get { .init(bitfieldValue: Timer.`tccr0a`.`com0b`.bitfieldValue) }
    @inlinable @inline(__always) set { Timer.`tccr0a`.`com0b` = .init(bitfieldValue: newValue.bitfieldValue) }
  }

  /// Forces the ``outputPinEffect`` to be applied immediately, if the timer
  /// is in a waveform generation mode that allows the compare register to be updated immediately.
  @inlinable @inline(__always) public static func forceCompareMatch() -> Bool {
    guard Timer.isModeNormal || Timer.isModeCTC else { return false }
    Timer.`tccr0b`.`foc0b` = .init(bitfieldValue: 1)
    return true
  }
}

extension ATmega328P.Tc0.ChannelB: HasOutputComparePin {
  /// The ``OutputComparePin`` type for this channel.
  public enum OutputCompare: TimerOutputComparePin {
    public typealias Channel = ATmega328P.Tc0.ChannelB

    public typealias Port = ATmega328P.Portd

    public typealias Value = Channel.Counter

    public typealias ClockSelect = Channel.Timer.ClockSelect

    /// The pin number
    @inlinable @inline(__always) public static var portPin: UInt8 { 5 }

  }
}

extension ATmega328P.Tc0.Signals.Ocb: HasOutputComparePin {
  /// The ``OutputComparePin`` for ``ATmega328P/Tc0``.``ATmega328P/Tc0/ChannelB``.
  public typealias OutputCompare = ATmega328P.Tc0.ChannelB.OutputCompare
}

extension ATmega328P.Tc0.ChannelB: HasPWM8BitPin {
  /// The 8-bit ``PWMPin`` type for this channel.
  public enum PWM8: TimerPWM8BitPin, HasPWM8BitPin {
    /// The Channel type.
    public typealias Channel = ATmega328P.Tc0.ChannelB

    /// The PWM8 is its own ``PWM8`` type, for HasPWM8BitPin.
    public typealias PWM8 = Self

    /// The Port type.
    public typealias Port = ATmega328P.Portd

    /// The pin number
    @inlinable @inline(__always) public static var portPin: UInt8 { 5 }

  }
}

extension ATmega328P.Tc0.Signals.Ocb: HasPWM8BitPin {
  /// The  8-bit ``PWMPin`` for ``ATmega328P/Tc0``.``ATmega328P/Tc0/ChannelB``.
  public typealias PWM8 = ATmega328P.Tc0.ChannelB.PWM8
}
