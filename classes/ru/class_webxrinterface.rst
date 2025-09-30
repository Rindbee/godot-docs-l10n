:github_url: hide

.. _class_WebXRInterface:

WebXRInterface
==============

**Наследует:** :ref:`XRInterface<class_XRInterface>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Интерфейс XR с использованием WebXR.

.. rst-class:: classref-introduction-group

Описание
----------------

WebXR — это открытый стандарт, позволяющий создавать приложения VR и AR, работающие в веб-браузере.

Таким образом, этот интерфейс доступен только при работе в веб-экспорте.

WebXR поддерживает широкий спектр устройств, от очень мощных (например, Valve Index, HTC Vive, Oculus Rift и Quest) до гораздо менее мощных (например, Google Cardboard, Oculus Go, GearVR или простые смартфоны).

Поскольку WebXR основан на JavaScript, он широко использует обратные вызовы, что означает, что **WebXRInterface** вынужден использовать сигналы, тогда как другие интерфейсы XR вместо этого использовали бы функции, которые возвращают результат немедленно. Это делает **WebXRInterface** намного более сложным для инициализации, чем другие интерфейсы XR.

Вот минимальный код, необходимый для запуска сеанса погружения в VR:

::

    extends Node3D

    var webxr_interface
    var vr_supported = false

    func _ready():
        # Мы предполагаем, что этот узел имеет кнопку в качестве дочернего элемента.
        # Эта кнопка позволяет пользователю дать согласие на вход в режим погружения в виртуальную реальность.
        $Button.pressed.connect(self._on_button_pressed)

        webxr_interface = XRServer.find_interface("WebXR")
        if webxr_interface:
            # WebXR использует много асинхронных обратных вызовов, поэтому мы подключаемся к различным
            # сигналам для их приема.
            webxr_interface.session_supported.connect(self._webxr_session_supported)
            webxr_interface.session_started.connect(self._webxr_session_started)
            webxr_interface.session_ended.connect(self._webxr_session_ended)
            webxr_interface.session_failed.connect(self._webxr_session_failed)

            # Это возвращает немедленно - наш метод _webxr_session_supported()
            # (который мы подключили к сигналу "session_supported" выше) будет
            # вызван позже, чтобы сообщить нам, поддерживается он или нет.
            webxr_interface.is_session_supported("immersive-vr")

    func _webxr_session_supported(session_mode, supported):
        if session_mode == 'immersive-vr':
            vr_supported = supported

    func _on_button_pressed():
        if not vr_supported:
            OS.alert("Ваш браузер не поддерживает VR")
            return

        # Мы хотим сеанс погружения в виртуальную реальность, а не в дополненную реальность ('immersive-ar') или
        # простое средство просмотра 3DoF ('viewer').
        webxr_interface.session_mode = 'immersive-vr'
        # «bounded-floor» — масштаб комнаты, «local-floor» — опыт стоя
        # или сидя (при наличии гарнитуры 3DoF вы оказываетесь на высоте 1,6 м над землей),
        # в то время как «local» помещает вас в XROrigin.
        # Этот список означает, что сначала будет предпринята попытка запросить «bounded-floor»,
        # затем будет выполнен возврат к «local-floor» и, в конечном итоге, «local», если ничего другого
        # не поддерживается.
        webxr_interface.requested_reference_space_types = 'bounded-floor, local-floor, local'
        # Чтобы использовать 'local-floor' или 'bounded-floor', мы также должны
        # пометить функции как обязательные или необязательные. Включив 'hand-tracking'
        # как необязательную функцию, она будет включена, если поддерживается.
        webxr_interface.required_features = 'local-floor'
        webxr_interface.optional_features = 'bounded-floor, hand-tracking'

        # Это вернет false, если мы даже не сможем запросить сеанс,
        # однако, он все еще может асинхронно завершиться неудачей позже в процессе, поэтому мы
        # узнаем, действительно ли он был успешным или неудачным, только когда вызываются наши
        # методы _webxr_session_started() или _webxr_session_failed().
        if not webxr_interface.initialize():
            OS.alert("Не удалось инициализировать")
            return

    func _webxr_session_started():
        $Button.visible = false
        # Это дает команду Godot начать рендеринг на гарнитуре.
        get_viewport().use_xr = true
        # Это будет тип опорного пространства, который вы в конечном итоге получили из
        # типов, которые вы запросили выше. Это полезно, если вы хотите, чтобы игра
        # работала немного по-разному в 'bounded-floor' и 'local-floor'.
        print("Тип референса пространства: ", webxr_interface.reference_space_type)
        # Это будет список функций, которые были успешно включены
        # (за исключением браузеров, которые не поддерживают это свойство).
        print("Включенные функции: ", webxr_interface.enabled_features)

    func _webxr_session_ended():
        $Button.visible = true
        # Если пользователь выходит из режима погружения, мы говорим Godot снова
        # отобразить веб-страницу.
        get_viewport().use_xr = false

    func _webxr_session_failed(message):
        OS.alert("Не удалось инициализировать: " + message)

Есть несколько способов обработки ввода «контроллера»:

- Использование узлов :ref:`XRController3D<class_XRController3D>` и их сигналов :ref:`XRController3D.button_pressed<class_XRController3D_signal_button_pressed>` и :ref:`XRController3D.button_released<class_XRController3D_signal_button_released>`. Так обычно обрабатываются контроллеры в приложениях XR в Godot, однако это будет работать только с продвинутыми контроллерами VR, такими как контроллеры Oculus Touch или Index, например.

- Использование сигналов :ref:`select<class_WebXRInterface_signal_select>`, :ref:`squeeze<class_WebXRInterface_signal_squeeze>` и связанных с ними сигналов. Этот метод будет работать как для продвинутых контроллеров VR, так и для нетрадиционных источников ввода, таких как нажатие на экран, голосовая команда или нажатие кнопки на самом устройстве.

Вы можете использовать оба метода, чтобы разрешить вашей игре или приложению поддерживать более широкий или узкий набор устройств и методов ввода или разрешить более продвинутое взаимодействие с более продвинутыми устройствами.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Как создать VR-игру для WebXR с Godot 4 <https://www.snopekgames.com/tutorial/2023/how-make-vr-game-webxr-godot-4>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`enabled_features<class_WebXRInterface_property_enabled_features>`                               |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`optional_features<class_WebXRInterface_property_optional_features>`                             |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`reference_space_type<class_WebXRInterface_property_reference_space_type>`                       |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`requested_reference_space_types<class_WebXRInterface_property_requested_reference_space_types>` |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`required_features<class_WebXRInterface_property_required_features>`                             |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`session_mode<class_WebXRInterface_property_session_mode>`                                       |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`visibility_state<class_WebXRInterface_property_visibility_state>`                               |
   +-----------------------------+-------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                               | :ref:`get_available_display_refresh_rates<class_WebXRInterface_method_get_available_display_refresh_rates>`\ (\ ) |const|                                    |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                               | :ref:`get_display_refresh_rate<class_WebXRInterface_method_get_display_refresh_rate>`\ (\ ) |const|                                                          |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` | :ref:`get_input_source_target_ray_mode<class_WebXRInterface_method_get_input_source_target_ray_mode>`\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`XRControllerTracker<class_XRControllerTracker>`   | :ref:`get_input_source_tracker<class_WebXRInterface_method_get_input_source_tracker>`\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const|                 |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                 | :ref:`is_input_source_active<class_WebXRInterface_method_is_input_source_active>`\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const|                     |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`is_session_supported<class_WebXRInterface_method_is_session_supported>`\ (\ session_mode\: :ref:`String<class_String>`\ )                              |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                  | :ref:`set_display_refresh_rate<class_WebXRInterface_method_set_display_refresh_rate>`\ (\ refresh_rate\: :ref:`float<class_float>`\ )                        |
   +---------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_WebXRInterface_signal_display_refresh_rate_changed:

.. rst-class:: classref-signal

**display_refresh_rate_changed**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_display_refresh_rate_changed>`

Возникает после изменения частоты обновления дисплея.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_reference_space_reset:

.. rst-class:: classref-signal

**reference_space_reset**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_reference_space_reset>`

Вызывается для указания на то, что ссылочное пространство было сброшено или перенастроено.

Когда (и будет ли) это срабатывать, зависит от браузера или устройства пользователя, но может включать в себя, когда пользователь изменил размеры своего игрового пространства (к которому вы можете получить доступ через :ref:`XRInterface.get_play_area()<class_XRInterface_method_get_play_area>`) или нажал/удержал кнопку для рецентрирования своего положения.

См. `WebXR's XRReferenceSpace событие сброса <https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpace/reset_event>`__ для получения дополнительной информации.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_select:

.. rst-class:: classref-signal

**select**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_select>`

Выдается после того, как один из источников ввода завершил свое «основное действие».

Используйте :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` и :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>`, чтобы получить больше информации об источнике ввода.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_selectend:

.. rst-class:: classref-signal

**selectend**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_selectend>`

Выдается, когда один из источников ввода завершил свое «основное действие».

Используйте :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` и :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>`, чтобы получить больше информации об источнике ввода.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_selectstart:

.. rst-class:: classref-signal

**selectstart**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_selectstart>`

Выдается, когда один из источников ввода начал свое «основное действие». 

Используйте :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` и :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>`, чтобы получить больше информации об источнике ввода.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_ended:

.. rst-class:: classref-signal

**session_ended**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_session_ended>`

Вызывается, когда пользователь завершает сеанс WebXR (что можно сделать с помощью пользовательского интерфейса из браузера или устройства).

В этот момент вам следует выполнить ``get_viewport().use_xr = false``, чтобы указать Godot возобновить рендеринг на экране.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_failed:

.. rst-class:: classref-signal

**session_failed**\ (\ message\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebXRInterface_signal_session_failed>`

Выдается :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>`, если сеанс не запускается.

\ ``message`` может содержать сообщение об ошибке от WebXR или пустую строку, если сообщение отсутствует.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_started:

.. rst-class:: classref-signal

**session_started**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_session_started>`

Выдается :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>`, если сеанс успешно запущен.

На этом этапе можно безопасно выполнить ``get_viewport().use_xr = true``, чтобы указать Godot начать рендеринг на устройстве XR.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_session_supported:

.. rst-class:: classref-signal

**session_supported**\ (\ session_mode\: :ref:`String<class_String>`, supported\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_WebXRInterface_signal_session_supported>`

Создается :ref:`is_session_supported()<class_WebXRInterface_method_is_session_supported>` для указания того, поддерживается ли заданный ``session_mode`` или нет.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_squeeze:

.. rst-class:: classref-signal

**squeeze**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_squeeze>`

Выдается после того, как один из источников ввода завершил свое «основное действие сжатия». 

Используйте :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` и :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>`, чтобы получить больше информации об источнике ввода.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_squeezeend:

.. rst-class:: classref-signal

**squeezeend**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_squeezeend>`

Выдается, когда один из источников ввода завершил свое «основное действие сжатия».

Используйте :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` и :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>`, чтобы получить больше информации об источнике ввода.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_squeezestart:

.. rst-class:: classref-signal

**squeezestart**\ (\ input_source_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_WebXRInterface_signal_squeezestart>`

Выдается, когда один из источников ввода начал свое «основное действие сжатия».

Используйте :ref:`get_input_source_tracker()<class_WebXRInterface_method_get_input_source_tracker>` и :ref:`get_input_source_target_ray_mode()<class_WebXRInterface_method_get_input_source_target_ray_mode>`, чтобы получить больше информации об источнике ввода.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_signal_visibility_state_changed:

.. rst-class:: classref-signal

**visibility_state_changed**\ (\ ) :ref:`🔗<class_WebXRInterface_signal_visibility_state_changed>`

Вызывается при изменении :ref:`visible_state<class_WebXRInterface_property_visible_state>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_WebXRInterface_TargetRayMode:

.. rst-class:: classref-enumeration

enum **TargetRayMode**: :ref:`🔗<enum_WebXRInterface_TargetRayMode>`

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_UNKNOWN** = ``0``

Мы не знаем целевой режим луча.

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_GAZE:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_GAZE** = ``1``

Луч цели исходит из глаз наблюдателя и указывает в направлении его взгляда.

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_TRACKED_POINTER:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_TRACKED_POINTER** = ``2``

Направляет луч от портативной указки, скорее всего, сенсорного контроллера виртуальной реальности.

.. _class_WebXRInterface_constant_TARGET_RAY_MODE_SCREEN:

.. rst-class:: classref-enumeration-constant

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **TARGET_RAY_MODE_SCREEN** = ``3``

Направляет луч с сенсорного экрана, мыши или другого тактильного устройства ввода.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_WebXRInterface_property_enabled_features:

.. rst-class:: classref-property

:ref:`String<class_String>` **enabled_features** :ref:`🔗<class_WebXRInterface_property_enabled_features>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_enabled_features**\ (\ )

Разделенный запятыми список функций, которые были успешно включены :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` при настройке сеанса WebXR.

Сюда могут входить функции, запрошенные путем установки :ref:`required_features<class_WebXRInterface_property_required_features>` и :ref:`Optional_features<class_WebXRInterface_property_Optional_features>`, и будут доступны только после отправки :ref:`session_started<class_WebXRInterface_signal_session_started>`.

\ **Примечание:** Это может не поддерживаться всеми веб-браузерами, в этом случае это будет пустая строка.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_optional_features:

.. rst-class:: classref-property

:ref:`String<class_String>` **optional_features** :ref:`🔗<class_WebXRInterface_property_optional_features>`

.. rst-class:: classref-property-setget

- |void| **set_optional_features**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_optional_features**\ (\ )

Список дополнительных функций, разделённых запятыми, используемых :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` при настройке сеанса WebXR.

Если браузер или устройство пользователя не поддерживает одну из указанных функций, инициализация будет продолжена, но запрошенная функция будет недоступна.

Это никак не повлияет на интерфейс, если он уже инициализирован.

Список возможных значений см. в документации MDN о `функциях сеанса WebXR <https://developer.mozilla.org/en-US/docs/Web/API/XRSystem/requestSession#session_features>`__.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_reference_space_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **reference_space_type** :ref:`🔗<class_WebXRInterface_property_reference_space_type>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_reference_space_type**\ (\ )

Тип пространства ссылок (из списка запрошенных типов, установленных в свойстве :ref:`asked_reference_space_types<class_WebXRInterface_property_asked_reference_space_types>`), который в конечном итоге использовался :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` при настройке сеанса WebXR. 

Возможные значения берутся из `WebXR's XRReferenceSpaceType <https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType>`__. Если вы хотите использовать определенный тип пространства ссылок, он должен быть указан либо в :ref:`required_features<class_WebXRInterface_property_required_features>`, либо в :ref:`Optional_features<class_WebXRInterface_property_Optional_features>`.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_requested_reference_space_types:

.. rst-class:: classref-property

:ref:`String<class_String>` **requested_reference_space_types** :ref:`🔗<class_WebXRInterface_property_requested_reference_space_types>`

.. rst-class:: classref-property-setget

- |void| **set_requested_reference_space_types**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_requested_reference_space_types**\ (\ )

Список типов ссылочных пространств, разделённых запятыми, используемых методом :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` при настройке сеанса WebXR.

Типы ссылочных пространств запрашиваются по порядку, и будет использоваться первый тип, поддерживаемый устройством или браузером пользователя. Свойство :ref:`reference_space_type<class_WebXRInterface_property_reference_space_type>` содержит выбранный тип ссылочного пространства.

Это не влияет на интерфейс, если он уже инициализирован.

Возможные значения берутся из `WebXR's XRReferenceSpaceType <https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType>`__. Если вы хотите использовать определённый тип ссылочного пространства, он должен быть указан либо в :ref:`required_features<class_WebXRInterface_property_required_features>`, либо в :ref:`optional_features<class_WebXRInterface_property_optional_features>`.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_required_features:

.. rst-class:: classref-property

:ref:`String<class_String>` **required_features** :ref:`🔗<class_WebXRInterface_property_required_features>`

.. rst-class:: classref-property-setget

- |void| **set_required_features**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_required_features**\ (\ )

Разделённый запятыми список обязательных функций, используемых :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` при настройке сеанса WebXR.

Если браузер или устройство пользователя не поддерживает одну из указанных функций, инициализация завершится ошибкой и будет выдан сигнал :ref:`session_failed<class_WebXRInterface_signal_session_failed>`.

Это никак не повлияет на интерфейс, если он уже инициализирован.

Список возможных значений см. в документации MDN о `функциях сеанса WebXR <https://developer.mozilla.org/en-US/docs/Web/API/XRSystem/requestSession#session_features>`__.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_session_mode:

.. rst-class:: classref-property

:ref:`String<class_String>` **session_mode** :ref:`🔗<class_WebXRInterface_property_session_mode>`

.. rst-class:: classref-property-setget

- |void| **set_session_mode**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_session_mode**\ (\ )

Режим сеанса, используемый :ref:`XRInterface.initialize()<class_XRInterface_method_initialize>` при настройке сеанса WebXR.

Это не оказывает никакого влияния на интерфейс, если он уже инициализирован.

Возможные значения берутся из `WebXR's XRSessionMode <https://developer.mozilla.org/en-US/docs/Web/API/XRSessionMode>`__, включая: ``"immersive-vr"``, ``"immersive-ar"`` и ``"inline"``.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_property_visibility_state:

.. rst-class:: classref-property

:ref:`String<class_String>` **visibility_state** :ref:`🔗<class_WebXRInterface_property_visibility_state>`

.. rst-class:: classref-property-setget

- :ref:`String<class_String>` **get_visibility_state**\ (\ )

Указывает, видны ли пользователю изображения сеанса WebXR.

Возможные значения берутся из `WebXR XRVisibilityState <https://developer.mozilla.org/en-US/docs/Web/API/XRVisibilityState>`__, включая ``"hidden"``, ``"visible"`` и ``"visible-blurred"``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_WebXRInterface_method_get_available_display_refresh_rates:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_available_display_refresh_rates**\ (\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_available_display_refresh_rates>`

Возвращает частоту обновления дисплея, поддерживаемую текущим HMD. Возвращается только в том случае, если эта функция поддерживается веб-браузером и после инициализации интерфейса.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_get_display_refresh_rate:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_display_refresh_rate**\ (\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_display_refresh_rate>`

Возвращает частоту обновления дисплея для текущего HMD. Поддерживается не всеми HMD и браузерами. Может не сообщать точное значение до использования :ref:`set_display_refresh_rate()<class_WebXRInterface_method_set_display_refresh_rate>`.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_get_input_source_target_ray_mode:

.. rst-class:: classref-method

:ref:`TargetRayMode<enum_WebXRInterface_TargetRayMode>` **get_input_source_target_ray_mode**\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_input_source_target_ray_mode>`

Возвращает режим целевого луча для заданного ``input_source_id``.

Это может помочь интерпретировать ввод, поступающий из этого источника ввода. Для получения дополнительной информации см. `XRInputSource.targetRayMode <https://developer.mozilla.org/en-US/docs/Web/API/XRInputSource/targetRayMode>`__.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_get_input_source_tracker:

.. rst-class:: classref-method

:ref:`XRControllerTracker<class_XRControllerTracker>` **get_input_source_tracker**\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebXRInterface_method_get_input_source_tracker>`

Получает :ref:`XRControllerTracker<class_XRControllerTracker>` для заданного ``input_source_id``.

В контексте WebXR источником ввода может быть усовершенствованный контроллер VR, такой как контроллеры Oculus Touch или Index, или даже нажатие на экран, произнесенная голосовая команда или нажатие кнопки на самом устройстве. При использовании нетрадиционного источника ввода интерпретируйте положение и ориентацию :ref:`XRPositionalTracker<class_XRPositionalTracker>` как луч, указывающий на объект, с которым пользователь хочет взаимодействовать.

Используйте этот метод, чтобы получить информацию об источнике ввода, который вызвал один из этих сигналов:

- :ref:`selectstart<class_WebXRInterface_signal_selectstart>`\ 

- :ref:`select<class_WebXRInterface_signal_select>`\ 

- :ref:`selectend<class_WebXRInterface_signal_selectend>`\ 

- :ref:`squeezestart<class_WebXRInterface_signal_squeezestart>`\ 

- :ref:`squeeze<class_WebXRInterface_signal_squeeze>`\ 

- :ref:`squeezestart<class_WebXRInterface_signal_squeezestart>`

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_is_input_source_active:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_input_source_active**\ (\ input_source_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_WebXRInterface_method_is_input_source_active>`

Возвращает ``true``, если есть активный источник ввода с указанным ``input_source_id``.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_is_session_supported:

.. rst-class:: classref-method

|void| **is_session_supported**\ (\ session_mode\: :ref:`String<class_String>`\ ) :ref:`🔗<class_WebXRInterface_method_is_session_supported>`

Проверяет, поддерживается ли заданный ``session_mode`` браузером пользователя.

Возможные значения берутся из `WebXR's XRSessionMode <https://developer.mozilla.org/en-US/docs/Web/API/XRSessionMode>`__, включая: ``"immersive-vr"``, ``"immersive-ar"`` и ``"inline"``.

Этот метод ничего не возвращает, вместо этого он выдает сигнал :ref:`session_supported<class_WebXRInterface_signal_session_supported>` с результатом.

.. rst-class:: classref-item-separator

----

.. _class_WebXRInterface_method_set_display_refresh_rate:

.. rst-class:: classref-method

|void| **set_display_refresh_rate**\ (\ refresh_rate\: :ref:`float<class_float>`\ ) :ref:`🔗<class_WebXRInterface_method_set_display_refresh_rate>`

Устанавливает частоту обновления дисплея для текущего HMD. Поддерживается не всеми HMD и браузерами. Вступит в силу не сразу, пока не будет выдан :ref:`display_refresh_rate_changed<class_WebXRInterface_signal_display_refresh_rate_changed>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
