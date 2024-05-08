
#Область ОбработчикиСобытийЭлементовТаблицыФормыТовары 

&НаКлиенте
Процедура ТоварыКоличествоПриИзменении(Элемент)

	вет1 = 1;

	ТекДанные = Элементы.Товары.ТекущиеДанные;
	Если ТекДанные = Неопределено Тогда
		Возврат;
	КонецЕсли;	
	
	ПересчитатьСумму(ТекДанные);
	ПересчитатьСуммуДокумента();
	
КонецПроцедуры

// Товары цена при изменении.
// 
// Параметры:
//  Элемент - ПолеФормы - Элемент
//
&НаКлиенте
Процедура ТоварыЦенаПриИзменении(Элемент)
	
	ТекДанные = Элементы.Товары.ТекущиеДанные;
	Если ТекДанные = Неопределено Тогда
		Возврат;
	КонецЕсли;	
	
	ПересчитатьСумму(ТекДанные);
	ПересчитатьСуммуДокумента();
	
	// тест
	
КонецПроцедуры

&НаКлиенте
Процедура ТоварыСуммаПриИзменении(Элемент)
		
	ТекДанные = Элементы.Товары.ТекущиеДанные;
	Если ТекДанные = Неопределено Тогда
		Возврат;
	КонецЕсли;	
	
	ПересчитатьЦену(ТекДанные);
	ПересчитатьСуммуДокумента();
	
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаКлиенте
Процедура ПересчитатьСумму(ТекДанные)
	
	ТекДанные.Сумма = ТекДанные.Количество * ТекДанные.Цена;

КонецПроцедуры

&НаКлиенте
Процедура ПересчитатьЦену(ТекДанные)
	
	Если ТекДанные.Количество <> 0 Тогда
		ТекДанные.Цена = ТекДанные.Сумма / ТекДанные.Количество;
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура ПересчитатьСуммуДокумента()
	
	Объект.СуммаДокумента = Объект.Товары.Итог("Сумма");
	
КонецПроцедуры


#КонецОбласти

&НаСервере
Процедура ПередЗаписьюНаСервере(Отказ, ТекущийОбъект, ПараметрыЗаписи)


	//24234
	////456456
	//TODO: Вставить содержимое обработчика
КонецПроцедуры

