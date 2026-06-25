// vyges-additions: coralnpu_tlul_pkg_32 shim package.
//
// coralnpu-i2c-master imports coralnpu_tlul_pkg_32 for its TL-UL device-port
// types (tl_h2d_t/tl_d2h_t). That package is generated inside the CoralNPU
// subsystem build (a 32-bit-data TL-UL namespace) and is ABSENT when this IP is
// vendored standalone into a Vyges SoC. The SoC fabric is the standard OpenTitan
// tlul_pkg (also 32-bit data, top_pkg::TL_DW = 32), so provide coralnpu_tlul_pkg_32
// as a thin type-alias over tlul_pkg — the i2c-master's TL-UL port then resolves
// to the same type as the SoC bus and wires generically.
//
// Note for the IP owner: consider depending on the standard tlul_pkg directly, or
// shipping this package, so the IP is self-contained outside the CoralNPU tree.
//
// SPDX-License-Identifier: Apache-2.0

package coralnpu_tlul_pkg_32;
  typedef tlul_pkg::tl_h2d_t tl_h2d_t;
  typedef tlul_pkg::tl_d2h_t tl_d2h_t;
endpackage
