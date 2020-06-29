class Burc {
  String _BurcAdi;
  String _BurcTarihi;
  String _BurcDetayi;
  String _BurcKucukResim;
  String _BurcAdiBuyukResim;

  Burc(this._BurcAdi, this._BurcTarihi, this._BurcDetayi, this._BurcKucukResim,
      this._BurcAdiBuyukResim);

  String get BurcAdiBuyukResim => _BurcAdiBuyukResim;

  set BurcAdiBuyukResim(String value) {
    _BurcAdiBuyukResim = value;
  }

  String get BurcKucukResim => _BurcKucukResim;

  set BurcKucukResim(String value) {
    _BurcKucukResim = value;
  }

  String get BurcDetayi => _BurcDetayi;

  set BurcDetayi(String value) {
    _BurcDetayi = value;
  }

  String get BurcTarihi => _BurcTarihi;

  set BurcTarihi(String value) {
    _BurcTarihi = value;
  }

  String get BurcAdi => _BurcAdi;

  set BurcAdi(String value) {
    _BurcAdi = value;
  }
}
