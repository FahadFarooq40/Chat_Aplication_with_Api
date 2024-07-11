import 'package:chat_application/Models/models_model.dart';
import 'package:flutter/material.dart';

class ModelsProvider with ChangeNotifier {
  String _currentModel = "";
  List<ModelsModel> _modelsList = [];

  String get currentModel => _currentModel;

  List<ModelsModel> get getModelsList => _modelsList;

  void setModelsList(List<ModelsModel> models) {
    _modelsList = models;
    notifyListeners();
  }

  void changeCurrentModel(String model) {
    _currentModel = model;
    notifyListeners();
  }
}
