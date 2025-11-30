; Comments appear as annotations in the outline
(comment) @annotation

; ========== template =========
(template_element
  (start_tag) @name
) @item


; Custom elements/components (PascalCase or hyphenated) - self-closing tags
(element
  (start_tag
    (tag_name) @name

    (attribute
      (attribute_name) @classAttr
      (quoted_attribute_value (attribute_value) @context)
      (#eq? @classAttr "class")
    )?

    (directive_attribute
      (directive_argument) @argAttr
      (quoted_attribute_value (attribute_value) @context)
      (#eq? @argAttr "class")
    )?

    (attribute
      (attribute_name) @classAttr
      (quoted_attribute_value (attribute_value) @context)
      (#eq? @classAttr "class")
    )?
  )
) @item

(element
  (self_closing_tag
    (tag_name) @name
    (attribute
      (attribute_name) @classAttr
      (quoted_attribute_value (attribute_value) @context)
      (#eq? @classAttr "class")
    )?

    (directive_attribute
      (directive_argument) @argAttr
      (quoted_attribute_value (attribute_value) @context)
      (#eq? @argAttr "class")
    )?

    (attribute
      (attribute_name) @classAttr
      (quoted_attribute_value (attribute_value) @context)
      (#eq? @classAttr "class")
    )?
  )
) @item



; ======= script ======

(script_element
    (start_tag) @name
) @item


; ========= style =========
(style_element
    (start_tag) @name
) @item
