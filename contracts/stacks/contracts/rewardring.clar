;; ────────────────────────────────────────
;; RewardRing v1.0.0
;; Author: solidworkssa
;; License: MIT
;; ────────────────────────────────────────

(define-constant VERSION "1.0.0")

;; Error codes
(define-constant ERR-NOT-AUTHORIZED (err u401))
(define-constant ERR-NOT-FOUND (err u404))
(define-constant ERR-ALREADY-EXISTS (err u409))
(define-constant ERR-INVALID-INPUT (err u422))

;; RewardRing Clarity Contract
;; Gamified loyalty reward system.


(define-map points principal uint)

(define-public (earn (amount uint))
    (begin
        (map-set points contract-caller (+ (default-to u0 (map-get? points contract-caller)) amount))
        (ok true)
    )
)

