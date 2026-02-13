;; RewardRing Clarity Contract
;; Gamified loyalty reward system.


(define-map points principal uint)

(define-public (earn (amount uint))
    (begin
        (map-set points tx-sender (+ (default-to u0 (map-get? points tx-sender)) amount))
        (ok true)
    )
)

