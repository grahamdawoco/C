//
// Created by Dudley on 2/27/2018.
//

#ifndef PROJECT02_DOUBLYLINKEDLIST_H
#define PROJECT02_DOUBLYLINKEDLIST_H
#include <stdlib.h>

typedef int ValueType;

struct DoublyLinkedListNode;
/* This is a forward declaration; details of this struct are
 * given in doublylinkedlist.c
 */

struct DoublyLinkedList {
    struct DoublyLinkedListNode *dummy_head_node_ptr;
    size_t size;
};
/* Return the node at the given offset i.
 * Precondition: 0 <= i < size_dll(list_ptr)
 */
struct DoublyLinkedListNode * get_node_at_dll(struct DoublyLinkedList *list_ptr, size_t i);

void init_dll(struct DoublyLinkedList *list_ptr);
/* Initialize a doubly-linked list */

void free_dll(struct DoublyLinkedList *list_ptr);
/* Free all the space used by the given list */

size_t size_dll(struct DoublyLinkedList *list_ptr);
/* Return the number of values in the given list */

void append_dll(struct DoublyLinkedList *list_ptr, ValueType value);
/* Append the given value to the end of the given list */

int contains_dll(struct DoublyLinkedList *list_ptr, ValueType value);
/* Return 1 if the given value is in the given list, 0 otherwise */

void remove_dll(struct DoublyLinkedList *list_ptr, ValueType value);
/* remove_dll the given value from the given list (if it is present) */

ValueType get_at_dll(struct DoublyLinkedList *list_ptr, size_t i);
/* Return the value stored in the given list at the given offset i.
 * Precondition: 0 <= i < size_dll(list_ptr)
 */

void set_at_dll(struct DoublyLinkedList *list_ptr, size_t i, ValueType value);
/* Set the value stored in the given list at the given offset i to value.
 * Precondition: 0 <= i < size_dll(list_ptr)
 */

#endif //PROJECT02_DOUBLYLINKEDLIST_H
