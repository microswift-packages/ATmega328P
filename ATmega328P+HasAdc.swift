import HAL

extension ATmega328P: HasAdc {
}

extension Variants.Au: HasAdc {
  /// The ADC peripheral type.
  public typealias Adc = ATmega328P.Adc
}

extension Variants.Mmh: HasAdc {
  /// The ADC peripheral type.
  public typealias Adc = ATmega328P.Adc
}

extension Variants.Mu: HasAdc {
  /// The ADC peripheral type.
  public typealias Adc = ATmega328P.Adc
}

extension Variants.Pu: HasAdc {
  /// The ADC peripheral type.
  public typealias Adc = ATmega328P.Adc
}

extension Variants.An: HasAdc {
  /// The ADC peripheral type.
  public typealias Adc = ATmega328P.Adc
}

extension Variants.Mn: HasAdc {
  /// The ADC peripheral type.
  public typealias Adc = ATmega328P.Adc
}

extension Variants.Pn: HasAdc {
  /// The ADC peripheral type.
  public typealias Adc = ATmega328P.Adc
}

extension Pinouts.Tqfp32: HasAdc {
  /// The ADC peripheral type.
  public typealias Adc = ATmega328P.Adc
}

extension Pinouts.Qfn32: HasAdc {
  /// The ADC peripheral type.
  public typealias Adc = ATmega328P.Adc
}

extension Pinouts.Qfn28: HasAdc {
  /// The ADC peripheral type.
  public typealias Adc = ATmega328P.Adc
}

extension Pinouts.Pdip28: HasAdc {
  /// The ADC peripheral type.
  public typealias Adc = ATmega328P.Adc
}
