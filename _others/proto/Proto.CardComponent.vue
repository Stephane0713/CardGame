<template>
    <div
        class="cm-card card card-body"
        :class="{ disabled: disabled }"
        @click="cardClick"
    >
        <div class="d-flex justify-content-between cm-card__top">
            <h5 class="card-title cm-card__title">{{ data.name }}</h5>
            <p class="cm-card__energie">{{ data.energie }}</p>
        </div>
        <div
            :style="{
                'background-image': 'url(./assets/' + data.picture + '.jpg)'
            }"
            class="cm-card__img"
        ></div>
        <p class="card-text cm-card__type">{{ data.type }}</p>
        <p class="card-text cm-card__description">{{ data.description }}</p>
        <p class="card-text text-right cm-card__damage">{{ data.damage }}</p>
    </div>
</template>

<script>
export default {
    props: {
        data: {
            type: Object,
            required: true
        },
        disabled: {
            type: Boolean,
            required: false
        }
    },
    mounted: function() {
        console.log(this.data);
    },
    data: function() {
        return {
            cardId: this.data.id
        };
    },
    methods: {
        cardClick(event) {
            if (!this.disabled) {
                this.$emit("clicked", this.data);
            }
        }
    }
};
</script>

<style scoped>
.cm-card.disabled {
    filter: grayscale(1);
}

.cm-card {
    color: #fff;
    border: 3px solid;
    border-top-color: #777777;
    border-right-color: #696969;
    border-bottom-color: #4d4d4d;
    border-left-color: #313131;
    margin: auto;
    padding: 0.6rem;
    max-width: 200px;
    background-image: repeating-linear-gradient(
            135deg,
            rgba(0, 0, 0, 0.05),
            rgba(0, 0, 0, 0.08),
            rgba(0, 0, 0, 0.03),
            rgba(0, 0, 0, 0.03),
            rgba(0, 0, 0, 0.08),
            rgba(0, 0, 0, 0.05),
            rgba(0, 0, 0, 0.09),
            rgba(0, 0, 0, 0.1),
            rgba(0, 0, 0, 0.03),
            transparent,
            rgba(0, 0, 0, 0.07),
            rgba(0, 0, 0, 0.03),
            rgba(0, 0, 0, 0.01) 4px
        ),
        linear-gradient(135deg, rgb(239, 145, 97), rgb(153, 53, 18));
}

.cm-card__top {
    margin-bottom: 1rem;
}

.cm-card__title {
    margin: 0;
}

.cm-card__img {
    height: 0;
    padding-bottom: 60%;
    background-size: cover;
    background-position: center;
    border: 3px solid;
    border-bottom-color: #777777;
    border-left-color: #696969;
    border-top-color: #4d4d4d;
    border-right-color: #313131;
}

.cm-card__type {
    text-transform: capitalize;
}

.cm-card__description {
    font-size: 0.6rem;
    min-height: 5rem;
    padding: 0.4rem;
    margin-bottom: 0.4rem;
    background-color: rgba(255, 255, 255, 0.2);
}

.cm-card > * {
    margin: 0;
}
</style>
