CREATE FUNCTION test(@var int)
RETURNS INT

as 
BEGIN
    set @var = @var/5
    return @var
end

SELECT dbo.test(54)