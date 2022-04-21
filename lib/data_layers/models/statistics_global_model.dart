import 'statistics_card_json_model.dart';

class StatisticsDataGlobalModel {
  final StatisticsCardConfirmedJsonModel cardConfirmedModel;
  final StatisticsCardRecoveredJsonModel cardRecoveredModel;
  final StatisticsCardDeathJsonModel cardDeathModel;
  final StatisticsCardActiveJsonModel cardActiveModel;

  StatisticsDataGlobalModel({
    required this.cardConfirmedModel,
    required this.cardRecoveredModel,
    required this.cardDeathModel,
    required this.cardActiveModel,
  });

  factory StatisticsDataGlobalModel.fromJson(
      Map<String, dynamic> data, List percentAndIcon) {
    return StatisticsDataGlobalModel(
      cardConfirmedModel: StatisticsCardConfirmedJsonModel.fromJson(data, percentAndIcon),
      cardRecoveredModel: StatisticsCardRecoveredJsonModel.fromJson(data, percentAndIcon),
      cardDeathModel: StatisticsCardDeathJsonModel.fromJson(data, percentAndIcon),
      cardActiveModel: StatisticsCardActiveJsonModel.fromJson(data, percentAndIcon),
    );
  }
}
