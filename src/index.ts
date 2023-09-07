import fs from "fs";
import { example } from "./example.js";
import ctsFile from "./example.cjs";

fs.writeFileSync("hello.txt", `${example}, ${ctsFile}`);