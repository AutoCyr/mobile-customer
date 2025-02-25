import 'package:autocyr/domain/models/pieces/detail_piece.dart';
import 'package:autocyr/domain/models/pieces/piece_info.dart';
import 'package:autocyr/domain/models/response/failure.dart';
import 'package:autocyr/domain/models/response/success.dart';
import 'package:autocyr/domain/usecases/customer_usecase.dart';
import 'package:autocyr/presentation/notifier/auth_notifier.dart';
import 'package:autocyr/presentation/ui/helpers/snacks.dart';
import 'package:flutter/material.dart';

class CustomerNotifier extends ChangeNotifier {

  final CustomerUseCase customerUseCase;
  CustomerNotifier({required this.customerUseCase});

  bool _filling = false;
  bool _loading = false;
  String _errorPieces = "";
  String _errorPiece = "";
  PieceInfo? _piece;
  List<DetailPiece> _pieces = [];

  bool get filling => _filling;
  bool get loading => _loading;
  String get errorPieces => _errorPieces;
  String get errorPiece => _errorPiece;
  PieceInfo? get piece => _piece;
  List<DetailPiece> get pieces => _pieces;

  setFilling(bool value) {
    _filling = value;
    notifyListeners();
  }

  setLoading(bool value) {
    _loading = value;
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

  setPiece(PieceInfo value) {
    _piece = value;
    notifyListeners();
  }

  setPieces(List<DetailPiece> value) {
    _pieces = value;
    notifyListeners();
  }

  Future retrievePieces({required BuildContext context}) async {
    setFilling(true);
    setErrorPieces("");

    try {
      var data = await customerUseCase.getPieces();

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        List<DetailPiece> pieces = [];
        for(var piece in success.data) {
          DetailPiece detailPiece = DetailPiece.fromJson(piece);
          pieces.add(detailPiece);
        }
        setPieces(pieces);
        setFilling(false);
      }else{
        Failure failure = Failure.fromJson(data);
        setFilling(false);
        setErrorPieces(failure.message);
      }
    } catch (e) {
      print(e);
      setFilling(false);
      setErrorPieces("Une erreur serveur est survenue");
    }
  }

  getPiece({required String id, required BuildContext context}) async {
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

  updateAddresses({required Map<String, dynamic> body, required AuthNotifier auth, required BuildContext context}) async {
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

}