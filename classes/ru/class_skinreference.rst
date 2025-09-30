:github_url: hide

.. _class_SkinReference:

SkinReference
=============

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Объект-держатель с подсчетом ссылок для скелетного RID, используемого в :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Внутренний объект, содержащий сопоставление из :ref:`Skin<class_Skin>`, используемый в контексте конкретного :ref:`MeshInstance3D<class_MeshInstance3D>` для ссылки на :ref:`RID<class_RID>` скелета в RenderingServer.

См. также :ref:`MeshInstance3D.get_skin_reference()<class_MeshInstance3D_method_get_skin_reference>` и :ref:`RenderingServer.instance_attach_skeleton()<class_RenderingServer_method_instance_attach_skeleton>`.

Обратите внимание, что несмотря на схожее наименование, RID скелета, используемый в :ref:`RenderingServer<class_RenderingServer>`, не имеет прямого однозначного соответствия узлу :ref:`Skeleton3D<class_Skeleton3D>`.

В частности, узел :ref:`Skeleton3D<class_Skeleton3D>` без дочерних элементов :ref:`MeshInstance3D<class_MeshInstance3D>` может быть неизвестен :ref:`RenderingServer<class_RenderingServer>`.

С другой стороны, :ref:`Skeleton3D<class_Skeleton3D>` с несколькими узлами :ref:`MeshInstance3D<class_MeshInstance3D>`, каждый из которых имеет различные объекты :ref:`MeshInstance3D.skin<class_MeshInstance3D_property_skin>`, может иметь несколько экземпляров SkinReference (и, следовательно, несколько скелетных :ref:`RID<class_RID>`).

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`   | :ref:`get_skeleton<class_SkinReference_method_get_skeleton>`\ (\ ) |const| |
   +-------------------------+----------------------------------------------------------------------------+
   | :ref:`Skin<class_Skin>` | :ref:`get_skin<class_SkinReference_method_get_skin>`\ (\ ) |const|         |
   +-------------------------+----------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_SkinReference_method_get_skeleton:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_skeleton**\ (\ ) |const| :ref:`🔗<class_SkinReference_method_get_skeleton>`

Возвращает :ref:`RID<class_RID>`, принадлежащий данному SkinReference, возвращаемый :ref:`RenderingServer.skeleton_create()<class_RenderingServer_method_skeleton_create>`.

.. rst-class:: classref-item-separator

----

.. _class_SkinReference_method_get_skin:

.. rst-class:: classref-method

:ref:`Skin<class_Skin>` **get_skin**\ (\ ) |const| :ref:`🔗<class_SkinReference_method_get_skin>`

Возвращает :ref:`Skin<class_Skin>`, подключенный к этой SkinReference. В случае :ref:`MeshInstance3D<class_MeshInstance3D>` без назначенного :ref:`MeshInstance3D.skin<class_MeshInstance3D_property_skin>` это будет ссылаться на внутренний :ref:`Skin<class_Skin>` по умолчанию, принадлежащий этому :ref:`MeshInstance3D<class_MeshInstance3D>`.

Обратите внимание, что один :ref:`Skin<class_Skin>` может иметь более одного **SkinReference** в случае, если он используется сетками в нескольких узлах :ref:`Skeleton3D<class_Skeleton3D>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
