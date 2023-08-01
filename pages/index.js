    export default function About({ formattedDate }) {
      return (
        <>
          <h1>About page</h1>
          <p>This is the about page. It was last updated on {formattedDate}.</p>
          <p>
            <a href="/products">View a server-side rendered page.</a>
          </p>
        </>
      );
    }

    export async function getStaticProps() {
      const lastUpdateDate = new Date(2022, 9, 1); // Set the last update date
      const formattedDate = new Intl.DateTimeFormat("en-US", {
        dateStyle: "long",
        timeStyle: "long",
      }).format(lastUpdateDate);

      return { props: { formattedDate } };
    }  
