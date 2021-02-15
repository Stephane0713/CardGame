<template>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <button class="btn btn-primary">Type</button>
                <button class="btn btn-primary">Type</button>
                <input
                    type="text"
                    class="form-control my-3"
                    v-model="search"
                    @keyup="searchCards"
                />
            </div>

            <div class="col-12 col-md-8 order-md-1">
                <div class="row">
                    <div
                        class="col-12 col-sm-6 col-xl-4 mb-3"
                        v-for="card in cards"
                        :key="card.id"
                    >
                        <card-component :card-data="card" />
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4">
                <div class="row">
                    <div
                        class="col-12 mb-3"
                        v-for="selectedCard in selectedCards"
                        :key="selectedCard.id"
                    >
                        <card-component
                            :cardData="selectedCard"
                            :minimized="true"
                        />
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 mt-auto">
                        <form :action="action" method="POST">
                            <input
                                type="hidden"
                                name="_method"
                                value="PUT"
                                v-if="methodIsPut"
                            />
                            <input type="hidden" name="_token" :value="csrf" />
                            <input type="hidden" name="cards[]" value="1" />
                            <input type="hidden" name="cards[]" value="2" />
                            <input type="hidden" name="cards[]" value="3" />
                            <input type="hidden" name="cards[]" value="4" />
                            <input type="hidden" name="cards[]" value="5" />
                            <input type="hidden" name="cards[]" value="6" />
                            <input type="hidden" name="cards[]" value="7" />
                            <input type="hidden" name="cards[]" value="8" />
                            <input type="hidden" name="cards[]" value="9" />
                            <input type="hidden" name="cards[]" value="12" />

                            <button class="btn btn-primary w-100 mb-3">
                                Enregister
                            </button>
                        </form>
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
            default: []
        }
    },
    mounted() {
        this.getCards();
        this.selectedCards = this.cardsData;
    },
    data() {
        return {
            csrf: document
                .querySelector('meta[name="csrf-token"]')
                .getAttribute("content"),
            cards: [],
            search: "",
            selectedCards: []
        };
    },
    methods: {
        getCards() {
            axios
                .get("/api/cards/get", { params: { search: this.search } })
                .then(response => (this.cards = response.data));
        },
        searchCards() {
            this.getCards();
        }
    }
};
</script>
