:github_url: hide

.. _class_TextServerDummy:

TextServerDummy
===============

**Наследует:** :ref:`TextServerExtension<class_TextServerExtension>` **<** :ref:`TextServer<class_TextServer>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Фиктивный текстовый сервер, который не может отображать текст или управлять шрифтами.

.. rst-class:: classref-introduction-group

Описание
----------------

Фиктивный интерфейс :ref:`TextServer<class_TextServer>`, который ничего не делает. Полезен для освобождения памяти, когда рендеринг текста не нужен, так как текстовые серверы ресурсоемки. Его также можно использовать для сравнения производительности в сложных графических интерфейсах, чтобы проверить влияние рендеринга текста. 

Фиктивный текстовый сервер всегда доступен в начале проекта. Вот как получить к нему доступ:

::

    var dummy_text_server = TextServerManager.find_interface("Dummy")
    if dummy_text_server != null:
        TextServerManager.set_primary_interface(dummy_text_server)
        # If the other text servers are unneeded, they can be removed:
        for i in TextServerManager.get_interface_count():
            var text_server = TextServerManager.get_interface(i)
            if text_server != dummy_text_server:
                TextServerManager.remove_interface(text_server)

Аргумент командной строки ``--text-driver Dummy`` (с учетом регистра) можно использовать для принудительного использования «Dummy» :ref:`TextServer<class_TextServer>` в любом проекте.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
