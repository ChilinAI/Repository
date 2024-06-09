import XCTest

class MyAppUITests: XCTestCase {

    func testExample() throws {
        let app = XCUIApplication()
        app.launch() // Запуск приложения

        let label = app.staticTexts["MyLabel"]
        let button = app.buttons["MyButton"] // Нашли первую кнопку
        let buttonTAP2 = app.buttons["TAP 3"] // Нашли вторую кнопку по тексту

        XCTAssertTrue(label.exists, "Label should exist")
        XCTAssertTrue(button.exists, "Button should exist")
        XCTAssertTrue(buttonTAP2.exists, "Ошибка: Отсутствует кнопка buttonTAP2")

        button.tap() // Нажали на первую кнопку
        XCTAssertEqual(label.label, "Hello, World!", "Label text should be 'Hello, World!' after button tap")
        
        // Нажимаем на вторую кнопку
        buttonTAP2.tap()
        
        // Логируем успех
        let attachment = XCTAttachment(string: "Tap2Button was tapped")
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
