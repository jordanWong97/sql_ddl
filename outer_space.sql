CREATE TABLE planets(
    name PRIMARY KEY NOT NULL,
    orbital_period_in_yrs NUMERIC(10,3) NOT NULL,
    star_name TEXT references stars);

CREATE TABLE stars(
    name PRIMARY KEY VARCHAR(20) NOT NULL,
    temprature INT);

CREATE TABLE moons(
    name PRIMARY KEY NOT NULL,
    planet_name TEXT references planets);


INSERT INTO planets(name,
            orbital_period_in_yrs,
            star_name)

VALUES ('Earth',
        1.00,
        'The Sun'),
        ('Mars',
        1.882,
        'The Sun'),
        ('Venus',
        0.62,
        'The Sun'),
        ('Proxima Centauri b',
        .03,
        'Proxima Centauri'),
        ('Gliese 876 b',
        .236,
        'Gliese 876');

INSERT INTO stars(name,
                temperature)

VALUES ('The Sun',
        5800),
        ('Proxima Centauri',
        3042),
        ('Gliese 876',
        3192);

INSERT INTO moons(name,
                planet_name)

VALUES ('The Moon', 'Earth'),
        ('Phobos','Mars')
        ('Deimos','Mars');



-- Planets, Stars, Moons

--planets: id, name, orbital period in yrs
-- starts: id, star temp
-- moons: moons
