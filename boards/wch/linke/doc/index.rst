.. zephyr:board:: linke

Overview
********

The `WCH`_ LinkE hardware provides support for QingKe 32-bit RISC-V4F
processor and the following devices:

* CLOCK
* :abbr:`GPIO (General Purpose Input Output)`
* :abbr:`NVIC (Nested Vectored Interrupt Controller)`

The board is equipped with two LEDs and two Buttons.
The `WCH webpage on CH32V305`_ contains the processor's manuals.
The `WCH webpage on LinkE`_ contains the LinkE's schematic.

Hardware
********

The QingKe 32-bit RISC-V4C processor of the WCH LinkE is clocked by an external
12 MHz crystal or the internal 8 MHz oscillator and runs up to 144 MHz.
The CH32V305 SoC Features 8 USART, 4 GPIO ports, 3 SPI, 2 I2C, 2 ADC, RTC, 2
CAN, 2 USB Device, USB Host, 4 OPA, and several timers.

Supported Features
==================

The ``linke`` board target supports the following hardware features:

+-----------+------------+----------------------+
| Interface | Controller | Driver/Component     |
+===========+============+======================+
| CLOCK     | on-chip    | clock_control        |
+-----------+------------+----------------------+
| GPIO      | on-chip    | gpio                 |
+-----------+------------+----------------------+
| PINCTRL   | on-chip    | pinctrl              |
+-----------+------------+----------------------+
| TIMER     | on-chip    | timer                |
+-----------+------------+----------------------+
| UART      | on-chip    | uart                 |
+-----------+------------+----------------------+

Other hardware features have not been enabled yet for this board.

Connections and IOs
===================

LED
---

* LED0 = Red Mode LED
* LED1 = Blue Activity LED

Button
------

* SW0 = Mode Select Button (Active Low)
* SW1 = Bootstrap Button (Active High)

Programming and Debugging
*************************

Applications for the ``linke`` board target can be built and flashed
in the usual way (see :ref:`build_an_application` and :ref:`application_run`
for more details); however, an external programmer is required since the board
does not have any built-in debug support.

The following pins of the external programmer must be connected to the
following pins on the PCB:

* VCC = VCC
* GND = GND
* SWIO = PA13
* SWCLK = PA14

Flashing
========

You can use ``minichlink`` to flash the board. Once ``minichlink`` has been set
up, build and flash applications as usual (see :ref:`build_an_application` and
:ref:`application_run` for more details).

Here is an example for the :zephyr:code-sample:`blinky` application.

.. zephyr-app-commands::
   :zephyr-app: samples/basic/blinky
   :board: linke
   :goals: build flash

Debugging
=========

This board can be debugged via OpenOCD or ``minichlink``.

Testing the LED on the WCH linke
**************************************

There is 1 sample program that allow you to test that the LED on the board is
working properly with Zephyr:

.. code-block:: console

   samples/basic/blinky

You can build and flash the examples to make sure Zephyr is running
correctly on your board. The button and LED definitions can be found
in :zephyr_file:`boards/wch/linke/linke.dts`.

References
**********

.. target-notes::

.. _WCH: http://www.wch-ic.com
.. _WCH webpage on CH32V305: https://www.wch-ic.com/products/CH32V305.html
.. _WCH webpage on LinkE: https://www.wch-ic.com/products/WCH-Link.html
