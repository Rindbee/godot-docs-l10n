:github_url: hide

.. meta::
	:keywords: batch

.. _class_MultiMeshInstance3D:

MultiMeshInstance3D
===================

**Успадковує:** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Вузол, що створює екземпляр :ref:`MultiMesh<class_MultiMesh>`.

.. rst-class:: classref-introduction-group

Опис
--------

**MultiMeshInstance3D** - це спеціалізована вершина екземпляра :ref:`GeometryInstance3D<class_GeometryInstance3D>` на основі ресурсу :ref:`MultiMesh<class_MultiMesh>`.

Це корисно для оптимізації рендерингу великої кількості екземплярів даної сітки (наприклад, дерева в лісових або травних пасмахах).

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання MultiMeshInstance <../tutorials/3d/using_multi_mesh_instance>`

- :doc:`Оптимізація за допомогою MultiMeshes <../tutorials/performance/using_multimesh>`

- :doc:`Анімація тисяч риб з м'яким <../tutorials/performance/vertex_animation/animating_thousands_of_fish>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-----------------------------------+----------------------------------------------------------------+
   | :ref:`MultiMesh<class_MultiMesh>` | :ref:`multimesh<class_MultiMeshInstance3D_property_multimesh>` |
   +-----------------------------------+----------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_MultiMeshInstance3D_property_multimesh:

.. rst-class:: classref-property

:ref:`MultiMesh<class_MultiMesh>` **multimesh** :ref:`🔗<class_MultiMeshInstance3D_property_multimesh>`

.. rst-class:: classref-property-setget

- |void| **set_multimesh**\ (\ value\: :ref:`MultiMesh<class_MultiMesh>`\ )
- :ref:`MultiMesh<class_MultiMesh>` **get_multimesh**\ (\ )

Ресурс :ref:`MultiMesh<class_MultiMesh>`, який буде використовуватися та спільно використовуватися всіма екземплярами **MultiMeshInstance3D**.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
