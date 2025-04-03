import aiohttp
import asyncio

BASE_URL = "http://127.0.0.1:5000/data"

async def get_data():
    async with aiohttp.ClientSession() as session:
        while True:
            async with session.get(f"{BASE_URL}/get") as response:
                if response.status == 200:
                    data = await response.json()
                    print("Response:", data)
                else:
                    print("Error:", response.status, await response.text())
            await asyncio.sleep(5)  # Adjust the delay as needed

async def main():
    print("Fetching data in a loop...")
    await get_data()

if __name__ == "__main__":
    asyncio.run(main())
