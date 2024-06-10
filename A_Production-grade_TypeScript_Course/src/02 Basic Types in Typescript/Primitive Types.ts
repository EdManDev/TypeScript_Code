// primitive types
type primitive = number | string | boolean | symbol | undefined | null;

// Litteral Type
type Litterals = 30 | "Hi" | true | 1000n;;

const ten: 10 = 10; //✅
// const twenty: 100 = 20; //❌

// type six = 6 + 6; //❌
const six: 6 = 6; //✅

type TraficLight = "red" | "yellow" | "green";

// data structures
type DataStructure = 
  | { key1: boolean; key2: number } // object
  | {[key: string]: number } // records
  | [boolean, number, string] // tuples
  | [boolean, number] // arrays
  | number[]; // arrays

