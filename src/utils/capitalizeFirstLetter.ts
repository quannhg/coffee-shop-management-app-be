export function capitalizeFirstLetter(inputString: string): string {
    if (inputString.length === 0) {
        // Handle empty string case if needed
        return inputString;
    }

    const firstLetter = inputString.charAt(0).toUpperCase();
    const restOfString = inputString.slice(1).toLowerCase();

    return firstLetter + restOfString;
}
