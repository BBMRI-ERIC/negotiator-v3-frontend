<template>
    <div class="container">
        <h2>Request Form</h2>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th v-for="field in form.fields" v-text="field.name"></th>
            </tr>
            </thead>
            <tbody>
              <tr v-for="field in form.fields" :key="field.label">
                  <td>{{ field.name }}</td>
                  <td>{{ field.label }}</td>
                  <td>{{ field.type }}</td>
                  <td>{{ field.required }}</td>
              </tr>
            </tbody>
        </table>
    </div>
</template>

<script>

    export default {
        name: 'Form',
        props: ['form']
     }
</script>