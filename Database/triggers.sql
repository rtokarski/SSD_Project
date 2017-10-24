DELIMITER $$
CREATE TRIGGER trigger_count_average_pricing
AFTER INSERT ON reviews FOR EACH ROW
BEGIN
	UPDATE grades
    SET average_pricing = 
    (SELECT AVG(pricing) FROM reviews
	WHERE reviews.restaurant_id= NEW.restaurant_id)
    WHERE restaurant_id = NEW.restaurant_id;
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trigger_count_average_quality
AFTER INSERT ON reviews FOR EACH ROW
BEGIN
	UPDATE grades
    SET average_quality = 
    (SELECT AVG(quality) FROM reviews
	WHERE reviews.restaurant_id= NEW.restaurant_id)
    WHERE restaurant_id = NEW.restaurant_id;
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trigger_count_average_speed
AFTER INSERT ON reviews FOR EACH ROW
BEGIN
	UPDATE grades
    SET average_speed = 
    (SELECT AVG(speed) FROM reviews
	WHERE reviews.restaurant_id= NEW.restaurant_id)
    WHERE restaurant_id = NEW.restaurant_id;
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trigger_count_average_presentation
AFTER INSERT ON reviews FOR EACH ROW
BEGIN
	UPDATE grades
    SET average_presentation = 
    (SELECT AVG(presentation) FROM reviews
	WHERE reviews.restaurant_id= NEW.restaurant_id)
    WHERE restaurant_id = NEW.restaurant_id;
END$$
DELIMITER ;