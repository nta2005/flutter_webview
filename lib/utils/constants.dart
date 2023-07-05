const String request = 'https://view.officeapps.live.com/op/embed.aspx?src';

const String path = 'https://github.com/nta2005/sample_file/raw/master/';

class Office {
  final int id;
  final String name;
  final String ext;

  Office({
    required this.id,
    required this.name,
    required this.ext,
  });
}

List<Office> listOffice = [
  Office(id: 0, name: 'Word', ext: 'FileTest.doc'),
  Office(id: 1, name: 'Wordx', ext: 'FileTest.docx'),
  Office(id: 2, name: 'PowerPoint', ext: 'FileTest.ppt'),
  Office(id: 3, name: 'PowerPointx', ext: 'FileTest.pptx'),
  Office(id: 4, name: 'Excel', ext: 'FileTest.xls'),
  Office(id: 5, name: 'Excelx', ext: 'FileTest.xlsx'),
];
