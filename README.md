<div align="center">

<a href="#">
  <img src="levitate.gif" width="300px">
</a>

Spoiler

<style>
details summary {
  display: block;  /* у summary по умолчанию свойство display в значении list-item, потому поддерживается свойство list-style */
  width: 10em;
  width: -webkit-fit-content;
  width: -moz-fit-content;
  width: fit-content;  /* блок раскрывается при щелчке по кнопке, а не по всей строке */
  border-bottom: 1px dotted;  /* подводка точками или тире часто используется для элементов, с которыми пользователю предлагается взаимодействовать, можно заменить на text-decoration */
  outline-style: none;  /* удалить обводку при фокусе */
  cursor: pointer;
}
details summary::-webkit-details-marker {  /* нестандартный псевдоэлемент Google Chrome */
  display: none;
}
</style>

<details>
  <summary>Spoiler</summary>
  test
</details>

</div>
