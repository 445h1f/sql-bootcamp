import names
from random import randint
import pyperclip

allRecords = ''
monthWith30Days = [4, 6, 9, 11]


teacher = True if input('Student of Teacher (s/t): ').lower() == 't' else False
count = int(input('Enter no. of records to generate: '))


for i in range(count):
    firstName = names.get_first_name()
    lastName = names.get_last_name()
    email = f'{firstName}{lastName}@university.edu'.lower()
    if teacher:
        year = randint(1975, 1990)
    else:
        year = randint(1995, 2005)
    month = randint(1, 12)
    day = randint(1, 28 if month == 2 else 30 if month in monthWith30Days else 31)
    dateOfBirth = f'\'{year}-{month}-{day}\'::DATE'
    allRecords += f"\t('{firstName}', '{lastName}', '{email}', {dateOfBirth}),\n"

allRecords = allRecords[:-2] + ';';


pyperclip.copy(allRecords)
print(f'Copied {count} records for {"student" if not teacher else "teacher"} to clipboard.')