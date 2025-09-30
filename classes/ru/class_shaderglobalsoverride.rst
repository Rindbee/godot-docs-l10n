:github_url: hide

.. _class_ShaderGlobalsOverride:

ShaderGlobalsOverride
=====================

**Наследует:** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел, используемый для переопределения значений глобальных параметров шейдера в сцене.

.. rst-class:: classref-introduction-group

Описание
----------------

Подобно тому, как узел :ref:`WorldEnvironment<class_WorldEnvironment>` может использоваться для переопределения среды при загрузке определенной сцены, **ShaderGlobalsOverride** может использоваться для временного переопределения глобальных параметров шейдера. После удаления узла восстанавливаются общепроектные значения глобальных параметров шейдера. Для получения дополнительной информации см. методы :ref:`RenderingServer<class_RenderingServer>` ``global_shader_parameter_*``.

\ **Примечание:** Для каждой сцены можно использовать только один узел **ShaderGlobalsOverride**. Если в дереве сцены есть более одного узла **ShaderGlobalsOverride**, будет учитываться только первый узел (в порядке дерева).

\ **Примечание:** Все узлы **ShaderGlobalsOverride** становятся частью группы ``"shader_overrides_group"`` при добавлении в дерево сцены. Текущий активный узел **ShaderGlobalsOverride** также имеет добавленную к нему группу ``"shader_overrides_group_active"``. Вы можете использовать это, чтобы проверить, какой узел **ShaderGlobalsOverride** в данный момент активен.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Язык шейдера <../tutorials/shaders/shader_reference/shading_language>`

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
