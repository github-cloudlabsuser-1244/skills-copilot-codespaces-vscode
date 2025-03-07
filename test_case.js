const { expect } = require('chai');
const Calculator = require('./test.js');

// filepath: /workspaces/skills-copilot-codespaces-vscode/test.test.js

describe('Calculator - Subtract Method', () => {
    let calculator;

    beforeEach(() => {
        calculator = new Calculator();
    });

    it('should subtract two positive numbers correctly', () => {
        expect(calculator.subtract(10, 4)).to.equal(6);
    });

    it('should subtract a positive and a negative number correctly', () => {
        expect(calculator.subtract(10, -4)).to.equal(14);
    });

    it('should subtract two negative numbers correctly', () => {
        expect(calculator.subtract(-10, -4)).to.equal(-6);
    });

    it('should subtract zero correctly', () => {
        expect(calculator.subtract(10, 0)).to.equal(10);
        expect(calculator.subtract(0, 10)).to.equal(-10);
    });

    it('should handle subtracting the same number resulting in zero', () => {
        expect(calculator.subtract(5, 5)).to.equal(0);
    });

    it('should handle consecutive subtractions correctly', () => {
        calculator.subtract(10, 4);
        expect(calculator.subtract(calculator.getResult(), 2)).to.equal(4);
    });
});