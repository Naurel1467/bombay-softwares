// pages/products.js
export default function Products({ productList }) {
    return (
        <>
            <h1>Our Products</h1>
            <ul>
                {productList.map((product) => (
                    <li key={product.id}>
                        {product.name} - ${product.price}
                    </li>
                ))}
            </ul>
            <p>
                <a href="/">View our home page.</a>
            </p>
        </>
    );
}

export async function getServerSideProps() {
    const productList = [
        { id: 1, name: "Product 1", price: 10 },
        { id: 2, name: "Product 2", price: 20 },
        { id: 3, name: "Product 3", price: 30 },
    ];
    return { props: { productList } };
}