
/* INSTRUCTIONS
 
 Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The order of the elements may be changed. Then return the number of elements in nums which are not equal to val.

 Consider the number of elements in nums which are not equal to val be k, to get accepted, you need to do the following things:

 Change the array nums such that the first k elements of nums contain the elements which are not equal to val. The remaining elements of nums are not important as well as the size of nums.
 Return k.
 Custom Judge:

 The judge will test your solution with the following code:

 int[] nums = [...]; // Input array
 int val = ...; // Value to remove
 int[] expectedNums = [...]; // The expected answer with correct length.
                             // It is sorted with no values equaling val.

 int k = removeElement(nums, val); // Calls your implementation

 assert k == expectedNums.length;
 sort(nums, 0, k); // Sort the first k elements of nums
 for (int i = 0; i < actualLength; i++) {
     assert nums[i] == expectedNums[i];
 }
 If all assertions pass, then your solution will be accepted.


 Example 1:

 Input: nums = [3,2,2,3], val = 3
 Output: 2, nums = [2,2,_,_]
 Explanation: Your function should return k = 2, with the first two elements of nums being 2.
 It does not matter what you leave beyond the returned k (hence they are underscores).
 Example 2:

 Input: nums = [0,1,2,2,3,0,4,2], val = 2
 Output: 5, nums = [0,1,4,0,3,_,_,_]
 Explanation: Your function should return k = 5, with the first five elements of nums containing 0, 0, 1, 3, and 4.
 Note that the five elements can be returned in any order.
 It does not matter what you leave beyond the returned k (hence they are underscores).
  

 Constraints:

 0 <= nums.length <= 100
 0 <= nums[i] <= 50
 0 <= val <= 100
 
 */



func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    // Primero descartamos la posibilidad de que el arreglo esté vacío.
    if nums.isEmpty { return 0 }
    var k = 0
    // Para todos los elementos del arreglo nums, si num es distinto a val...
    for num in nums where num != val {
        nums[k] = num // Modificamos el arreglo in place.
        k += 1 // Cambiamos el índice, solo en caso de que hayamos modificado el arreglo.
    }
    return k
}

// Valores para probar la solución
var nums = [1, 5, 9, 1, 13, 15, 1, 8, 7, 7, 11, 41, 1, 24]
var val = 1

removeElement(&nums, val)
print(nums)



/*
 Los valores del arreglo después de k elementos no se van a modificar, pero si se van a haber analizado, de manera que los requisitos del problema se satisfacen de manera correcta.
 
 Mi idea inicial para este ejercicio era la siguiente:
 
 func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
     var k = 0
     for i in 0 ..< nums.count {
         // Si el valor es detectado
         if val == nums[i] {
             // Movemos todo el arreglo restante a la izquierda
             for j in i ..< nums.count - 1 {
                 nums[j] = nums[j+1]
             }
         } else {
             k += 1
         }
     }
     return k
 }
 
 Pero tiene problemas cuando hay números consecutivos a eliminar.
 
 */
