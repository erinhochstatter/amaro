<script>
  import gql from "graphql-tag";
  import { query } from "svelte-apollo";

  const GET_RECIPES = gql`
    query {
      recipes {
        id
        title
        description
      }
    }
  `;

  const recipes = query(GET_RECIPES);
  console.log("hello from recipes");
</script>

<div class="recipes">
  {#if $recipes.loading}
    Loading...
  {:else if $recipes.error}
    Error: {$recipes.error.message}
  {:else}
    {#each $recipes.data.recipes as recipe}
      {recipe.title}: {recipe.description}
    {/each}
  {/if}
</div>

<style>
  .recipes {
    height: 24 px;
  }
  div {
    color: purple;
  }
</style>
