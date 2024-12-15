import HAL

extension ATmega328P.Cpu: HasGlobalInterruptSupport {
  /// Are global interrupts enabled?
  public static var globalInterruptsEnabled: Bool {
    get { .init(bitfieldValue: `sreg`.`i`.bitfieldValue) }
    set { `sreg`.`i` = .init(bitfieldValue: newValue.bitfieldValue) }
  }
}

extension ATmega328P: HasGlobalInterruptSupport {
  /// Are global interrupts enabled?
  public static var globalInterruptsEnabled: Bool {
    get { Cpu.globalInterruptsEnabled }
    set { Cpu.globalInterruptsEnabled = newValue }
  }
}
