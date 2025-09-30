:github_url: hide

.. _class_EditorScenePostImport:

EditorScenePostImport
=====================

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Поштові сцени після імпорту.

.. rst-class:: classref-introduction-group

Опис
--------

Імпортовані сцени можна автоматично змінювати одразу після імпорту, установивши для їхньої властивості **Custom Script** Import у скрипти ``instrument``, який успадковує цей клас. 

Зворотний виклик :ref:`_post_import()<class_EditorScenePostImport_private_method__post_import>` отримує кореневий вузол імпортованої сцени та повертає модифіковану версію сцени: 


.. tabs:: 

 .. code-tab:: gdscript
 
    @tool # Потрібен для роботи в редакторі. 
    extends EditorScenePostImport 

    # Цей зразок змінює всі імена вузлів. 
    # Викликається одразу після імпорту сцени та отримує кореневий вузол. 
    func _post_import(scene): 
        # Змінити всі назви вузлів на "modified_[oldnodename]" 
        iterate (scene) 
        return scene # Не забудьте повернути імпортовану сцену 

    функція ітерації (node): 
        if node != null: 
            node.name = "modified_" + node.name 
            for child is node.get_children(): 
                iterate (child)  

 .. code-tab:: csharp
 
    Using Godot;

    // Цей зразок змінює всі імена вузлів. 
    // Викликається одразу після імпорту сцени та отримує кореневий вузол. 
    [Tool] 
    public partial class NodeRenamer : EditorScenePostImport 
    {
        public override GodotObject _PostImport (Node scene) 
        { 
            // Змінити всі назви вузлів на "modified_[oldnodename]" 
            iterate (scene); 
            return scene; // Не забудьте повернути імпортовану сцену 
        } 

        public void Iterate (Node node) 
        { 
            if (node != null) 
            { 
                node.Name = $"modified_{node.Name}"; 
                foreach (Node child у node.GetChildren()) 
                { 
                    iterate (child); 
                } 
            } 
        } 
    } 



.. rst-class:: classref-introduction-group

Посібники
------------------

- `Імпорт 3D сцени: Конфігурація: Використання сценаріїв імпорту для автоматизації <../tutorials/assets_pipeline/importing_3d_scenes/import_configuration.html#using-import-scripts-for-automation>`__

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Object<class_Object>` | :ref:`_post_import<class_EditorScenePostImport_private_method__post_import>`\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual| |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_source_file<class_EditorScenePostImport_method_get_source_file>`\ (\ ) |const|                                      |
   +-----------------------------+-------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_EditorScenePostImport_private_method__post_import:

.. rst-class:: classref-method

:ref:`Object<class_Object>` **_post_import**\ (\ scene\: :ref:`Node<class_Node>`\ ) |virtual| :ref:`🔗<class_EditorScenePostImport_private_method__post_import>`

Зателефонував після того, як була імпортована сцена. Цей метод повинен повернути модифіковану версію сцени.

.. rst-class:: classref-item-separator

----

.. _class_EditorScenePostImport_method_get_source_file:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_source_file**\ (\ ) |const| :ref:`🔗<class_EditorScenePostImport_method_get_source_file>`

Повертає вихідний шлях файлу, який імпортував (наприклад, ``res://scene.dae``).

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
