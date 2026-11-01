function love.conf(t)
    -- =========================================================================
    -- FENSTER & GRAFIK (Fenstereinstellungen)
    -- =========================================================================
    t.window.title = "Love 4 Funkinz'"       -- Der Titel des Spielfensters
    t.window.width = 1280                      -- Standardbreite des Fensters in Pixeln
    t.window.height = 720                     -- Standardhöhe des Fensters in Pixeln
    t.window.borderless = false               -- Wenn true, wird das Fenster ohne Rahmen dargestellt
    t.window.resizable = true                -- Bestimmt, ob der Spieler die Fenstergröße ändern kann
    t.window.minwidth = 1                   -- Minimale Breite (falls resizable = true)
    t.window.minheight = 1                    -- Minimale Höhe (falls resizable = true)
    t.window.fullscreen = false               -- Startet das Spiel direkt im Vollbildmodus
    t.window.fullscreentype = "desktop"       -- Vollbildmodus-Typ: "desktop" (Standard) oder "exclusive"
    t.window.vsync = 1                       -- 1 = VSync an (synchronisiert mit Monitor-Hz), 0 = aus, -1 = adaptiv
    t.window.msaa = 4                   -- Anzahl der Multisampling-Antialiasing-Samples (0 bis 16 für Kantenglättung)
    t.window.display = 1                      -- Auf welchem Monitor das Spiel starten soll (1, 2, etc.)
    t.window.highdpi = true                  -- Aktiviert High-DPI-Modus für Retina/4K-Displays (skaliert Pixelkoordinaten)
    t.window.x = nil                          -- X-Position des Fensters beim Start (nil zentriert das Fenster)
    t.window.y = nil                          -- Y-Position des Fensters beim Start (nil zentriert das Fenster)

    -- =========================================================================
    -- PROJEKT-INFORMATIONEN
    -- =========================================================================
    t.identity = "love4funkiz"       -- Name des Speicherordners für Spielstände (in AppData/Application Support)
    t.version = "11.5"                        -- Die LÖVE-Version, für die das Spiel geschrieben wurde (z.B. "11.5")

    -- =========================================================================
    -- SYSTEM & KONSOLE
    -- =========================================================================
    t.console = true                          -- Öffnet unter Windows zusätzlich ein Konsolenfenster für print()-Befehle
    t.accelerometerjoystick = true            -- (Mobilgeräte) Registriert den Beschleunigungssensor als Joystick
    t.externalstorage = true                 -- (Android) True erlaubt das Speichern auf externen Speichergeräten
    t.gamedpadupdaterate = 0                  -- Wie oft Gamepad-Zuweisungen aktualisiert werden (0 = Standard)

    -- =========================================================================
    -- LÖVE-MODULE (True = geladen, False = deaktiviert für schnelleren Start/weniger RAM)
    -- =========================================================================
    t.modules.audio = true                    -- Aktiviert das Audio-Modul
    t.modules.data = true                     -- Aktiviert Daten-Handhabung
    t.modules.event = true                    -- Aktiviert das Event-System (wichtig für Tastatur/Maus)
    t.modules.font = true                     -- Aktiviert Schriftarten
    t.modules.graphics = true                 -- Aktiviert die Grafik-Engine
    t.modules.image = true                    -- Aktiviert Bild-Dekodierung (PNG, JPEG etc.)
    t.modules.joystick = true                 -- Aktiviert Controller- und Joystick-Support
    t.modules.keyboard = true                 -- Aktiviert Tastatur-Abfragen
    t.modules.math = true                     -- Aktiviert LÖVEs mathematische Zusatzfunktionen
    t.modules.mouse = true                    -- Aktiviert Maus-Abfragen
    t.modules.physics = false                  -- Aktiviert die Box2D-Physik-Engine (kann bei 2D-Plattformern oft auf false)
    t.modules.sound = true                    -- Aktiviert Sound-Dekodierung
    t.modules.system = true                   -- Aktiviert Systemabfragen (z.B. Zwischenablage, Batterie)
    t.modules.thread = false                   -- Aktiviert Multithreading (Hintergrundprozesse)
    t.modules.timer = true                    -- Aktiviert das Timer-Modul (wichtig für Delta Time / dt)
    t.modules.touch = false                    -- Aktiviert Touchscreen-Support
    t.modules.video = true                    -- Aktiviert Video-Wiedergabe
    t.modules.window = true                   -- Aktiviert Fenster-Management
end
