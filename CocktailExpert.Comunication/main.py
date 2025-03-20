import aiohttp
import asyncio

BASE_URL = "http://127.0.0.1:5000/data"


async def get_data():
    async with aiohttp.ClientSession() as session:
        async with session.get(f"{BASE_URL}/get") as response:
            if response.status == 200:
                data = await response.json()
                print("Response:", data)
            else:
                print("Error:", response.status, await response.text())


async def post_data(message):
    payload = {"message": message}
    headers = {"Content-Type": "application/json"}
    async with aiohttp.ClientSession() as session:
        async with session.post(f"{BASE_URL}/post", json=payload, headers=headers) as response:
            if response.status == 201:
                data = await response.json()
                print("Success:", data)
            else:
                print("Error:", response.status, await response.text())


async def main():
    print("Fetching initial data...")
    await get_data()

    new_message = input("Enter a new message: ")
    print("Posting new data...")
    await post_data(new_message)

    print("Fetching updated data...")
    await get_data()


if __name__ == "__main__":
    asyncio.run(main())
