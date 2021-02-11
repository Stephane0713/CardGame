<template>
    <div class="container-fluid mb-3">
        <div class="row">
            <div class="col-12 col-md-6 col-xl-4">
                <div class="card card-body h-100"></div>
            </div>
            <div class="col-12 col-md-6 col-xl-8">
                <button class="btn btn-primary mr-3">Type</button>
                <button class="btn btn-primary mr-3">Type</button>
                <input type="text" class="form-control my-3" />
                <div class="cm-cards">
                    <card-component />
                    <card-component />
                    <card-component />
                    <card-component />
                    <card-component />
                    <card-component />
                    <card-component />
                    <card-component />
                    <card-component />
                    <card-component />
                    <card-component />
                    <card-component />
                    <card-component />
                    <card-component />
                    <card-component />
                    <card-component />
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import CardComponent from "./CardComponent.vue";
export default {
    components: { CardComponent }
};
</script>
