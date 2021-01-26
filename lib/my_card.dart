class MyCard {
  MyCard.blank() {
    this._img = 'img';
    this._name = 'NAME';
    this._occupation = 'OCCUPATION';
    this._email = 'mail@email.com';
    this._instagram = '@Instagram';
    this._linkedin = '@Linkedin';
    this._twitter = '@Twitter';
    this._whatsapp = '@Whatsapp';
    this._reddit = '@Reddit';
  }

  MyCard(
    String img,
    String name,
    String occupation,
    String email,
    String instagram,
    String linkedin,
    String twitter,
    String whatsapp,
    String reddit,
  ) {
    this._img = img ?? 'img';
    this._name = name ?? 'NAME';
    this._occupation = occupation ?? 'OCCUPATION';
    this._email = email ?? 'mail@email.com';
    this._instagram = instagram ?? '@Instagram';
    this._linkedin = linkedin ?? '@Linkedin';
    this._twitter = twitter ?? '@Twitter';
    this._whatsapp = whatsapp ?? '@Whatsapp';
    this._reddit = reddit ?? '@Reddit';
  }

  String _img;
  String _name;
  String _occupation;
  String _email;
  String _instagram;
  String _linkedin;
  String _twitter;
  String _whatsapp;
  String _reddit;

  void setImg(String img) {
    this._img = img;
  }

  void setName(String name) {
    this._name = name;
  }

  void setOccupation(String occupation) {
    this._occupation = occupation;
  }

  void setEmail(String email) {
    this._email = email;
  }

  void setInstagram(String instagram) {
    this._instagram = instagram;
  }

  void setLinkedin(String linkedin) {
    this._linkedin = linkedin;
  }

  void setTwitter(String twitter) {
    this._twitter = twitter;
  }

  void setWhatsapp(String whatsapp) {
    this._whatsapp = whatsapp;
  }

  void setReddit(String reddit) {
    this._reddit = reddit;
  }

  String getImg() {
    return this._img;
  }

  String getName() {
    return this._name;
  }

  String getOccupation() {
    return this._occupation;
  }

  String getEmail() {
    return this._email;
  }

  String getInstagram() {
    return this._instagram;
  }

  String getLinkedin() {
    return this._linkedin;
  }

  String getTwitter() {
    return this._twitter;
  }

  String getWhatsapp() {
    return this._whatsapp;
  }

  String getReddit() {
    return this._reddit;
  }
}
