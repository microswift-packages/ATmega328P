import HAL

extension ATmega328P.Wdt: WatchdogTimerPeripheral {
  /// The CPU peripheral.
  public typealias CPU = ATmega328P.Cpu

  /// The timeout period.
  @inlinable @inline(__always) public internal(set) static var timeout: WatchdogTimeoutAt128kHz {
    @inlinable @inline(__always) get { .init(bitfieldValue: `wdtcsr`.`wdp`.bitfieldValue) }
    set { `wdtcsr`.`wdp` = .init(bitfieldValue: newValue.bitfieldValue) }
  }

  /// Will the Watchdog Timer reset the system when it times out?
  @inlinable @inline(__always) public internal(set) static var systemResetEnabled: Bool {
    @inlinable @inline(__always) get { .init(bitfieldValue: `wdtcsr`.`wde`.bitfieldValue) }
    set { `wdtcsr`.`wde` = .init(bitfieldValue: newValue.bitfieldValue) }
  }

  /// If set, the Watchdog Timer's ``systemResetEnabled`` and ``timeout`` bitfields can be written to.
  @inlinable @inline(__always) internal static var configurationEnabled: Bool {
    @inlinable @inline(__always) get { .init(bitfieldValue: `wdtcsr`.`wdce`.bitfieldValue) }
    set { `wdtcsr`.`wdce` = .init(bitfieldValue: newValue.bitfieldValue) }
  }

  /// Configures the timer to be stopped.
  @inlinable @inline(__always) public static func configureStopped() {
    Self.reset()
    Self.configurationEnabled = true
    Self.systemResetEnabled = false
  }

  /// Configures the timer to perform a system reset after the timeout.
  /// - Parameters:
  ///   - timeout: The approximate amount of time to wait before timing out.
  @inlinable @inline(__always) public static func configureSystemReset(after timeout: TimeoutField) {
    Self.reset()
    Self.configurationEnabled = true
    Self.systemResetEnabled = true
    Self.timeout = timeout
  }

  /// Resets the timer.
  @inlinable @inline(__always) public static func reset() {
    CPU.`mcusr`.`wdrf` = .init(bitfieldValue: 0)
  }
}
