<template>
    <div class="container">
        <div class="row">
            <div class="col-3">
                <div
                    class="card card-body flex-row mb-2"
                    v-for="(card, i) in selectedCards"
                    :key="card.id"
                >
                    <p class="card-text m-0">{{ card.name }}</p>
                    <p
                        class="card-text ml-auto cm-btn"
                        @click="removeFromSelectedCards(i)"
                    >
                        x
                    </p>
                </div>
            </div>
            <div class="col-9">
                <div class="row">
                    <div
                        v-for="card in collection"
                        :key="card.id"
                        class="col-12 col-md-4 col-xl-3 mb-5 cm-btn"
                    >
                        <card-component
                            :data="card"
                            :disabled="isDisabled(card.id)"
                            @clicked="addToSelectedCards"
                        />
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import CardComponent from "./CardComponent.vue";
export default {
    components: { CardComponent },
    data: function() {
        return {
            selectedCards: [],
            collection: [
                {
                    id: 1,
                    name: "Fauve roux",
                    energie: 1,
                    picture: "cat_01",
                    type: "cat",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla id enim dui. Nunc at efficitur.",
                    damage: 10
                },
                {
                    id: 2,
                    name: "Albino, l'enragé",
                    energie: 2,
                    picture: "cat_02",
                    type: "cat",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tincidunt est vitae vulputate tempor. Pellentesque.",
                    damage: 30
                },
                {
                    id: 3,
                    name: "Guerrière chiba",
                    energie: 3,
                    picture: "dog_01",
                    type: "dog",
                    description:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent massa mauris, tristique vitae turpis ac.",
                    damage: 30
                }
            ]
        };
    },
    methods: {
        addToSelectedCards(card) {
            this.selectedCards.push(card);
        },
        removeFromSelectedCards(i) {
            this.selectedCards.splice(i, 1);
        },
        isDisabled(id) {
            let cardsId = [];
            this.selectedCards.forEach(card => {
                cardsId.push(card.id);
            });
            return cardsId.includes(id);
        }
    }
};
</script>

<style scoped>
.cm-btn {
    cursor: pointer;
}
</style>
