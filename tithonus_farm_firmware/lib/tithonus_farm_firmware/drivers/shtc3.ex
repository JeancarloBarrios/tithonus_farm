defmodule SHTC3 do
  @moduledoc """
  I2C driver for the SHT3 Humidity and Temperature Sensor from Sensirion.

  """
  alias Circuits.I2C

  @i2c_address <<0x70>>

  @sleep <<0xB0, 0x98>>

  @wake_up <<0x35, 0x17>>

  @messure_cmd %{
    normal: %{
      true => %{
        tmp: <<0x7C, 0xA2>>,
        ht: <<0x5C, 0x24>>
      },
      false => %{
        tmp: <<0x78, 0x66>>,
        ht: <<0x58, 0xE0>>
      }
    },
    low_power: %{
      true => %{
        tmp: <<0x64, 0x58>>,
        ht: <<0x44, 0xDE>>
      },
      false => %{
        tmp: <<0x60, 0x9C>>,
        ht: <<0x40, 0x1A>>
      }
    }
  }

  @soft_reset <<0x80, 0x5D>>

  @read_id_register <<0xEF, 0xC8>>

end
