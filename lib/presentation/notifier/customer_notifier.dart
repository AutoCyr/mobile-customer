import 'package:autocyr/domain/models/features/commande.dart';
import 'package:autocyr/domain/models/features/demande.dart';
import 'package:autocyr/domain/models/pieces/detail_piece.dart';
import 'package:autocyr/domain/models/pieces/disponibilities/auto_disponibility.dart';
import 'package:autocyr/domain/models/pieces/disponibilities/category_disponibility.dart';
import 'package:autocyr/domain/models/pieces/disponibilities/motor_disponibility.dart';
import 'package:autocyr/domain/models/pieces/piece_info.dart';
import 'package:autocyr/domain/models/profile/partenaire.dart';
import 'package:autocyr/domain/models/response/failure.dart';
import 'package:autocyr/domain/models/response/meta.dart';
import 'package:autocyr/domain/models/response/success.dart';
import 'package:autocyr/domain/usecases/customer_usecase.dart';
import 'package:autocyr/presentation/notifier/auth_notifier.dart';
import 'package:autocyr/presentation/ui/helpers/snacks.dart';
import 'package:autocyr/presentation/ui/screens/pages/commandes/commandes.dart';
import 'package:autocyr/presentation/ui/screens/pages/requests/requests.dart';
import 'package:flutter/material.dart';

class CustomerNotifier extends ChangeNotifier {

  final CustomerUseCase customerUseCase;
  CustomerNotifier({required this.customerUseCase});

  bool _filling = false;
  bool _loading = false;
  bool _action = false;

  String _errorPieces = "";
  String _errorPiece = "";
  String _errorCommandes = "";
  String _errorRequests = "";
  String _error = "";

  Meta? _pieceMeta;
  Meta? _typePieceMeta;
  Meta? _subcategoryPieceMeta;
  Meta? _partnerPieceMeta;
  Meta? _commandeMeta;
  Meta? _requestMeta;

  PieceInfo? _piece;

  List<DetailPiece> _pieces = [];
  List<DetailPiece> _typePieces = [];
  List<DetailPiece> _subcategoryPieces = [];
  List<DetailPiece> _partnerPieces = [];
  List<Commande> _commandes = [];
  List<Demande> _requests = [];
  List<Partenaire> _partners = [];

  List<int> _autoFilters = [];
  List<int> _motorFilters = [];
  List<int> _categoryFilters = [];

  bool get filling => _filling;
  bool get loading => _loading;
  bool get action => _action;

  String get errorPieces => _errorPieces;
  String get errorPiece => _errorPiece;
  String get errorCommandes => _errorCommandes;
  String get errorRequests => _errorRequests;
  String get error => _error;

  Meta get pieceMeta => _pieceMeta!;
  Meta get typePieceMeta => _typePieceMeta!;
  Meta get subcategoryPieceMeta => _subcategoryPieceMeta!;
  Meta get partnerPieceMeta => _partnerPieceMeta!;
  Meta get commandeMeta => _commandeMeta!;
  Meta get requestMeta => _requestMeta!;

  PieceInfo? get piece => _piece;

  List<DetailPiece> get pieces => _pieces;
  List<DetailPiece> get typePieces => _typePieces;
  List<DetailPiece> get subcategoryPieces => _subcategoryPieces;
  List<DetailPiece> get partnerPieces => _partnerPieces;
  List<Commande> get commandes => _commandes;
  List<Demande> get requests => _requests;
  List<Partenaire> get partners => _partners;

  List<int> get autoFilters => _autoFilters;
  List<int> get motorFilters => _motorFilters;
  List<int> get categoryFilters => _categoryFilters;

  setFilling(bool value) {
    _filling = value;
    notifyListeners();
  }

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  setAction(bool value) {
    _action = value;
    notifyListeners();
  }

  setErrorPieces(String value) {
    _errorPieces = value;
    notifyListeners();
  }

  setErrorPiece(String value) {
    _errorPiece = value;
    notifyListeners();
  }

  setErrorCommandes(String value) {
    _errorCommandes = value;
    notifyListeners();
  }

  setErrorRequests(String value) {
    _errorRequests = value;
    notifyListeners();
  }

  setError(String value) {
    _error = value;
    notifyListeners();
  }

  setPieceMeta(Meta value) {
    _pieceMeta = value;
    notifyListeners();
  }

  setTypePieceMeta(Meta value) {
    _typePieceMeta = value;
    notifyListeners();
  }

  setSubcategoryPieceMeta(Meta value) {
    _subcategoryPieceMeta = value;
    notifyListeners();
  }

  setPartnerPieceMeta(Meta value) {
    _partnerPieceMeta = value;
    notifyListeners();
  }

  setCommandeMeta(Meta value) {
    _commandeMeta = value;
    notifyListeners();
  }

  setRequestMeta(Meta value) {
    _requestMeta = value;
    notifyListeners();
  }

  setPiece(PieceInfo value) {
    _piece = value;
    notifyListeners();
  }

  setPieces(List<DetailPiece> value) {
    _pieces = value;
    notifyListeners();
  }

  setTypePieces(List<DetailPiece> value) {
    _typePieces = value;
    notifyListeners();
  }

  setSubcategoryPieces(List<DetailPiece> value) {
    _subcategoryPieces = value;
    notifyListeners();
  }

  setPartnerPieces(List<DetailPiece> value) {
    _partnerPieces = value;
    notifyListeners();
  }

  setCommandes(List<Commande> value) {
    _commandes = value;
    notifyListeners();
  }

  setRequests(List<Demande> value) {
    _requests = value;
    notifyListeners();
  }

  setPartners(List<Partenaire> value) {
    _partners = value;
    notifyListeners();
  }

  setAutoFilters(List<int> value) {
    _autoFilters = value;
    notifyListeners();
  }

  setMotorFilters(List<int> value) {
    _motorFilters = value;
    notifyListeners();
  }

  setCategoryFilters(List<int> value) {
    _categoryFilters = value;
    notifyListeners();
  }

  Future retrievePieces({required BuildContext context, required Map<String, dynamic> params, required bool more}) async {
    more ? setFilling(true) : setLoading(true);
    setErrorPieces("");

    try {
      var data = await customerUseCase.getPieces(params);

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        // fetch pagination datas
        Meta meta = Meta.fromJson(success.data['meta']);
        if(meta.currentPage >= meta.lastPage){
          more ? setFilling(false) : setLoading(false);
        }

        // add & complete datas
        List<DetailPiece> localPieces = more ? List.from(pieces) : [];
        for(var piece in success.data['data']){
          localPieces.add(DetailPiece.fromJson(piece));
        }

        setPieces(localPieces);
        setPieceMeta(meta);
        more ? setFilling(false) : setLoading(false);
      }else{
        Failure failure = Failure.fromJson(data);

        more ? setFilling(false) : setLoading(false);
        setErrorPieces(failure.message);
      }
    } catch (e) {
      print(e);
      more ? setFilling(false) : setLoading(false);
      setErrorPieces("Une erreur serveur est survenue");
    }
  }

  Future retrieveTypePieces({required BuildContext context, required Map<String, dynamic> params, required bool more}) async {
    more ? setFilling(true) : setLoading(true);
    setErrorPieces("");

    try {
      var data = await customerUseCase.getTypePieces(params);

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        // fetch pagination datas
        Meta meta = Meta.fromJson(success.data['meta']);
        if(meta.currentPage >= meta.lastPage){
          more ? setFilling(false) : setLoading(false);
        }

        // add & complete datas
        List<DetailPiece> localPieces = more ? List.from(typePieces) : [];
        for(var piece in success.data['data']){
          localPieces.add(DetailPiece.fromJson(piece));
        }

        setTypePieces(localPieces);
        setTypePieceMeta(meta);
        more ? setFilling(false) : setLoading(false);
      } else {
        Failure failure = Failure.fromJson(data);

        more ? setFilling(false) : setLoading(false);
        setErrorPieces(failure.message);
      }
    } catch (e) {
      print(e);
      more ? setFilling(false) : setLoading(false);
      setErrorPieces("Une erreur serveur est survenue");
    }
  }

  Future retrieveSubcategoryPieces({required BuildContext context, required Map<String, dynamic> params, required bool more}) async {
    more ? setFilling(true) : setLoading(true);
    setErrorPieces("");

    try {
      var data = await customerUseCase.getSubcategoryPieces(params);

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        // fetch pagination datas
        Meta meta = Meta.fromJson(success.data['meta']);
        if(meta.currentPage >= meta.lastPage){
          more ? setFilling(false) : setLoading(false);
        }

        // add & complete datas
        List<DetailPiece> localPieces = more ? List.from(subcategoryPieces) : [];
        for(var piece in success.data['data']){
          localPieces.add(DetailPiece.fromJson(piece));
        }

        setSubcategoryPieces(localPieces);
        setSubcategoryPieceMeta(meta);
        more ? setFilling(false) : setLoading(false);
      }else{
        Failure failure = Failure.fromJson(data);

        more ? setFilling(false) : setLoading(false);
        setErrorPieces(failure.message);
      }
    } catch (e) {
      print(e);
      more ? setFilling(false) : setLoading(false);
      setErrorPieces("Une erreur serveur est survenue");
    }
  }

  Future getPiece({required String id, required BuildContext context}) async {
    setLoading(true);
    setErrorPiece("");

    try {
      var data = await customerUseCase.getPiece(id);

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        PieceInfo info = PieceInfo.fromJson(success.data);
        setPiece(info);
        setLoading(false);
      }else{
        Failure failure = Failure.fromJson(data);

        setLoading(false);
        setErrorPiece(failure.message);
      }
    } catch (e) {
      print(e);
      setLoading(false);
      setErrorPiece("Une erreur serveur est survenue");
    }
  }

  Future updateAddresses({required Map<String, dynamic> body, required AuthNotifier auth, required BuildContext context}) async {
    setLoading(true);
    try {
      var data = await customerUseCase.updateAdresses(body);

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        if (context.mounted) {
          await auth.getProfile(context: context);
          Snacks.successBar(success.message, context);
          setLoading(false);
          Navigator.pop(context);
        }
      }else{
        Failure failure = Failure.fromJson(data);

        setLoading(false);
        if(context.mounted) {
          Snacks.failureBar(failure.message, context);
        }
      }
    } catch (e) {
      print(e);
      setLoading(false);
      Snacks.failureBar("Une erreur serveur est survenue", context);
    }
  }

  Future createCommande({required Map<String, dynamic> body, required BuildContext context}) async {
    setAction(true);
    try {
      var data = await customerUseCase.createCommande(body);

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        setAction(false);
        if (context.mounted) {
          Snacks.successBar(success.message, context);
          Navigator.push(context, MaterialPageRoute(builder: (context) => const CommandeListScreen()));
        }
      }else{
        Failure failure = Failure.fromJson(data);
        if(context.mounted) {
          Snacks.failureBar(failure.message, context);
        }
        setAction(false);
      }
    } catch (e) {
      setAction(false);
      Snacks.failureBar("Une erreur est survenue", context);
    }
  }

  Future retrieveCommandes({required BuildContext context, required Map<String, dynamic> params, required bool more}) async {
    more ? setFilling(true) : setLoading(true);
    setErrorCommandes("");

    try {
      var data = await customerUseCase.getCommandes(params);

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        // fetch pagination datas
        Meta meta = Meta.fromJson(success.data['meta']);
        if(meta.currentPage >= meta.lastPage){
          more ? setFilling(false) : setLoading(false);
        }

        // add & complete datas
        List<Commande> localCommandes = more ? List.from(commandes) : [];
        for(var commande in success.data['data']){
          localCommandes.add(Commande.fromJson(commande));
        }

        setCommandes(localCommandes);
        setCommandeMeta(meta);
        more ? setFilling(false) : setLoading(false);
      }else{
        Failure failure = Failure.fromJson(data);

        more ? setFilling(false) : setLoading(false);
        setErrorCommandes(failure.message);
      }
    } catch (e) {
      print(e);
      more ? setFilling(false) : setLoading(false);
      setErrorCommandes("Une erreur serveur est survenue");
    }
  }

  Future searchShop({required BuildContext context, required Map<String, dynamic> params}) async {
    setLoading(true);
    setError("");

    try {
      var data = await customerUseCase.searchShop(params);

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        List<Partenaire> partenaires = [];
        for(var partner in success.data) {
          partenaires.add(Partenaire.fromJson(partner));
        }
        setPartners(partenaires);
        setLoading(false);
      }else{
        Failure failure = Failure.fromJson(data);

        setLoading(false);
        setError(failure.message);
      }
    } catch (e) {
      print(e);
      setLoading(false);
      setError("Une erreur serveur est survenue");
    }
  }

  Future retrieveShopPieces({required BuildContext context, required Map<String, dynamic> params, required bool more}) async {
    more ? setFilling(true) : setLoading(true);
    setErrorPieces("");

    try {
      var data = await customerUseCase.getShopPieces(params);

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        // fetch pagination datas
        Meta meta = Meta.fromJson(success.data['meta']);
        if(meta.currentPage >= meta.lastPage){
          more ? setFilling(false) : setLoading(false);
        }

        // add & complete datas
        List<DetailPiece> localPieces = more ? List.from(pieces) : [];
        for(var piece in success.data['data']){
          localPieces.add(DetailPiece.fromJson(piece));
        }

        setPartnerPieces(localPieces);
        setPartnerPieceMeta(meta);
        more ? setFilling(false) : setLoading(false);
      }else{
        Failure failure = Failure.fromJson(data);

        more ? setFilling(false) : setLoading(false);
        setErrorPieces(failure.message);
      }
    } catch (e) {
      print(e);
      more ? setFilling(false) : setLoading(false);
      setErrorPieces("Une erreur serveur est survenue");
    }
  }

  Future createRequest({required Map<String, dynamic> body, required BuildContext context}) async {
    setAction(true);
    try {
      var data = await customerUseCase.createRequest(body);

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        setAction(false);
        if (context.mounted) {
          Snacks.successBar(success.message, context);
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context) => const RequestListScreen()));
        }
      }else{
        Failure failure = Failure.fromJson(data);
        if(context.mounted) {
          Snacks.failureBar(failure.message, context);
        }
        setAction(false);
      }
    } catch (e) {
      setAction(false);
      Snacks.failureBar("Une erreur est survenue", context);
    }
  }

  Future requestResults({required BuildContext context, required Map<String, dynamic> params}) async {
    setLoading(true);
    setError("");

    try {
      var data = await customerUseCase.requestResults(params);

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        List<Partenaire> partenaires = [];
        for(var partner in success.data) {
          partenaires.add(Partenaire.fromJson(partner));
        }
        setPartners(partenaires);
        setLoading(false);
      }else{
        Failure failure = Failure.fromJson(data);

        setLoading(false);
        setError(failure.message);
      }
    } catch (e) {
      print(e);
      setLoading(false);
      setError("Une erreur serveur est survenue");
    }
  }

  Future retrieveRequests({required BuildContext context, required Map<String, dynamic> params, required bool more}) async {
    more ? setFilling(true) : setLoading(true);
    setErrorRequests("");

    try {
      var data = await customerUseCase.getRequests(params);

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        // fetch pagination datas
        Meta meta = Meta.fromJson(success.data['meta']);
        if(meta.currentPage >= meta.lastPage){
          more ? setFilling(false) : setLoading(false);
        }

        // add & complete datas
        List<Demande> localRequests = more ? List.from(requests) : [];
        for(var demande in success.data['data']){
          localRequests.add(Demande.fromJson(demande));
        }

        setRequests(localRequests);
        setRequestMeta(meta);
        more ? setFilling(false) : setLoading(false);
      }else{
        Failure failure = Failure.fromJson(data);

        more ? setFilling(false) : setLoading(false);
        setErrorRequests(failure.message);
      }
    } catch (e) {
      print(e);
      more ? setFilling(false) : setLoading(false);
      setErrorRequests("Une erreur serveur est survenue");
    }
  }

}