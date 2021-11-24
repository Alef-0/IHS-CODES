#include <stdio.h>

extern void bubble_sort(int* vetor, int tamanho);

int main() {
    int tamanho;
    int vetor[10];

    printf("Tamanho do Vetor: ");
    scanf("%d", &tamanho);
    printf("Digite os valores: \n");
    for(int i = 0; i < tamanho && i < 10; i++) {
        scanf("%d", &vetor[i]);
    }
    bubble_sort(vetor, tamanho);
    printf("Vetor ordenado:\n");
    for(int i = 0; i < tamanho && i < 10; i++) {
        printf("%d ", vetor[i]);
    }
    puts("");
}