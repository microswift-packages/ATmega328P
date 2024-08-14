import HAL

extension ATmega328P: HasUart {
  /// The chips's first UART peripheral is its default UART.
  public typealias Uart = ATmega328P.Usart0
}

extension Variants.Au: HasUart {
  /// The ATmega328P-AU variant's UART peripheral.
  public typealias Uart = ATmega328P.Usart0
}

extension Variants.Mmh: HasUart {
  /// The ATmega328P-MMH variant's UART peripheral.
  public typealias Uart = ATmega328P.Usart0
}

extension Variants.Mu: HasUart {
  /// The ATmega328P-MU variant's UART peripheral.
  public typealias Uart = ATmega328P.Usart0
}

extension Variants.Pu: HasUart {
  /// The ATmega328P-PU variant's UART peripheral.
  public typealias Uart = ATmega328P.Usart0
}

extension Variants.An: HasUart {
  /// The ATmega328P-AN variant's UART peripheral.
  public typealias Uart = ATmega328P.Usart0
}

extension Variants.Mn: HasUart {
  /// The ATmega328P-MN variant's UART peripheral.
  public typealias Uart = ATmega328P.Usart0
}

extension Variants.Pn: HasUart {
  /// The ATmega328P-PN variant's UART peripheral.
  public typealias Uart = ATmega328P.Usart0
}

extension Pinouts.Tqfp32: HasUart {
  /// The TQFP32 pinout's UART peripheral.
  public typealias Uart = ATmega328P.Usart0
}

extension Pinouts.Qfn32: HasUart {
  /// The QFN32 pinout's UART peripheral.
  public typealias Uart = ATmega328P.Usart0
}

extension Pinouts.Qfn28: HasUart {
  /// The QFN28 pinout's UART peripheral.
  public typealias Uart = ATmega328P.Usart0
}

extension Pinouts.Pdip28: HasUart {
  /// The PDIP28 pinout's UART peripheral.
  public typealias Uart = ATmega328P.Usart0
}
