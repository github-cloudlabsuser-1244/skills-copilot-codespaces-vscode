using System;
using Xunit;

public class ProgramTests
{
    [Fact]
    public void GetNumberOfElements_ValidInput_ReturnsCorrectNumber()
    {
        // Arrange
        var input = new StringReader("5");
        Console.SetIn(input);

        // Act
        int result = Program.GetNumberOfElements();

        // Assert
        Assert.Equal(5, result);
    }

    [Fact]
    public void GetElements_ValidInput_ReturnsCorrectArray()
    {
        // Arrange
        var input = new StringReader("1\n2\n3\n4\n5");
        Console.SetIn(input);
        int numberOfElements = 5;

        // Act
        int[] result = Program.GetElements(numberOfElements);

        // Assert
        Assert.Equal(new int[] { 1, 2, 3, 4, 5 }, result);
    }

    [Fact]
    public void Sum_ValidInput_ReturnsCorrectSum()
    {
        // Arrange
        int[] elements = new int[] { 1, 2, 3, 4, 5 };

        // Act
        int result = Program.Sum(elements);

        // Assert
        Assert.Equal(15, result);
    }
}