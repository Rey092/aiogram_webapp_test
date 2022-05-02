from aiogram import Bot, Dispatcher, executor, types
from aiogram.types import InlineKeyboardMarkup, InlineKeyboardButton
from aiogram.types.web_app_info import WebAppInfo

API_TOKEN = '5105060457:AAHRF9vo672LmQtoqV1h328_moHJ1qNxevs'

bot = Bot(token=API_TOKEN)
dp = Dispatcher(bot)


@dp.message_handler(commands="start")
async def cmd_start(message: types.Message):
    await message.answer("test2",
                         reply_markup=InlineKeyboardMarkup().add(InlineKeyboardButton(
                             text="test",
                             web_app=WebAppInfo(
                                 url="https://avada-media.com"))))


if __name__ == '__main__':
    executor.start_polling(dp, skip_updates=True)
