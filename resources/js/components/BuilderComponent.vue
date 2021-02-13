<template>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <button class="btn btn-primary">Type</button>
                <button class="btn btn-primary">Type</button>
                <input type="text" class="form-control my-3" />
            </div>

            <div class="col-12 col-md-8 order-md-1">
                <div class="row">
                    <div class="col-12 col-sm-6 col-xl-4 mb-3">
                        <card-component />
                    </div>
                    <div class="col-12 col-sm-6 col-xl-4 mb-3">
                        <card-component />
                    </div>
                    <div class="col-12 col-sm-6 col-xl-4 mb-3">
                        <card-component />
                    </div>
                    <div class="col-12 col-sm-6 col-xl-4 mb-3">
                        <card-component />
                    </div>
                    <div class="col-12 col-sm-6 col-xl-4 mb-3">
                        <card-component />
                    </div>
                    <div class="col-12 col-sm-6 col-xl-4 mb-3">
                        <card-component />
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4">
                <div class="row h-100">
                    <div class="col-12 mb-3">
                        <card-component :minimized="true" />
                    </div>
                    <div class="col-12 mt-auto">
                        <button class="btn btn-primary w-100 mb-3">
                            Enregister
                        </button>
                    </div>
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
