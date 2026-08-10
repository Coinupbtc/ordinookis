# Feel-pass — ordinookis

Cold open as a stranger (~15 min). Surface: `index.html` gallery.

## Five bullets

1. **Cold open:** Title + tagline make it obvious this is a character/video gallery.
2. **Primary path:** Characters grid loads; videos have visible controls under Videos.
3. **Break/empty:** Missing video file would show empty player — paths are relative and listed in README.
4. **Loading:** Faststart MP4s begin without waiting for a full download.
5. **Plain English:** Roster labels are simple; no host paths required.

## States

| State | Notes |
|---|---|
| Loading | poster / first frames |
| Empty | n/a with bundled assets |
| Error | browser codec miss — H.264+AAC used |
| Success | play any clip from the Videos section |

Date: 2026-08-09
