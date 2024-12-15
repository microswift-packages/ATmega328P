import HAL

extension ATmega328P.Usart0: Usart {
  public static var ucsra: UInt8 {
    get { Self.`ucsr0a`.registerValue }
    set { Self.`ucsr0a`.registerValue = newValue }
  }

  public static var ucsrb: UInt8 {
    get { Self.`ucsr0b`.registerValue }
    set { Self.`ucsr0b`.registerValue = newValue }
  }

  public static var ucsrc: UInt8 {
    get { Self.`ucsr0c`.registerValue }
    set { Self.`ucsr0c`.registerValue = newValue }
  }

  public static var udr: UInt8 {
    get { Self.`udr0` }
    set { Self.`udr0` = newValue }
  }

  public static var ubrr: UInt16 {
    get { Self.`ubrr0` }
    set { Self.`ubrr0` = newValue }
  }
}
