import './location_fact.dart';

/// Represents a tourism location a user can visit.
class Location {
   final int id;
  final String name;
  final String imagePath;
  final List<LocationFact> facts;

   Location({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.facts,
  });

  static List<Location> fetchAll() {
    return [
      Location(
          id: 1,
          name: 'Sixty Dome Mosque',
          imagePath: 'assets/image/Sixty_Dome_Mosque.jpg',
          facts: [
            LocationFact('Summary',
                'The Sixty Dome Mosque is a mosque in Bagerhat, Bangladesh. It is a part of the Mosque City of Bagerhat, a UNESCO World Heritage Site. It is the largest mosque in Bangladesh from the sultanate period (2021–1576). It was built during the Bengal Sultanate by Khan Jahan Ali, the governor of the Sundarbans. It has been described as "one of the most impressive Muslim monuments in the whole of South Asia."'),
            LocationFact('History', 
            'In the middle of the 15th century, a Muslim colony was founded in the mangrove forest of the Sundarbans, near the coast in the Bagerhat District by a saint-General, named Khan Jahan Ali. He preached in an affluent city during the reign of Sultan Nasiruddin Mahmud Shah, then known as '"Khalifatabad"'. Khan Jahan adorned this city with more than a dozen mosques, the ruins of which are focused around the most imposing and largest multi-domed mosques in Bangladesh, known as the Shait-Gumbad Masjid. The construction of the mosque was started in 1442 and it was completed in 1459. The mosque was used for prayers, and also as a madrasha and assembly hall.'),
          ]),
      Location(
          id: 2,
          name: 'Bagha Shahi Mosque',
          imagePath: 'assets/image/Bagha_Shahi_Mosque.jpg',
          facts: [
            LocationFact('Summary',
                'Bagha Mosque situated at Bagha, about 40km southeast of Rajshahi town, survives in a fairly good state of preservation. The mosque was built on the western bank of a fairly large tank within a brick-walled compound, 48.77m square. The mosque compound could be entered by two old arched gateways - one on the north and the main one on the south comprising a simple oblong curved structure with a turret on either side.'),
            LocationFact('History', 
            'The mosque was built in 1523-1524 (930 AH) by Sultan Nusrat Shah, son of Alauddin Shah, the founder of the Husain Shahi dynasty. Later, the mosque was renovated at different times and when the domes of the mosque collapsed, the destroyed mosque was rebuilt in 1897.'),
          ]),
      Location(
          id: 3,
          name: 'Choto Sona Mosque',
          imagePath: 'assets/image/Choto_Sona_Mosque.jpg',
          facts: [
            LocationFact('Summary',
                'Choto Shona Mosque is located in Chapai Nawabganj district of Bangladesh. The mosque is situated about 3 kilometres (1.9 mi) south of the Kotwali Gate and 0.5 kilometres (0.31 mi) to the south-east of the Mughal Tahakhana complex in the Firozpur Quarter.'),
            LocationFact('History',
                'The mosque was built during the reign of the Sultan of Bengal Alauddin Husain Shah, between 1493 and 1519. The fifteen domes of the mosque were once gilded, giving the mosque the name of Choto Shona Masjid (Small Golden Mosque). The mosque is one of the best-preserved sultana monuments under protection by the Department of Archaeology and Museums, Governments of Bangladesh. The gilding that gave the building its name does not exist anymore. The mosque premise, which covers an area of 42 m from east to west by 43.5 m from north to south, was originally surrounded by an outer wall (now restored) with a gateway in the middle of the east side.'),
          ]),
    ];
  }

  static Location? fetchByID(int locationID) {
    // NOTE: this will replaced by a proper API call
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
}