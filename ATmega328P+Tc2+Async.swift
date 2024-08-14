import HAL

extension ATmega328P.Tc2: Timer8BitAsyncPeripheral {
  /// Is the timer in asynchronous mode?
  @inlinable @inline(__always) public private(set) static var isAsynchronous: Bool {
    @inlinable @inline(__always) get { .init(bitfieldValue: Self.`assr`.`as2`.bitfieldValue) }
    set { Self.`assr`.`as2` = .init(bitfieldValue: newValue.bitfieldValue) }
  }

  /// Is the counter updating?
  @inlinable @inline(never) public static var isCounterUpdating: Bool { .init(bitfieldValue: Self.`assr`.`tcn2ub`.bitfieldValue) }

  /// Are any control registers updating?
  @inlinable @inline(never) public static var isConfigurationUpdating: Bool {
      Bool(bitfieldValue: Self.`assr`.`tcr2aub`.bitfieldValue) ||
      Bool(bitfieldValue: Self.`assr`.`tcr2bub`.bitfieldValue)
    }
}

extension ATmega328P.Tc2.ChannelA: Timer8BitAsyncChannel {
  /// Is the compare value updating?
  @inlinable @inline(__always) public static var isCompareValueUpdating: Bool { .init(bitfieldValue: Timer.`assr`.`ocr2aub`.bitfieldValue) }
}

extension ATmega328P.Tc2.ChannelB: Timer8BitAsyncChannel {
  /// Is the compare value updating?
  @inlinable @inline(__always) public static var isCompareValueUpdating: Bool { .init(bitfieldValue: Timer.`assr`.`ocr2bub`.bitfieldValue) }
}

extension ATmega328P.Tc2 {
  /// Configures the timer to use an external clock source.
  /// - Parameter ticks: The number of ticks per cycle of the external clock.
}

extension ATmega328P.Tc2: Timer8BitAsyncExternalClockPeripheral {
  /// Is the timer using an external clock?
  @inlinable @inline(__always) public internal(set) static var isUsingExternalClock: Bool {
    @inlinable @inline(__always) get { .init(bitfieldValue: Self.`assr`.`exclk`.bitfieldValue) }
    set { Self.`assr`.`exclk` = .init(bitfieldValue: newValue.bitfieldValue) }
  }

  /// Configure the timer to use an external clock source.
  /// The clock should be connected to the `TOSC1` pin.
  /// - Parameter ticks: The number of ticks per cycle of the external clock.
  @inlinable @inline(__always) public static func configureExternalClock(ticks: ClockSelect.TickFrequency) {
    isUsingExternalClock = true
  }
}
