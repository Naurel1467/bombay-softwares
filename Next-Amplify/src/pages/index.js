// pages/about.js
export default function About({ formattedDate }) {
  return (
    <>
      <h1>About page</h1>
      <p>It works..!!!</p>
      <Link href={www.linkedin.com/in/raviteja-merugu}>
        <a target="_blank">Linkedin</a>
      </Link>
      <p>
        <a href="/products">View a server-side rendered page.</a>
      </p>
    </>
  );
}

export async function getStaticProps() {
  const lastUpdateDate = new Date(2023, 7, 1); // Set the last update date
  const formattedDate = new Intl.DateTimeFormat("en-US", {
    dateStyle: "long",
    timeStyle: "long",
  }).format(lastUpdateDate);

  return { props: { formattedDate } };
}
