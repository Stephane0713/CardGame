<template>
    <div class="cm-card">
        <div class="cm-card__upper">
            <h5 class="cm-card__name">{{ name }}</h5>
            <div class="cm-card__cost">{{ cost }}</div>
        </div>
        <div
            class="cm-card__img"
            :style="{
                'background-image': 'url(\'/assets/' + image + '.jpg\')'
            }"
        ></div>
        <div class="cm-card__type">{{ type }}</div>
        <div class="cm-card__text">
            {{ description }}
        </div>
        <div class="cm-card__score">{{ score }}</div>
    </div>
</template>

<script>
export default {
    props: {
        cardData: {
            type: Object
        }
    },
    data() {
        return {
            // card-data
            id: null,
            name: "Default",
            cost: 0,
            image: "",
            type: "Default",
            description: "Default",
            score: 0
        };
    },
    mounted() {
        this.id = this.cardData.id;
        this.name = this.cardData.name;
        this.cost = this.cardData.cost;
        this.image = this.cardData.image;
        this.type = this.cardData.type;
        this.description = this.cardData.description;
        this.score = this.cardData.score;
    }
};
</script>
