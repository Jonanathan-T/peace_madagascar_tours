// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Circuit {
  final int id;
  final String intitule;
  final String description;
  final int days;
  final int night;
  final int person;
  final List<Etape> etapes;
  final List<String> inclus;
  final List<String> nonInclus;

  Circuit({
    required this.id,
    required this.intitule,
    required this.description,
    required this.days,
    required this.night,
    required this.person,
    required this.etapes,
    required this.inclus,
    required this.nonInclus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': intitule,
      'description': description,
      'days': days,
      'night': night,
      'person': person,
      'etapes': etapes.map((x) => x.toMap()).toList(),
      'inclus': inclus,
      'nonInclus': nonInclus,
    };
  }

  factory Circuit.fromMap(Map<String, dynamic> map) {
    return Circuit(
      id: map['id'] as int,
      intitule: map['title'] as String,
      description: map['description'] as String,
      days: map['days'] as int,
      night: map['night'] as int,
      person: map['person'] as int,
      etapes: List<Etape>.from(
        (map['etapes'] as List<int>).map<Etape>(
          (x) => Etape.fromMap(x as Map<String, dynamic>),
        ),
      ),
      inclus: List<String>.from((map['inclus'] as List<String>)),
      nonInclus: List<String>.from((map['nonInclus'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory Circuit.fromJson(String source) => Circuit.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Etape {
  final int id;
  final String title;
  final String description;
  final List<String> destination;

  Etape({
    required this.id,
    required this.title,
    required this.description,
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'destination': destination,
    };
  }

  factory Etape.fromMap(Map<String, dynamic> map) {
    return Etape(
      id: map['id'] as int,
      title: map['title'] as String,
      description: map['description'] as String,
      destination: List<String>.from((map['destination'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory Etape.fromJson(String source) => Etape.fromMap(json.decode(source) as Map<String, dynamic>);
}

Map<String, Circuit> circuits = {
  'eastern_holidays': Circuit(
    id: 2,
    intitule: 'Vacances de l\'Est',
    description: 'Description',
    days: 7,
    night: 6,
    person: 2,
    etapes: <Etape>[
      Etape(
        id: 1,
        title: "J1",
        description:
            "Arrivée à l'aéroport d'Ivato Antananarivo. Après le passage en douane et le retrait des bagages, accueil chaleureux par notre Agent et nos Hôtesses avec des bouquets de fleurs du pays. Transfert à la Villa Amy tout près de l'aéroport. Un cocktail de bienvenue vous y attend. Nuit et petit déjeuner.",
        destination: [
          "Pays de Residance",
          "ANTANANARIVO",
        ],
      ),
      Etape(
        id: 2,
        title: "J2",
        description:
            "Petit déjeuner complet à la Villa Amy, puis une petite visite de la ville d’Antananarivo et ensuite continuation vers Andasibe, le point de chute idéal pour une visite de la forêt tropicale toute proche où vous trouverez de nombreuses orchidées, des papillons rares et de nombreuses espèces de lémuriens. Halte pour des prises de photos de paysages durant le parcours. Déjeuner libre. Visite du parc privé de Vakona vers l’après-midi à l’arrivée à Andasibe, là où il y a diverses espèces de faunes et de flores. Nuit et petit déjeuner dans un Lodge dans la forêt.",
        destination: [
          "ANTANANARIVO",
          "ANDASIBE",
        ],
      ),
      Etape(
        id: 3,
        title: "J3",
        description:
            "Tôt le matin après le petit déjeuner, visite de la réserve pour observer l’Indri Indri et écouter ses cris stridents avant de faire une promenade dans la forêt. Étant une région de forêts denses et humides de Madagascar, elle présente une végétation luxuriante : fougères arborescentes, lichens, orchidées, épiphytes, plantes médicinales, lianes sacrées...et une faune diversifiée : des espèces de lémuriens nocturnes, une multitude d’espèces d’oiseaux, de caméléons, de grenouilles, de reptiles et d’insectes… Déjeuner libre. Après la visite, continuation vers Toamasina. Visite de village Betsimisaraka et prise de photos de paysages pendant le parcours. À l’arrivée à Tamatave, transfert en bateau vers Ambodisaina, là où le Lodge se situe entre la mer et le Canal des Pangalanes. Nuit et petit déjeuner. Dîner libre",
        destination: [
          "ANDASIBE",
          "TAMATAVE",
          "AMBODISAINA PANGALANES",
        ],
      ),
      Etape(
        id: 4,
        title: "J4 - J5 - J6",
        description:
            "Le jour 4, balade en pirogue traditionnelle sur les Pangalanes (comprise). Le jour 5, visite du Village de pêcheurs TAPAKALA en rencontrant les villageois. Journée libre pour le jour 6. Possibilité de faire une excursion via mer ou via le Canal des Pangalanes. Nuits et petits déjeuners dans le Lodge pendant les séjours. Déjeuners et dîners libres.",
        destination: ["VILLAGE AMBODISAINA"],
      ),
      Etape(
        id: 5,
        title: "J7",
        description:
            "Transfert en bateau jusqu'à Tamatave pour prendre le bus pour retour sur Antananarivo (compris). Déjeuner et dîner libres. La nuitée sur Antananarivo n'est pas comprise dans le tarif.",
        destination: [
          "VILLAGE AMBODISAINA",
          "TAMATAVE",
          "ANTANANARIVO",
          "Pays de Residance",
        ],
      ),
    ],
    inclus: [
      'Hébergement en chambre et petit déjeuner',
      'Tous les transferts',
      'Excursion en pirogue sur le Canal des Pangalanes',
      'Visite du village de pêcheurs',
      'Les entrées et frais de guidage dans les parcs à visiter',
      'Un véhicule 4x4 avec carburant et chauffeur',
      'Un guide local dans les parcs',
    ],
    nonInclus: [
      'Tous les dîners et les déjeuners',
      'Vol interne',
      'Vols externes',
      'Un guide pendant les séjours',
      'Besoins personnels',
      'Boissons et pourboires',
      'Toutes les prestations non mentionnées dans le programme',
    ],
  ),
  'life_in_the_east': Circuit(
    id: 3,
    intitule: 'La vie de l\'Est',
    description: 'Description',
    days: 7,
    night: 6,
    person: 2,
    etapes: <Etape>[
      Etape(
        id: 1,
        title: "J1",
        description: "Bienvenue et transfert vers la Villa au bord de l'océan. Le restaurant de la Villa propose une excellente cuisine. Nuit et petit-déjeuner inclus à la Villa RAVINALA.",
        destination: [
          "Pays de Residance ou ANTANANARIVO",
          "TAMATAVE",
        ],
      ),
      Etape(
        id: 2,
        title: "J2",
        description:
            "Dans la matinée, découverte de la capitale Betsimisaraka à bord du taxi typique Tuk Tuk, avec une halte au célèbre marché aux épices de Bazar Be. Déjeuner libre. Retour à la Villa après la visite, puis après-midi libre pour profiter de la plage. Nuitée et petit-déjeuner à la Villa Ravinala.",
        destination: ["TAMATAVE"],
      ),
      Etape(
        id: 3,
        title: "J3",
        description:
            "Transfert vers le Parc Ivoloina pour une visite à la découverte des lémuriens, tortues et autres espèces locales. Déjeuner libre. Retour à la Villa Coloniale, perchée sur la petite colline d'Ivoloina. Dîner libre, avec l'option de savourer le dîner spécial de la Villa, réputé pour sa délicieuse cuisine. Nuitée et petit-déjeuner à la Villa Coloniale.",
        destination: [
          "TAMATAVE",
          "IVOLOINA",
        ],
      ),
      Etape(
        id: 4,
        title: "J4",
        description:
            "Balade en pirogue traditionnelle sur le fleuve d'Ivoloina, suivie d'une visite à pied des villages environnants pour rencontrer les habitants. Déjeuner libre, avec l'option de savourer une spécialité locale au bord de la piscine. L'après-midi, exploration de la colline de la Villa à la découverte de plantes rares et d’orchidées. En fin de journée, un apéritif offert permet d’admirer la vue panoramique où le fleuve rencontre la mer. Nuitée et petit-déjeuner à la Villa Coloniale.",
        destination: ["IVOLOINA"],
      ),
      Etape(
        id: 5,
        title: "J5",
        description:
            "Transfert au port fluvial, puis départ en bateau sur le Canal des Pangalanes. Tout au long du trajet, rencontres avec les piroguiers, pêcheurs, taxis-bateaux et radeaux typiques de la région. Arrivée au village de Tapakala, suivie d’un transfert à pied jusqu’au Village Ariane, un charmant village avec des bungalows. Déjeuner spécial Pangalanes offert. L’après-midi est libre pour profiter de la plage. Nuitée et petit-déjeuner au Village Ariane.",
        destination: [
          "IVOLOINA",
          "TAMATAVE",
          "PANGALANES",
        ],
      ),
      Etape(
        id: 6,
        title: "J6",
        description:
            "Visite du village de Tapakala, un authentique village de pêcheurs. Rencontre avec les habitants et découverte de leur mode de vie. Dégustation de plats traditionnels accompagnés du Betsabetsa, un vin doux local à base de canne à sucre. Moments de convivialité avec des danses et animations traditionnelles animées par les enfants du village sur une magnifique plage de sable blanc. Nuitée et petit-déjeuner au Village Ariane.",
        destination: ["PANGALANES"],
      ),
      Etape(
        id: 7,
        title: "J7",
        description: "Transfert en voiture vers l’aéroport pour votre vol à destination de votre Pays de Residence ou d’Antananarivo. Enregistrement des bagages et formalités de départ.",
        destination: ["PANGALANES", "TAMATAVE", "Pays de Residance ou ANTANANARIVO"],
      ),
    ],
    inclus: [
      'Hébergement en chambre et petit déjeuner',
      'Tous les transferts',
      'Excursion en pirogue sur le Canal des Pangalanes',
      'Visite du village de pêcheurs',
      'Les entrées et frais de guidage dans les parcs à visiter',
      'Un véhicule 4x4 avec carburant et chauffeur',
      'Un guide local dans les parcs',
    ],
    nonInclus: [
      'Tous les dîners et les déjeuners',
      'Vol interne',
      'Vols externes',
      'Un guide pendant les séjours',
      'Besoins personnels',
      'Boissons et pourboires',
      'Toutes les prestations non mentionnées dans le programme',
    ],
  ),
};
