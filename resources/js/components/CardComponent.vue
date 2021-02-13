<template>
    <div class="cm-card" :class="{ 'cm-card--minimized': minimized }">
        <div class="cm-card__upper">
            <h5 class="cm-card__name">Name</h5>
            <div class="cm-card__cost">3</div>
        </div>
        <div
            class="cm-card__img"
            :style="{ 'background-image': 'url(\'/assets/cat_01.jpg\')' }"
        ></div>
        <div class="cm-card__type">Type</div>
        <div class="cm-card__text">
            Lorem ipsum dolor, sit amet consectetur adipisicing elit. Ut sequi
            tempore itaque veniam.
        </div>
        <div class="cm-card__score">30</div>
    </div>
</template>

<script>
export default {
    props: {
        minimized: {
            type: Boolean,
            required: false,
            default: false
        }
    }
};
</script>
