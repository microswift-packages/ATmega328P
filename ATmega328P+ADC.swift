import HAL

extension ATmega328P.Adc: Adc {
  /// Low level register conformance.
}

extension ATmega328P.Adc: AdcPeripheral {
  public typealias ChannelSelect = Admux.AdcMuxSingle

  /// Is the ADC enabled?
  @inlinable @inline(__always) public static var enabled: Bool {
    @inlinable @inline(__always) get { .init(bitfieldValue: `adcsra`.`aden`.bitfieldValue) }
    @inlinable @inline(__always) set { `adcsra`.`aden` = .init(bitfieldValue: newValue.bitfieldValue) }
  }

  /// Starts a conversion on the given channel.
  @inlinable @inline(__always) public static func startConversion(on channel: ChannelSelect) {
    Self.`admux`.`mux` = .init(bitfieldValue: channel.bitfieldValue)
    Self.enabled = true
    Self.`adcsra`.`adsc` = .init(bitfieldValue: true)
  }

  /// Is a conversion complete?
  @inlinable @inline(never) public static var conversionComplete: Bool { !.init(bitfieldValue: Self.`adcsra`.`adsc`.bitfieldValue) }

  /// The data register for the ADC peripheral.
  @inlinable @inline(__always) public static var data: UInt16 { Self.`adc`.registerValue }
}

import HAL

extension ATmega328P.Adc: SingleConversionAdcPeripheral {
  /// Configures the ADC for a single conversion.
  /// - Parameters:
  ///   - referenceVoltage: The reference voltage to use.
  ///   - prescaler: The prescaler to use.
  @inlinable @inline(__always) public static func configureSingleConversion(referenceVoltage: AdcReferenceVoltage, prescaler: AdcPrescaler) {
    Self.`adcsra`.`adate` = .init(bitfieldValue: false)
    Self.referenceVoltage = referenceVoltage
    Self.prescaler = prescaler
  }

  /// The reference voltage to use for conversions. 
  @inlinable @inline(__always) public internal(set) static var referenceVoltage: AdcReferenceVoltage {
    @inlinable @inline(__always) get { .init(bitfieldValue: `admux`.`refs`.bitfieldValue) }
    set { `admux`.`refs` = .init(bitfieldValue: newValue.bitfieldValue) }
  }

  /// The prescaler to use for conversions.
  @inlinable @inline(__always) public internal(set) static var prescaler: AdcPrescaler {
    @inlinable @inline(__always) get { .init(bitfieldValue: `adcsra`.`adps`.bitfieldValue) }
    set { `adcsra`.`adps` = .init(bitfieldValue: newValue.bitfieldValue) }
  }

  /// If set to `true`, the data will be left-adjusted in the data register.
  @inlinable @inline(__always) public static var leftAdjustResult: Bool {
    @inlinable @inline(__always) get { .init(bitfieldValue: `admux`.`adlar`.bitfieldValue) }
    @inlinable @inline(__always) set { `admux`.`adlar` = .init(bitfieldValue: newValue.bitfieldValue) }
  }
}

extension ATmega328P.Adc: FreeRunningAdcPeripheral {
  /// Configures the ADC for free-running mode.
  /// - Parameters:
  ///   - referenceVoltage: The reference voltage to use.
  ///   - prescaler: The prescaler to use.
  @inlinable @inline(__always) public static func configureFreeRunning(referenceVoltage: AdcReferenceVoltage, prescaler: AdcPrescaler) {
    // Turn off the auto trigger:
    Self.`adcsra`.`adate` = .init(bitfieldValue: false)
    // Set the trigger source to free-running mode:
    Self.`adcsrb`.`adts` = .init(bitfieldValue: 0)
    // Set the reference voltage:
    Self.referenceVoltage = referenceVoltage
    // Set the prescaler:
    Self.prescaler = prescaler
    // Turn on the auto trigger:
    Self.`adcsra`.`adate` = .init(bitfieldValue: true)
  }
}

extension ATmega328P.Adc {
  /// The Adc0 analog pin definition.
  public enum Adc0: AdcAnalogPin, HasAnalogPin {
    /// The ADC instance.
    public typealias Adc = ATmega328P.Adc

    /// This pin is its own analog pin.
    public typealias Analog = Self

    /// The channel number.
    @inlinable @inline(__always) public static var channel: Adc.ChannelSelect { .init(bitfieldValue: 0x0) }

  }
}

// MARK: ADC Adc0 Signal

extension ATmega328P.Adc.Signals.Adc0: HasAnalogPin {
  /// The analog pin for this signal.
  public typealias Adc = ATmega328P.Adc

  /// This pin is its own analog pin.
  public typealias Analog = ATmega328P.Adc.Adc0
}

extension ATmega328P.Adc {
  /// The Adc1 analog pin definition.
  public enum Adc1: AdcAnalogPin, HasAnalogPin {
    /// The ADC instance.
    public typealias Adc = ATmega328P.Adc

    /// This pin is its own analog pin.
    public typealias Analog = Self

    /// The channel number.
    @inlinable @inline(__always) public static var channel: Adc.ChannelSelect { .init(bitfieldValue: 0x1) }

  }
}

// MARK: ADC Adc1 Signal

extension ATmega328P.Adc.Signals.Adc1: HasAnalogPin {
  /// The analog pin for this signal.
  public typealias Adc = ATmega328P.Adc

  /// This pin is its own analog pin.
  public typealias Analog = ATmega328P.Adc.Adc1
}

extension ATmega328P.Adc {
  /// The Adc2 analog pin definition.
  public enum Adc2: AdcAnalogPin, HasAnalogPin {
    /// The ADC instance.
    public typealias Adc = ATmega328P.Adc

    /// This pin is its own analog pin.
    public typealias Analog = Self

    /// The channel number.
    @inlinable @inline(__always) public static var channel: Adc.ChannelSelect { .init(bitfieldValue: 0x2) }

  }
}

// MARK: ADC Adc2 Signal

extension ATmega328P.Adc.Signals.Adc2: HasAnalogPin {
  /// The analog pin for this signal.
  public typealias Adc = ATmega328P.Adc

  /// This pin is its own analog pin.
  public typealias Analog = ATmega328P.Adc.Adc2
}

extension ATmega328P.Adc {
  /// The Adc3 analog pin definition.
  public enum Adc3: AdcAnalogPin, HasAnalogPin {
    /// The ADC instance.
    public typealias Adc = ATmega328P.Adc

    /// This pin is its own analog pin.
    public typealias Analog = Self

    /// The channel number.
    @inlinable @inline(__always) public static var channel: Adc.ChannelSelect { .init(bitfieldValue: 0x3) }

  }
}

// MARK: ADC Adc3 Signal

extension ATmega328P.Adc.Signals.Adc3: HasAnalogPin {
  /// The analog pin for this signal.
  public typealias Adc = ATmega328P.Adc

  /// This pin is its own analog pin.
  public typealias Analog = ATmega328P.Adc.Adc3
}

extension ATmega328P.Adc {
  /// The Adc4 analog pin definition.
  public enum Adc4: AdcAnalogPin, HasAnalogPin {
    /// The ADC instance.
    public typealias Adc = ATmega328P.Adc

    /// This pin is its own analog pin.
    public typealias Analog = Self

    /// The channel number.
    @inlinable @inline(__always) public static var channel: Adc.ChannelSelect { .init(bitfieldValue: 0x4) }

  }
}

// MARK: ADC Adc4 Signal

extension ATmega328P.Adc.Signals.Adc4: HasAnalogPin {
  /// The analog pin for this signal.
  public typealias Adc = ATmega328P.Adc

  /// This pin is its own analog pin.
  public typealias Analog = ATmega328P.Adc.Adc4
}

extension ATmega328P.Adc {
  /// The Adc5 analog pin definition.
  public enum Adc5: AdcAnalogPin, HasAnalogPin {
    /// The ADC instance.
    public typealias Adc = ATmega328P.Adc

    /// This pin is its own analog pin.
    public typealias Analog = Self

    /// The channel number.
    @inlinable @inline(__always) public static var channel: Adc.ChannelSelect { .init(bitfieldValue: 0x5) }

  }
}

// MARK: ADC Adc5 Signal

extension ATmega328P.Adc.Signals.Adc5: HasAnalogPin {
  /// The analog pin for this signal.
  public typealias Adc = ATmega328P.Adc

  /// This pin is its own analog pin.
  public typealias Analog = ATmega328P.Adc.Adc5
}

extension ATmega328P.Adc {
  /// The Adc6 analog pin definition.
  public enum Adc6: AdcAnalogPin, HasAnalogPin {
    /// The ADC instance.
    public typealias Adc = ATmega328P.Adc

    /// This pin is its own analog pin.
    public typealias Analog = Self

    /// The channel number.
    @inlinable @inline(__always) public static var channel: Adc.ChannelSelect { .init(bitfieldValue: 0x6) }

  }
}

extension ATmega328P.Adc {
  /// The Adc7 analog pin definition.
  public enum Adc7: AdcAnalogPin, HasAnalogPin {
    /// The ADC instance.
    public typealias Adc = ATmega328P.Adc

    /// This pin is its own analog pin.
    public typealias Analog = Self

    /// The channel number.
    @inlinable @inline(__always) public static var channel: Adc.ChannelSelect { .init(bitfieldValue: 0x7) }

  }
}

extension ATmega328P.Adc {
  /// The Tempsens analog pin definition.
  public enum Tempsens: AdcAnalogPin, HasAnalogPin {
    /// The ADC instance.
    public typealias Adc = ATmega328P.Adc

    /// This pin is its own analog pin.
    public typealias Analog = Self

    /// The channel number.
    @inlinable @inline(__always) public static var channel: Adc.ChannelSelect { .init(bitfieldValue: 0x8) }

  }
}

extension ATmega328P.Adc {
  /// The AdcVbg analog pin definition.
  public enum AdcVbg: AdcAnalogPin, HasAnalogPin {
    /// The ADC instance.
    public typealias Adc = ATmega328P.Adc

    /// This pin is its own analog pin.
    public typealias Analog = Self

    /// The channel number.
    @inlinable @inline(__always) public static var channel: Adc.ChannelSelect { .init(bitfieldValue: 0xe) }

  }
}

extension ATmega328P.Adc {
  /// The AdcGnd analog pin definition.
  public enum AdcGnd: AdcAnalogPin, HasAnalogPin {
    /// The ADC instance.
    public typealias Adc = ATmega328P.Adc

    /// This pin is its own analog pin.
    public typealias Analog = Self

    /// The channel number.
    @inlinable @inline(__always) public static var channel: Adc.ChannelSelect { .init(bitfieldValue: 0xf) }

  }
}
