Workarea Payflow Pro 1.0.2 (2019-03-19)
--------------------------------------------------------------------------------

*   Add rubocop.yml and resolve warnings

    PAYFLOWPR-5
    Jake Beresford

*   Update CI scripts and gemfile for v3.4 compatibility

    PAYFLOWPR-5
    Jake Beresford



Workarea Payflow Pro 1.0.1 (2018-03-27)
--------------------------------------------------------------------------------


Workarea Payflow Pro 1.0.1 (2018-03-27)
--------------------------------------------------------------------------------

*   Save token after payment transaction to avoid zero dollar authorization

    Commit avoids zero dollar auths wich some payment processors charge
    transaction fees on. Commit also consolidates duplicated code on the
    auth and purchase actions.

    PAYFLOWPR-2
    Jeff Yucis
