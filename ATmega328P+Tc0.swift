import HAL
// Adds ``HAL/TimerPeripheral`` conformance to the ``ATmega328P/Tc0`` peripheral.

extension ATmega328P.Tc0: MinimalTimerPeripheral {
  /// Provides access to the current counter value.
  public static var counter: UInt8 {
    get { .init(Self.`tcnt0`.registerValue) }
    set { Self.`tcnt0`.registerValue = .init(truncatingIfNeeded: newValue) }
  }
}
