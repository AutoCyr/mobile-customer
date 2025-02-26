import 'package:autocyr/domain/models/commons/auto_type.dart';
import 'package:autocyr/domain/models/commons/bike_make.dart';
import 'package:autocyr/domain/models/commons/car_make.dart';
import 'package:autocyr/domain/models/commons/country.dart';
import 'package:autocyr/domain/models/commons/engin_category.dart';
import 'package:autocyr/domain/models/commons/engin_type.dart';
import 'package:autocyr/domain/models/commons/motor_type.dart';
import 'package:autocyr/domain/models/commons/partner_type.dart';
import 'package:autocyr/domain/models/core/article.dart';
import 'package:autocyr/domain/models/core/category.dart';
import 'package:autocyr/domain/models/core/plan.dart';
import 'package:autocyr/domain/models/core/subcategory.dart';
import 'package:autocyr/domain/models/response/failure.dart';
import 'package:autocyr/domain/models/response/success.dart';
import 'package:autocyr/domain/usecases/common_usecase.dart';
import 'package:autocyr/presentation/ui/helpers/snacks.dart';
import 'package:flutter/material.dart';

class CommonNotifier extends ChangeNotifier {

  final CommonUseCase commonUseCase;
  CommonNotifier({required this.commonUseCase});

  bool _filling = false;
  bool _loading = false;
  Country? country;
  List<Country> _countries = [];
  PartnerType? partnerType;
  List<PartnerType> _partnerTypes = [];
  Plan? plan;
  List<Plan> _plans = [];
  BikeMake? bikeMake;
  List<BikeMake> _bikeMakes = [];
  CarMake? carMake;
  List<CarMake> _carMakes = [];
  EnginCategory? enginCategory;
  List<EnginCategory> _enginCategories = [];
  AutoType? autoType;
  List<AutoType> _autoTypes = [];
  EnginType? enginType;
  List<EnginType> _enginTypes = [];
  MotorType? motorType;
  List<MotorType> _motorTypes = [];
  Category? category;
  List<Category> _categories = [];
  Subcategory? subcategory;
  List<Subcategory> _subcategories = [];
  Article? article;
  List<Article> _articles = [];

  bool get filling => _filling;
  bool get loading => _loading;
  Country get getCountry => country!;
  List<Country> get countries => _countries;
  PartnerType get getPartnerType => partnerType!;
  List<PartnerType> get partnerTypes => _partnerTypes;
  Plan? get getPlan => plan;
  List<Plan> get plans => _plans;
  BikeMake? get getBikeMake => bikeMake;
  List<BikeMake> get bikeMakes => _bikeMakes;
  CarMake? get getCarMake => carMake;
  List<CarMake> get carMakes => _carMakes;
  EnginCategory? get getEnginCategory => enginCategory;
  List<EnginCategory> get enginCategories => _enginCategories;
  AutoType? get getAutoType => autoType;
  List<AutoType> get autoTypes => _autoTypes;
  EnginType? get getEnginType => enginType;
  List<EnginType> get enginTypes => _enginTypes;
  MotorType? get getMotorType => motorType;
  List<MotorType> get motorTypes => _motorTypes;
  Category? get getCategory => category;
  List<Category> get categories => _categories;
  Subcategory? get getSubcategory => subcategory;
  List<Subcategory> get subcategories => _subcategories;
  Article? get getArticle => article;
  List<Article> get articles => _articles;

  setFilling(bool value) {
    _filling = value;
    notifyListeners();
  }

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  setCountry(Country value) {
    country = value;
    notifyListeners();
  }

  setCountries(List<Country> value) {
    _countries = value;
    notifyListeners();
  }

  setPartnerType(PartnerType value) {
    partnerType = value;
    notifyListeners();
  }

  setPartnerTypes(List<PartnerType> value) {
    _partnerTypes = value;
    notifyListeners();
  }

  setPlan(Plan value) {
    plan = value;
    notifyListeners();
  }

  setPlans(List<Plan> value) {
    _plans = value;
    notifyListeners();
  }

  setBikeMake(BikeMake value) {
    bikeMake = value;
    notifyListeners();
  }

  setBikeMakes(List<BikeMake> value) {
    _bikeMakes = value;
    notifyListeners();
  }

  setCarMake(CarMake value) {
    carMake = value;
    notifyListeners();
  }

  setCarMakes(List<CarMake> value) {
    _carMakes = value;
    notifyListeners();
  }

  setEnginCategory(EnginCategory value) {
    enginCategory = value;
    notifyListeners();
  }

  setEnginCategories(List<EnginCategory> value) {
    _enginCategories = value;
    notifyListeners();
  }

  setAutoType(AutoType value) {
    autoType = value;
    notifyListeners();
  }

  setAutoTypes(List<AutoType> value) {
    _autoTypes = value;
    notifyListeners();
  }

  setEnginType(EnginType value) {
    enginType = value;
    notifyListeners();
  }

  setEnginTypes(List<EnginType> value) {
    _enginTypes = value;
    notifyListeners();
  }

  setMotorType(MotorType value) {
    motorType = value;
    notifyListeners();
  }

  setMotorTypes(List<MotorType> value) {
    _motorTypes = value;
    notifyListeners();
  }

  setCategory(Category value) {
    category = value;
    notifyListeners();
  }

  setCategories(List<Category> value) {
    _categories = value;
    notifyListeners();
  }

  setSubcategory(Subcategory value) {
    subcategory = value;
    notifyListeners();
  }

  setSubcategories(List<Subcategory> value) {
    _subcategories = value;
    notifyListeners();
  }

  setArticle(Article value) {
    article = value;
    notifyListeners();
  }

  setArticles(List<Article> value) {
    _articles = value;
    notifyListeners();
  }

  Future retrieveAutoMakes({required BuildContext context}) async {
    setFilling(true);
    try {
      var data = await commonUseCase.getAutoMakes();

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        List<CarMake> carMakes = [];
        for(var carMake in success.data) {
          carMakes.add(CarMake.fromJson(carMake));
        }
        setCarMakes(carMakes);
        setFilling(false);
      }else{
        Failure failure = Failure.fromJson(data);
        if(context.mounted) {
          Snacks.failureBar(failure.message, context);
        }
        setFilling(false);
      }
    } catch (e) {
      setFilling(false);
      debugPrint(e.toString());
    }
  }

  Future retrieveBikeMakes({required BuildContext context}) async {
    setFilling(true);
    try {
      var data = await commonUseCase.getBikeMakes();

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        List<BikeMake> bikeMakes = [];
        for(var bikeMake in success.data) {
          bikeMakes.add(BikeMake.fromJson(bikeMake));
        }
        setBikeMakes(bikeMakes);
        setFilling(false);
      }else{
        Failure failure = Failure.fromJson(data);
        if(context.mounted) {
          Snacks.failureBar(failure.message, context);
        }
        setFilling(false);
      }
    } catch (e) {
      setFilling(false);
      debugPrint(e.toString());
    }
  }

  Future retrieveCountries({required BuildContext context}) async {
    setFilling(true);
    try {
      var data = await commonUseCase.getCountries();

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        List<Country> countries = [];
        for(var country in success.data) {
          countries.add(Country.fromJson(country));
        }
        setCountries(countries);
        setFilling(false);
      }else{
        Failure failure = Failure.fromJson(data);
        if(context.mounted) {
          Snacks.failureBar(failure.message, context);
        }
        setFilling(false);
      }
    } catch (e) {
      setFilling(false);
      debugPrint(e.toString());
    }
  }

  Future retrievePartnerTypes({required BuildContext context}) async {
    setFilling(true);
    try {
      var data = await commonUseCase.getPartnerTypes();

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        List<PartnerType> partnerTypes = [];
        for(var partnerType in success.data) {
          partnerTypes.add(PartnerType.fromJson(partnerType));
        }
        setPartnerTypes(partnerTypes);
        setFilling(false);
      }else{
        Failure failure = Failure.fromJson(data);
        if(context.mounted) {
          Snacks.failureBar(failure.message, context);
        }
        setFilling(false);
      }
    } catch (e) {
      setFilling(false);
      debugPrint(e.toString());
    }
  }

  Future retrieveEnginCategories({required BuildContext context}) async {
    setFilling(true);
    try {
      var data = await commonUseCase.getEnginCategories();

      if (data['error'] == false) {
        Success success = Success.fromJson(data);

        List<EnginCategory> enginCategories = [];
        for (var enginCategory in success.data) {
          EnginCategory category = EnginCategory.fromJson(enginCategory);
          enginCategories.add(category);
        }
        setEnginCategories(enginCategories);
        setFilling(false);
      } else {
        Failure failure = Failure.fromJson(data);

        if (context.mounted) {
          Snacks.failureBar(failure.message, context);
        }
        setFilling(false);
      }
    } catch (e) {
      setFilling(false);
      debugPrint(e.toString());
    }
  }

  Future retrieveAutoTypes({required BuildContext context}) async {
    setFilling(true);
    try {
      var data = await commonUseCase.getAutoTypes();

      if (data['error'] == false) {
        Success success = Success.fromJson(data);

        List<AutoType> autoTypes = [];
        for (var autoType in success.data) {
          AutoType type = AutoType.fromJson(autoType);
          autoTypes.add(type);
        }
        setAutoTypes(autoTypes);
        setFilling(false);
      } else {
        Failure failure = Failure.fromJson(data);

        if (context.mounted) {
          Snacks.failureBar(failure.message, context);
        }
        setFilling(false);
      }
    } catch (e) {
      setFilling(false);
      debugPrint(e.toString());
    }
  }

  Future retrieveEnginTypes({required BuildContext context}) async {
    setFilling(true);
    try {
      var data = await commonUseCase.getEnginTypes();

      if (data['error'] == false) {
        Success success = Success.fromJson(data);

        List<EnginType> enginTypes = [];
        for (var enginType in success.data) {
          EnginType type = EnginType.fromJson(enginType);
          enginTypes.add(type);
        }
        setEnginTypes(enginTypes);
        setFilling(false);
      } else {
        Failure failure = Failure.fromJson(data);

        if (context.mounted) {
          Snacks.failureBar(failure.message, context);
        }
        setFilling(false);
      }
    } catch (e) {
      setFilling(false);
      debugPrint(e.toString());
    }
  }

  Future retrieveMotorTypes({required BuildContext context}) async {
    setFilling(true);
    try {
      var data = await commonUseCase.getMoteurTypes();

      if (data['error'] == false) {
        Success success = Success.fromJson(data);

        List<MotorType> motorTypes = [];
        for (var motorType in success.data) {
          MotorType type = MotorType.fromJson(motorType);
          motorTypes.add(type);
        }
        setMotorTypes(motorTypes);
        setFilling(false);
      } else {
        Failure failure = Failure.fromJson(data);

        if (context.mounted) {
          Snacks.failureBar(failure.message, context);
        }
        setFilling(false);
      }
    } catch (e) {
      setFilling(false);
      debugPrint(e.toString());
    }
  }

  Future retrieveCategories({required BuildContext context}) async {
    setFilling(true);

    try {
      var data = await commonUseCase.getCategories();

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        List<Category> categories = [];
        for(var category in success.data){
          categories.add(Category.fromJson(category));
        }
        setCategories(categories);
        setFilling(false);
      } else {
        Failure failure = Failure.fromJson(data);

        if(context.mounted) {
          Snacks.failureBar(failure.message, context);
        }
        setFilling(false);
      }
    } catch (e) {
      setFilling(false);
      debugPrint(e.toString());
    }
  }

  Future retrieveSubcategories({required BuildContext context}) async {
    setFilling(true);

    try {
      var data = await commonUseCase.getSubCategories();

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        List<Subcategory> subcategories = [];
        for(var subcategory in success.data){
          subcategories.add(Subcategory.fromJson(subcategory));
        }
        setSubcategories(subcategories);
        setFilling(false);
      } else {
        Failure failure = Failure.fromJson(data);

        if(context.mounted) {
          Snacks.failureBar(failure.message, context);
        }
        setFilling(false);
      }
    } catch (e) {
      setFilling(false);
      debugPrint(e.toString());
    }
  }

  Future retrieveArticles({required BuildContext context}) async {
    setFilling(true);

    try {
      var data = await commonUseCase.getArticles();

      if(data['error'] == false) {
        Success success = Success.fromJson(data);

        List<Article> articles = [];
        for(var article in success.data){
          articles.add(Article.fromJson(article));
        }
        setArticles(articles);
        setFilling(false);
      } else {
        Failure failure = Failure.fromJson(data);

        if(context.mounted) {
          Snacks.failureBar(failure.message, context);
        }
        setFilling(false);
      }
    } catch (e) {
      setFilling(false);
      debugPrint(e.toString());
    }
  }

}