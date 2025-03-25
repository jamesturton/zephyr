# SPDX-License-Identifier: Apache-2.0
# Copyright (c) 2025 James Turton

board_runner_args(uf2 "--board-id=RPI-RP2")

include(${ZEPHYR_BASE}/boards/common/uf2.board.cmake)
