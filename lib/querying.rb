def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books
  WHERE books.series_id = (SELECT MIN(id) FROM series)
  ORDER BY books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name,motto FROM characters WHERE LENGTH(motto) = (SELECT MAX(LENGTH(motto)) FROM characters)"
end

def select_value_and_count_of_most_prolific_species
  "SELECT species,COUNT(species) FROM characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors
  LEFT OUTER JOIN series
  ON authors.id = series.author_id
  INNER JOIN subgenres
  ON series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series
  INNER JOIN authors
  ON series.author_id = authors.id
  INNER JOIN characters
  ON authors.id = characters.author_id
  ORDER BY (SELECT COUNT(*) FROM characters WHERE species = 'human') DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(character_books.book_id) AS book_count FROM characters
  INNER JOIN character_books
  ON characters.id = character_books.character_id
  GROUP BY characters.name
  ORDER BY book_count DESC, characters.name"
end
