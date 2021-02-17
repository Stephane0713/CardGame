<template>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <input
                    type="checkbox"
                    class="d-none"
                    id="cat"
                    value="cat"
                    v-model="types"
                    @change="searchCards()"
                />
                <label
                    class="btn"
                    :class="[
                        { 'btn-primary': types.includes('cat') },
                        'btn-disable'
                    ]"
                    for="cat"
                    >Cat</label
                >
                <input
                    type="checkbox"
                    class="d-none"
                    id="dog"
                    value="dog"
                    v-model="types"
                    @change="searchCards()"
                />
                <label
                    class="btn"
                    :class="[
                        { 'btn-primary': types.includes('dog') },
                        'btn-disable'
                    ]"
                    for="dog"
                    >Dog</label
                >
                <input
                    type="text"
                    class="form-control my-3"
                    v-model="search"
                    @keyup="searchCards()"
                />
            </div>

            <div class="col-12 col-md-8 order-md-1">
                <div class="row">
                    <div
                        class="col-12 col-sm-6 col-xl-4 mb-3"
                        :class="{
                            disabled: selectedCards.includes(card)
                        }"
                        v-for="card in cards"
                        :key="card.id"
                        @click="selectCard(card)"
                    >
                        <card-component :card-data="card" />
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4">
                <div class="mb-3">{{ selectedCards.length }} / 10</div>
                <div
                    class="mb-3"
                    v-for="(selectedCard, index) in selectedCards"
                    :key="selectedCard.id"
                    @click="unselectCard(index)"
                >
                    <card-component
                        :cardData="selectedCard"
                        :minimized="true"
                    />
                </div>
                <form :action="action" method="POST" @submit="isReqValid">
                    <input
                        type="hidden"
                        name="_method"
                        value="PUT"
                        v-if="methodIsPut"
                    />
                    <input type="hidden" name="_token" :value="csrf" />

                    <input
                        type="hidden"
                        name="cards[]"
                        :value="selectedCard.id"
                        v-for="selectedCard in selectedCards"
                        :key="selectedCard.id"
                    />

                    <button class="btn btn-primary w-100 mb-3">
                        Enregister
                    </button>
                </form>
            </div>
        </div>
    </div>
</template>

<script>
import CardComponent from "./CardComponent.vue";
export default {
    components: { CardComponent },
    props: {
        methodIsPut: {
            type: Boolean,
            required: false,
            default: false
        },
        action: {
            type: String,
            required: true
        },
        cardsData: {
            type: Array,
            required: false,
            default: () => []
        }
    },
    mounted() {
        this.getCards().then(res => this.setupCards(res));
    },
    data() {
        return {
            csrf: document
                .querySelector('meta[name="csrf-token"]')
                .getAttribute("content"),
            cards: [],
            search: "",
            selectedCards: [],
            types: ["cat", "dog"]
        };
    },
    methods: {
        async getCards() {
            try {
                let res = await axios({
                    url: "/api/cards/get",
                    method: "get",
                    timeout: 8000,
                    headers: {
                        "Content-Type": "application/json"
                    },
                    params: { search: this.search, types: this.types }
                });
                this.cards = res.data;
                return res.data;
            } catch (err) {
                console.error(err);
            }
        },
        setupCards(cards) {
            for (let i = 0; i < cards.length; i++) {
                if (this.cardsData.includes(cards[i].id)) {
                    this.selectedCards.push(cards[i]);
                }
            }
        },
        searchCards() {
            this.getCards();
        },
        selectCard(card) {
            if (
                !this.selectedCards.includes(card) &&
                this.selectedCards.length < 10
            ) {
                this.selectedCards.push(card);
            }
        },
        unselectCard(index) {
            this.selectedCards.splice(index, 1);
        },
        isReqValid(event) {
            if (this.selectedCards.length < 10) {
                event.preventDefault();
            }
        }
    }
};
</script>

<style scoped>
.disabled {
    opacity: 0.3;
}
</style>
