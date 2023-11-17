import { describe, test, expect } from "@jest/globals";
import { stringToArray } from "./example";

describe("example", () => {
  test("stringToArray", () => {
    const expected = ["a", "b", "c"];
    const actual = stringToArray("abc");
    expect(actual).toEqual(expected);
  });
});