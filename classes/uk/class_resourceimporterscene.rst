:github_url: hide

.. _class_ResourceImporterScene:

ResourceImporterScene
=====================

**Успадковує:** :ref:`ResourceImporter<class_ResourceImporter>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Імпортує 3D-сцену glTF, FBX, COLLADA або Blender.

.. rst-class:: classref-introduction-group

Опис
--------

Дивись також :ref:`ResourceImporterOBJ<class_ResourceImporterOBJ>`, який використовується для моделей OBJ, які можна імпортувати як самостійний :ref:`Mesh<class_Mesh>` або сцена.

Додаткові параметри (наприклад, вилучення окремих сіточок або матеріалів до файлів) доступні в діалоговому вікні **Advanced Import Settings**. Цей діалог можна отримати за допомогою подвійного клацання 3D-сцени в Dock FileSystem або, вибравши 3D-сцену в Dock FileSystem, збиравшись на кнопку Імпорта і виберіть **Advanced**.

\ **Note:** **ResourceImporterScene** *not* використовується для :ref:`PackedScene<class_PackedScene>`, таких як ``.tscn`` і ``.scn`` файли.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Імпортування 3D сцен <../tutorials/assets_pipeline/importing_3d_scenes/index>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

.. table::
   :widths: auto

   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Dictionary<class_Dictionary>` | :ref:`_subresources<class_ResourceImporterScene_property__subresources>`                                         | ``{}``    |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`animation/fps<class_ResourceImporterScene_property_animation/fps>`                                         | ``30``    |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`animation/import<class_ResourceImporterScene_property_animation/import>`                                   | ``true``  |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`animation/import_rest_as_RESET<class_ResourceImporterScene_property_animation/import_rest_as_RESET>`       | ``false`` |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`animation/remove_immutable_tracks<class_ResourceImporterScene_property_animation/remove_immutable_tracks>` | ``true``  |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`animation/trimming<class_ResourceImporterScene_property_animation/trimming>`                               | ``false`` |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`         | :ref:`import_script/path<class_ResourceImporterScene_property_import_script/path>`                               | ``""``    |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`materials/extract<class_ResourceImporterScene_property_materials/extract>`                                 | ``0``     |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`materials/extract_format<class_ResourceImporterScene_property_materials/extract_format>`                   | ``0``     |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`         | :ref:`materials/extract_path<class_ResourceImporterScene_property_materials/extract_path>`                       | ``""``    |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`meshes/create_shadow_meshes<class_ResourceImporterScene_property_meshes/create_shadow_meshes>`             | ``true``  |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`meshes/ensure_tangents<class_ResourceImporterScene_property_meshes/ensure_tangents>`                       | ``true``  |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`meshes/force_disable_compression<class_ResourceImporterScene_property_meshes/force_disable_compression>`   | ``false`` |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`meshes/generate_lods<class_ResourceImporterScene_property_meshes/generate_lods>`                           | ``true``  |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`meshes/light_baking<class_ResourceImporterScene_property_meshes/light_baking>`                             | ``1``     |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`meshes/lightmap_texel_size<class_ResourceImporterScene_property_meshes/lightmap_texel_size>`               | ``0.2``   |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`nodes/apply_root_scale<class_ResourceImporterScene_property_nodes/apply_root_scale>`                       | ``true``  |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`nodes/import_as_skeleton_bones<class_ResourceImporterScene_property_nodes/import_as_skeleton_bones>`       | ``false`` |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`         | :ref:`nodes/root_name<class_ResourceImporterScene_property_nodes/root_name>`                                     | ``""``    |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`nodes/root_scale<class_ResourceImporterScene_property_nodes/root_scale>`                                   | ``1.0``   |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Script<class_Script>`         | :ref:`nodes/root_script<class_ResourceImporterScene_property_nodes/root_script>`                                 | ``null``  |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`         | :ref:`nodes/root_type<class_ResourceImporterScene_property_nodes/root_type>`                                     | ``""``    |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`nodes/use_name_suffixes<class_ResourceImporterScene_property_nodes/use_name_suffixes>`                     | ``true``  |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`nodes/use_node_type_suffixes<class_ResourceImporterScene_property_nodes/use_node_type_suffixes>`           | ``true``  |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`skins/use_named_skins<class_ResourceImporterScene_property_skins/use_named_skins>`                         | ``true``  |
   +-------------------------------------+------------------------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_ResourceImporterScene_property__subresources:

.. rst-class:: classref-property

:ref:`Dictionary<class_Dictionary>` **_subresources** = ``{}`` :ref:`🔗<class_ResourceImporterScene_property__subresources>`

Містить властивості для субресурсів сцени. Це внутрішній варіант, який не видно в докці імпорту.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/fps:

.. rst-class:: classref-property

:ref:`float<class_float>` **animation/fps** = ``30`` :ref:`🔗<class_ResourceImporterScene_property_animation/fps>`

Кількість кадрів в секунду для використання для випікання кривих аніматорів до ряду точок з лінійним інтерполяціям. Рекомендовано для налаштування цього значення, щоб відповідати значенням, який ви використовуєте як базовий рядок у вашому програмному забезпеченні 3D. Найвища кількість значень призводить до більш точної анімації з швидкими змінами руху, за вартістю вище розмірів файлів і використання пам'яті. Завдяки інтерполяції, зазвичай не набагато користь при переході над 30 ФПС (як анімація все ще з'явиться гладкою при більш високій рендеринговій рейді).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/import:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/import** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_animation/import>`

Якщо ``true``, імпорт анімації з 3D сцени.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/import_rest_as_RESET:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/import_rest_as_RESET** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_animation/import_rest_as_RESET>`

Якщо ``true``, додайте назву ``RESET``, що містить :ref:`Skeleton3D.get_bone_rest()<class_Skeleton3D_method_get_bone_rest>` з :ref:`Skeleton3D<class_Skeleton3D>`. Це може бути корисним для вилучення анімації в посиланнях поз.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/remove_immutable_tracks:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/remove_immutable_tracks** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_animation/remove_immutable_tracks>`

Якщо ``true``, видаліть анімаційні доріжки, які містять лише значення за замовчуванням. Це може зменшити розмір файлу і використання пам'яті з певними сценами 3D, залежно від вмісту їх анімаційних треків.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_animation/trimming:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **animation/trimming** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_animation/trimming>`

Якщо ``true``, обрізайте початок та кінець анімації, якщо немає змін ключових кадрів. Це може зменшити розмір файлу і використання пам'яті з певними сценами 3D, залежно від вмісту їх анімаційних треків.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_import_script/path:

.. rst-class:: classref-property

:ref:`String<class_String>` **import_script/path** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_import_script/path>`

Патент на імпортний скрипт, який може запустити код після завершення процесу імпорту для індивідуальної обробки. Див. ` Використання сценаріїв імпорту для автоматизації  <../tutorials/assets_pipeline/importing_3d_scenes/import_configuration.html#using-import-script-for-automation>`__ для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_materials/extract:

.. rst-class:: classref-property

:ref:`int<class_int>` **materials/extract** = ``0`` :ref:`🔗<class_ResourceImporterScene_property_materials/extract>`

Режим вилучення матеріалів.

- ``0 (Зберегти внутрішній)``, матеріали не вилучаються.

- ``1 (Вилучити один раз)``, матеріали вилучаються один раз і використовуються повторно під час наступного імпорту.

- ``2 (Вилучити та перезаписати)``, матеріали вилучаються та перезаписуються під час кожного імпорту.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_materials/extract_format:

.. rst-class:: classref-property

:ref:`int<class_int>` **materials/extract_format** = ``0`` :ref:`🔗<class_ResourceImporterScene_property_materials/extract_format>`

Формат файлу витягнутого матеріалу.

- ``0 (Текст)``, формат текстового файлу (``*.tres``).

- ``1 (Двійковий)``, формат двійкового файлу (``*.res``).

- ``2 (Матеріал)``, формат двійкового файлу (``*.material``).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_materials/extract_path:

.. rst-class:: classref-property

:ref:`String<class_String>` **materials/extract_path** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_materials/extract_path>`

Шлях, за яким зберігаються видобуті матеріали. Якщо порожній, використовується вихідний шлях сцени.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/create_shadow_meshes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/create_shadow_meshes** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_meshes/create_shadow_meshes>`

Якщо ``true``, що дозволяє генерувати тіні сітки на імпорті. Ця оптимізує Shadow рендеринг без зменшення якості за допомогою зварювання вершин разом при можливості. Це в свою чергу зменшує пропускну здатність пам'яті, необхідну для надання тіней. В даний час не підтримує використання нижнього рівня деталі, ніж вихідна сітка (але Shadow рендеринг буде використовуватися LODs при необхідності).

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/ensure_tangents:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/ensure_tangents** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_meshes/ensure_tangents>`

Якщо ``true``, генеруйте дубильні речовини за допомогою `Mikktspace <http://www.mikktspace.com/>`__, якщо вхідні сітки не мають дубильних даних. Коли це можливо, рекомендується дозволити 3D моделювання програмного забезпечення генерувати тангенси на експорт замість того, щоб спиратися на цей варіант. Для коректного відображення нормальних і висотних карт, поряд з будь-яким матеріалом / функцією, що вимагають тангенсів.

Якщо вам не потрібно матеріалів, які вимагають тангенсів, видаліть це може зменшити розмір файлу і прискорити імпорт, якщо джерело 3D не містить тангенсів.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/force_disable_compression:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/force_disable_compression** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_meshes/force_disable_compression>`

Якщо ``true``, стиснення сітки не буде використовуватися. З огляду на те, що ви помітили блоковані артефакти у ваших сітчастих нормах або УФ, або якщо у вас є сітки, які більше, ніж кілька тисяч метрів в кожному напрямку.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/generate_lods:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **meshes/generate_lods** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_meshes/generate_lods>`

Якщо ``true``, генерує більш детальні варіанти сітки, яка буде відображатися на відстані для підвищення продуктивності рендерингу. Не всі сітки вигідні від LOD, особливо якщо вони не продаються далеко. Відключення цього може зменшити розмір файлу і прискорити імпорт. Переглянути ` Рівень сітки деталей (LOD) <../tutorials/3d/mesh_lod.html#doc-mesh-lod>`__ для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/light_baking:

.. rst-class:: classref-property

:ref:`int<class_int>` **meshes/light_baking** = ``1`` :ref:`🔗<class_ResourceImporterScene_property_meshes/light_baking>`

Налаштовує сітки :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>` в 3D-сцені. Якщо встановити на **Static Lightmaps**, встановлює режим GI сітківки до Static і генерує УФ2 на імпорт для :ref:`LightmapGI<class_LightmapGI>` випічки.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_meshes/lightmap_texel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **meshes/lightmap_texel_size** = ``0.2`` :ref:`🔗<class_ResourceImporterScene_property_meshes/lightmap_texel_size>`

Контролює розмір кожного текселя на запеченій карті освітлення. Менше значення призводить до точніших карт освітлення, але за рахунок більших розмірів карт освітлення та тривалішого часу запікання.

\ **Примітка:** Діє лише тоді, коли для параметра :ref:`meshes/light_baking<class_ResourceImporterScene_property_meshes/light_baking>` встановлено значення **Статичні карти освітлення**.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/apply_root_scale:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/apply_root_scale** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_nodes/apply_root_scale>`

Якщо ``true``, :ref:`nodes/root_scale<class_ResourceImporterScene_property_nodes/root_scale>` буде застосовано до нащадкових вузлів, сіток, анімації, кісток тощо. Це означає, що якщо ви додасте дочірній вузол пізніше в імпортованій сцені, він не буде масштабований. Якщо ``false``, :ref:`nodes/root_scale<class_ResourceImporterScene_property_nodes/root_scale>` натомість помножить масштаб кореневого вузла.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/import_as_skeleton_bones:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/import_as_skeleton_bones** = ``false`` :ref:`🔗<class_ResourceImporterScene_property_nodes/import_as_skeleton_bones>`

Виконайте всі вузли в імпортній сцені, якщо вони кісточки знаходяться в одному :ref:`Skeleton3D<class_Skeleton3D>`. Може бути використаний для гарантії, що імпортовані анімації цільових скелетних кісток, а не вузлів. Може також використовуватися для позначення кісточки ``"Root"`` в :ref:`BoneMap<class_BoneMap>`. Див. :doc:`Retargeting 3D Skeletons <../tutorials/assets_pipeline/retargeting_3d_skeletons>` для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **nodes/root_name** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_name>`

На відміну від імені кореневого вузла. Якщо порожній, кореневий вузол буде використовувати те, що сцена визначає, або ім'я файлу, якщо сцена не вказує ім'я кореня.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **nodes/root_scale** = ``1.0`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_scale>`

Уніформа для використання для кореня сцени. Значення за замовчуванням ``1.0`` не буде виконувати будь-яке перерахунок. Див. :ref:`nodes/apply_root_scale<class_ResourceImporterScene_property_nodes/apply_root_scale>` для деталей, як застосовується цей масштаб.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_script:

.. rst-class:: classref-property

:ref:`Script<class_Script>` **nodes/root_script** = ``null`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_script>`

Якщо встановлено значення дійсного скрипта, скрипт приєднується до кореневого вузла імпортованої сцени. Якщо тип кореневого вузла несумісний зі скриптом, кореневий вузол буде замінено типом, сумісним зі скриптом. Цей параметр також можна використовувати для інших вузлів сцени, які не є сітчастими, для приєднання до них скриптів.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/root_type:

.. rst-class:: classref-property

:ref:`String<class_String>` **nodes/root_type** = ``""`` :ref:`🔗<class_ResourceImporterScene_property_nodes/root_type>`

На відміну від типу кореневих вузлів. Якщо порожній, кореневий вузол буде використовувати те, що сцена specifies, або :ref:`Node3D<class_Node3D>`, якщо сцена не вказує тип кореня. Використання типу вузла, що спадкоє від :ref:`Node3D<class_Node3D>`. В іншому випадку ви втратите можливість позиціонувати вузол безпосередньо в редакторі 3D.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/use_name_suffixes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/use_name_suffixes** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_nodes/use_name_suffixes>`

Якщо значення ``true``, то в іменах імпортованих об'єктів, таких як вузли та ресурси, будуть використані суфікси для визначення типів та властивостей, наприклад, ``-noimp`` для пропуску імпорту вузла або анімації, ``-alpha`` для ввімкнення альфа-прозорості матеріалу та ``-vcol`` для ввімкнення кольорів вершин матеріалу. Вимкнення цього параметра робить файли, імпортовані редактором, більш схожими на оригінальні файли та більш схожими на файли, імпортовані під час виконання. Див. :doc:`Налаштування типу вузла за допомогою суфіксів імен <../tutorials/assets_pipeline/importing_3d_scenes/node_type_customization>` для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_nodes/use_node_type_suffixes:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **nodes/use_node_type_suffixes** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_nodes/use_node_type_suffixes>`

Якщо значення ``true``, в іменах вузлів будуть використані суфікси для визначення типу вузла, наприклад, ``-col`` для форм зіткнень. Це використовується лише тоді, коли :ref:`nodes/use_name_suffixes<class_ResourceImporterScene_property_nodes/use_name_suffixes>` має значення ``true``. Вимкнення цього значення робить файли, імпортовані редактором, більш схожими на оригінальні файли та більш схожими на файли, імпортовані під час виконання. Див. :doc:`Налаштування типу вузла за допомогою суфіксів імен <../tutorials/assets_pipeline/importing_3d_scenes/node_type_customization>` для отримання додаткової інформації.

.. rst-class:: classref-item-separator

----

.. _class_ResourceImporterScene_property_skins/use_named_skins:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **skins/use_named_skins** = ``true`` :ref:`🔗<class_ResourceImporterScene_property_skins/use_named_skins>`

Якщо перевірили, скористайтеся назвою :ref:`Skin<class_Skin>` для анімації. :ref:`MeshInstance3D<class_MeshInstance3D>` вершина містить 3 властивості актуальності тут: скелет :ref:`NodePath<class_NodePath>`, що вказує на вершину :ref:`Skeleton3D<class_Skeleton3D>` (зазвичай ``. ``), сіточку та шкіру:

- вузол :ref:`Skeleton3D<class_Skeleton3D>` містить список кісток з іменами, їх позою та відпочинком, ім'я та батьківську кістку.

до Сітчаста сітка - це всі дані, необхідні для відображення сітки. З точки зору сітки, він знає, як вершини вагові і використовує деякі внутрішні номери часто імпортуються з 3D моделювання програмного забезпечення.

до Шкіра містить інформацію, необхідну для зв'язування цієї сітки на цей Skeleton3D. Для кожного з внутрішніх ідентифікаторів кістки, обраних програмним забезпеченням 3D, він містить два речі. По-перше, матриця відома як Bind Pose Matrix, Inverse Bind Matrix або IBM для короткого. По-друге, :ref:`Skin<class_Skin>` містить ім'я кожної кістки (якщо ``пам'ятні шкіри / використання_named_skins`` ``true``), або індекс кістки в списку :ref:`Skeleton3D<class_Skeleton3D>` (якщо ``пам'ятні шкіри / використання_named_skins`` ``false``).

Разом ця інформація досить розповісти Godot, як використовувати кісткові пози у вузлах :ref:`Skeleton3D<class_Skeleton3D>`, щоб надати сіточку з кожного :ref:`MeshInstance3D<class_MeshInstance3D>`. Зверніть увагу, що кожен :ref:`MeshInstance3D<class_MeshInstance3D>` може поділитися зв'язками, оскільки поширений в моделях, що експортуються з Blender, або кожен :ref:`MeshInstance3D<class_MeshInstance3D>` може використовувати окремий :ref:`Skin<class_Skin>` об'єкт, як поширений в моделях, що експортуються з інших інструментів, таких як Maya.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
