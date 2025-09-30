:github_url: hide

.. _class_ResourceImporterOBJ:

ResourceImporterOBJ
===================

**Успадковує:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Імпортує 3D-модель OBJ як незалежну :ref:`Mesh<class_Mesh>` або сцену.

.. rst-class:: classref-introduction-group

Опис
--------

На відміну від :ref:`ResourceImporterScene<class_ResourceImporterScene>`, **ResourceImporterOBJ** імпортувати єдиний ресурс :ref:`Mesh<class_Mesh>` за замовчуванням замість імпорту :ref:`PackedScene<class_PackedScene>`. Це полегшує використання ресурсу :ref:`Mesh<class_Mesh>` в вузлах, які очікують прямі :ref:`Mesh<class_Mesh>` ресурси, такі як :ref:`GridMap<class_GridMap>`, :ref:`GPUParticles3D<class_GPUParticles3D>` або :ref:`CPUParticles3D<class_CPUParticles3D>`. Зауважте, що це ще можливо, щоб зберегти мережеві ресурси з 3D-панелей за допомогою **Advanced Import Settings** діалогове вікно незалежно від формату джерела.

Дивись також :ref:`ResourceImporterScene<class_ResourceImporterScene>`, який використовується для більш розширених форматів 3D, таких як glTF.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Імпортування 3D сцен <../tutorials/assets_pipeline/importing_3d_scenes/index>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`force_disable_mesh_compression<class_ResourceImporterOBJ_property_force_disable_mesh_compression>`     | ``false``            |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_lightmap_uv2<class_ResourceImporterOBJ_property_generate_lightmap_uv2>`                       | ``false``            |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`generate_lightmap_uv2_texel_size<class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size>` | ``0.2``              |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_lods<class_ResourceImporterOBJ_property_generate_lods>`                                       | ``true``             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_shadow_mesh<class_ResourceImporterOBJ_property_generate_shadow_mesh>`                         | ``true``             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`       | :ref:`generate_tangents<class_ResourceImporterOBJ_property_generate_tangents>`                               | ``true``             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`offset_mesh<class_ResourceImporterOBJ_property_offset_mesh>`                                           | ``Vector3(0, 0, 0)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`scale_mesh<class_ResourceImporterOBJ_property_scale_mesh>`                                             | ``Vector3(1, 1, 1)`` |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------+----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ResourceImporterOBJ_property_force_disable_mesh_compression:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **force_disable_mesh_compression** = ``false`` :ref:`🔗<class_ResourceImporterOBJ_property_force_disable_mesh_compression>`

Якщо ``true``, стиснення сітки не буде використовуватися. З огляду на те, що ви помітили блоковані артефакти у ваших сітчастих нормах або УФ, або якщо у вас є сітки, які більше, ніж кілька тисяч метрів в кожному напрямку.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lightmap_uv2:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_lightmap_uv2** = ``false`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lightmap_uv2>`

Якщо ``true``, генерує UV2 під час імпорту для запікання :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **generate_lightmap_uv2_texel_size** = ``0.2`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lightmap_uv2_texel_size>`

Контролює розмір кожного текселя на запеченій карті освітлення. Менше значення призводить до більш точних карт освітлення за рахунок більших розмірів карт освітлення та довшого часу запікання. 

\ **Примітка:** Ефективно, лише якщо :ref:`generate_lightmap_uv2<class_ResourceImporterOBJ_property_generate_lightmap_uv2>` має значення ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_lods:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_lods** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_lods>`

Якщо ``true``, генерує більш детальні варіанти сітки, яка буде відображатися на відстані для підвищення продуктивності рендерингу. Не всі сітки вигідні від LOD, особливо якщо вони не продаються далеко. Відключення цього може зменшити розмір файлу і прискорити імпорт. Переглянути ` Рівень сітки деталей (LOD) <../tutorials/3d/mesh_lod.html#doc-mesh-lod>`__ для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_shadow_mesh:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_shadow_mesh** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_shadow_mesh>`

Якщо ``true``, що дозволяє генерувати тіні сітки на імпорті. Ця оптимізує Shadow рендеринг без зменшення якості за допомогою зварювання вершин разом при можливості. Це в свою чергу зменшує пропускну здатність пам'яті, необхідну для надання тіней. В даний час не підтримує використання нижнього рівня деталі, ніж вихідна сітка (але Shadow рендеринг буде використовуватися LODs при необхідності).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_generate_tangents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **generate_tangents** = ``true`` :ref:`🔗<class_ResourceImporterOBJ_property_generate_tangents>`

Якщо ``true``, генеруйте дубильні речовини за допомогою `Mikktspace <http://www.mikktspace.com/>`__, якщо вихідна сітка не має дубильних даних. Коли це можливо, рекомендується дозволити 3D моделювання програмного забезпечення генерувати тангенси на експорт замість того, щоб спиратися на цей варіант. Для коректного відображення нормальних і висотних карт, поряд з будь-яким матеріалом / функцією, що вимагають тангенсів.

Якщо вам не потрібно матеріалів, які вимагають тангенсів, видаліть це може зменшити розмір файлу і прискорити імпорт, якщо джерело 3D не містить тангенсів.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_offset_mesh:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **offset_mesh** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_ResourceImporterOBJ_property_offset_mesh>`

Вимкніть дані сітки за вказаною вартістю. Це може бути використана для роботи над вирівняними сітками без необхідності модифікації файлу джерела.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterOBJ_property_scale_mesh:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **scale_mesh** = ``Vector3(1, 1, 1)`` :ref:`🔗<class_ResourceImporterOBJ_property_scale_mesh>`

Ваги даних сітки за вказаною вартістю. Це може використовуватися для роботи навколо пропущених сіточок без необхідності модифікації початкового файлу.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
