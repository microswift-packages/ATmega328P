import HAL

extension ATmega328P.Cpu: HasGlobalInterruptSupport {
  /// Are global interrupts enabled?
  @inlinable @inline(__always) public static var globalInterruptsEnabled: Bool {
    @inlinable @inline(__always) get { .init(bitfieldValue: `sreg`.`i`.bitfieldValue) }
    @inlinable @inline(__always) set { `sreg`.`i` = .init(bitfieldValue: newValue.bitfieldValue) }
  }
}

extension ATmega328P: HasGlobalInterruptSupport {
  /// Are global interrupts enabled?
  @inlinable @inline(__always) public static var globalInterruptsEnabled: Bool {
    @inlinable @inline(__always) get { Cpu.globalInterruptsEnabled }
    @inlinable @inline(__always) set { Cpu.globalInterruptsEnabled = newValue }
  }
}
