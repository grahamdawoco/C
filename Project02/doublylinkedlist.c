//
// Created by Dudley on 2/27/2018.
//

#include "doublylinkedlist.h"

/* Return the node at the given offset i.
 * Precondition: 0 <= i < size_dll(list_ptr)
 */
struct DoublyLinkedListNode {
    struct DoublyLinkedListNode *prev_node_ptr;
    ValueType value;
    struct DoublyLinkedListNode *next_node_ptr;
};

struct DoublyLinkedListNode * get_node_at_dll(struct DoublyLinkedList *list_ptr, size_t i);

/* Initialize a doubly-linked list */
void init_dll(struct DoublyLinkedList *list_ptr) {
    // Allocate and initialize the dummy head node.
    // We don't need to set a value in that node.
    struct DoublyLinkedListNode *new_node_ptr =
            malloc(sizeof(struct DoublyLinkedListNode));
    new_node_ptr->prev_node_ptr = new_node_ptr;
    new_node_ptr->next_node_ptr = new_node_ptr;

    // Set the dummy head node pointer and the size
    list_ptr->dummy_head_node_ptr = new_node_ptr;
    list_ptr->size = 0;
}

struct DoublyLinkedListNode * get_node_at_dll(struct DoublyLinkedList *list_ptr, size_t i) {
    struct DoublyLinkedListNode *curr_node_ptr;
    curr_node_ptr = list_ptr->dummy_head_node_ptr->next_node_ptr;
    for(size_t j = 0; j < i; j++){
        curr_node_ptr = curr_node_ptr->next_node_ptr;
    }
    return NULL;
    //didn't use
}
void free_dll(struct DoublyLinkedList *list_ptr){
    struct DoublyLinkedListNode *curr_node_ptr;
    curr_node_ptr = list_ptr->dummy_head_node_ptr->next_node_ptr;
    int k;
    for(k = 0; curr_node_ptr != list_ptr->dummy_head_node_ptr; k++){
        curr_node_ptr = curr_node_ptr->next_node_ptr;
        free(curr_node_ptr->prev_node_ptr);
        /* the deletion ray looks back */
        if(curr_node_ptr->next_node_ptr == list_ptr->dummy_head_node_ptr){
            free(curr_node_ptr);
            /*delete last node*/
        }
    }
    list_ptr->size = 0;
    /*the list is now empty*/
};
/* Free all the space used by the given list */

size_t size_dll(struct DoublyLinkedList *list_ptr){
    return list_ptr->size;
};
/* Return the number of values in the given list */

void append_dll(struct DoublyLinkedList *list_ptr, ValueType value){
    struct DoublyLinkedListNode *new_node_ptr = malloc(sizeof(struct DoublyLinkedListNode));
    new_node_ptr->value = value;
    new_node_ptr->prev_node_ptr = list_ptr->dummy_head_node_ptr->prev_node_ptr;
    new_node_ptr->next_node_ptr = list_ptr->dummy_head_node_ptr;
    /*set the new node's pointers*/
    new_node_ptr->prev_node_ptr->next_node_ptr = new_node_ptr;
    list_ptr->dummy_head_node_ptr->prev_node_ptr = new_node_ptr;
    //change other pointers to point at it.
    list_ptr->size = list_ptr->size + 1;
    /*there is a new node in the list*/
};
/* Append the given value to the end of the given list */

int contains_dll(struct DoublyLinkedList *list_ptr, ValueType value){
    struct DoublyLinkedListNode *curr_node_ptr;
    curr_node_ptr = list_ptr->dummy_head_node_ptr->next_node_ptr;
    int k;
    for(k = 0; curr_node_ptr != list_ptr->dummy_head_node_ptr; k++){
        if(curr_node_ptr->value == value){
            return 1;
            //if it's in the list, this is where it stops
        }
        curr_node_ptr = curr_node_ptr->next_node_ptr;
    }
    return 0;
};
/* Return 1 if the given value is in the given list, 0 otherwise */

void remove_dll(struct DoublyLinkedList *list_ptr, ValueType value){
    struct DoublyLinkedListNode *curr_node_ptr;
        struct DoublyLinkedListNode *other_node_ptr;
        curr_node_ptr = list_ptr->dummy_head_node_ptr->next_node_ptr;
        int k;
        for(k = 0; curr_node_ptr != list_ptr->dummy_head_node_ptr; k++){
            other_node_ptr = curr_node_ptr->next_node_ptr;
            //preserve pointer for iterative step
            if(curr_node_ptr->value == value){
                /*move pointers pointing at current node*/
                curr_node_ptr->next_node_ptr->prev_node_ptr = curr_node_ptr->prev_node_ptr;
                curr_node_ptr->prev_node_ptr->next_node_ptr = curr_node_ptr->next_node_ptr;
                /*free current node*/
                free(curr_node_ptr);
                list_ptr->size = list_ptr->size - 1;
            }
            curr_node_ptr = other_node_ptr;
            //iterative step
    }

};
/* remove_dll the given value from the given list (if it is present) */

ValueType get_at_dll(struct DoublyLinkedList *list_ptr, size_t i){
    struct DoublyLinkedListNode *curr_node_ptr;
    curr_node_ptr = list_ptr->dummy_head_node_ptr->next_node_ptr;
    for (size_t j = 0; j < i; ++j) {
        curr_node_ptr = curr_node_ptr->next_node_ptr;
    }
    return curr_node_ptr->value;
};
/* Return the value stored in the given list at the given offset i.
 * Precondition: 0 <= i < size_dll(list_ptr)
 */

void set_at_dll(struct DoublyLinkedList *list_ptr, size_t i, ValueType value){
    struct DoublyLinkedListNode *curr_node_ptr;
    curr_node_ptr = list_ptr->dummy_head_node_ptr->next_node_ptr;
    for (size_t j = 0; j < i; ++j) {
        curr_node_ptr = curr_node_ptr->next_node_ptr;
    }
    curr_node_ptr->value = value;
};
/* Set the value stored in the given list at the given offset i to value.
 * Precondition: 0 <= i < size_dll(list_ptr)
 */
