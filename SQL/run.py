import sqlite3

# Połączenie z bazą danych
conn = sqlite3.connect('baza_danych.db')
c = conn.cursor()

# Wykonanie zapytań z plików .sql
for i in range(1, 11):
    with open(f'query_{i}.sql', 'r') as file:
        query = file.read()
        c.execute(query)
        # Pobranie wyników zapytania
        results = c.fetchall()
        # Wyświetlenie wyników
        print(f"Result of query {i}:")
        for row in results:
            print(row)

# Zamknięcie połączenia z bazą danych
conn.close()
