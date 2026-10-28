import { PALETTE } from './palette';

// Shown in the app header. Only N5 is enabled for now; set enabled: true to open another level later.
export const LEVELS = [
  { id: "n1", label: "N1", numeral: "一", enabled: false, color: PALETTE[4] },
  { id: "n2", label: "N2", numeral: "二", enabled: false, color: PALETTE[3] },
  { id: "n3", label: "N3", numeral: "三", enabled: false, color: PALETTE[2] },
  { id: "n4", label: "N4", numeral: "四", enabled: false, color: PALETTE[1] },
  { id: "n5", label: "N5", numeral: "五", enabled: true, color: PALETTE[0] },
];
