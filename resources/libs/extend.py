from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn
from appium.webdriver.common.touch_action import TouchAction

@keyword(name='Drag And Drop')
def grag_drop(element_id, p_origin, p_target):
    appiumLib = BuiltIn().get_library_instance('AppiumLibrary')
    driver = appiumLib._current_application()
    
    ele_origin = driver.find_elements_by_id(element_id)[int(p_origin)]
    ele_target = driver.find_elements_by_id(element_id)[int(p_target)]
    
    actions = TouchAction(driver)
    actions.long_press(ele_origin).move_to(ele_target)
    actions.release()
    actions.perform()