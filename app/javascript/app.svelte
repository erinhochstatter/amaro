<script>
  import { ApolloClient, InMemoryCache } from "@apollo/client/core";
  import { setClient } from "svelte-apollo";
  import Header from "./components/header.svelte";

  const baseUrl = "/graphql";
  const client = new ApolloClient({
    uri: baseUrl,
    cache: new InMemoryCache(),
  });

  setClient(client);

  export let name;
  name = "Michael 💗";
</script>

<Header />
<h1>Hello {name}!</h1>

<style>
  h1 {
    color: palevioletred;
  }
</style>
