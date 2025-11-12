import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  // Titres et navigation
  String get appName => _localizedValues[locale.languageCode]!['appName']!;
  String get welcome => _localizedValues[locale.languageCode]!['welcome']!;
  String get irrigationPlan => _localizedValues[locale.languageCode]!['irrigationPlan']!;
  String get weatherDashboard => _localizedValues[locale.languageCode]!['weatherDashboard']!;
  String get farmerDashboard => _localizedValues[locale.languageCode]!['farmerDashboard']!;
  String get enterpriseDashboard => _localizedValues[locale.languageCode]!['enterpriseDashboard']!;

  // Agriculture et cultures
  String get agriculture => _localizedValues[locale.languageCode]!['agriculture']!;
  String get soil => _localizedValues[locale.languageCode]!['soil']!;
  String get crop => _localizedValues[locale.languageCode]!['crop']!;
  String get crops => _localizedValues[locale.languageCode]!['crops']!;
  String get olive => _localizedValues[locale.languageCode]!['olive']!;
  String get wheat => _localizedValues[locale.languageCode]!['wheat']!;
  String get tomato => _localizedValues[locale.languageCode]!['tomato']!;
  String get strawberry => _localizedValues[locale.languageCode]!['strawberry']!;
  String get corn => _localizedValues[locale.languageCode]!['corn']!;

  // Types de sol
  String get sandySoil => _localizedValues[locale.languageCode]!['sandySoil']!;
  String get claySoil => _localizedValues[locale.languageCode]!['claySoil']!;
  String get loamySoil => _localizedValues[locale.languageCode]!['loamySoil']!;

  // Irrigation
  String get irrigation => _localizedValues[locale.languageCode]!['irrigation']!;
  String get watering => _localizedValues[locale.languageCode]!['watering']!;
  String get wateringPlan => _localizedValues[locale.languageCode]!['wateringPlan']!;
  String get wateringCalendar => _localizedValues[locale.languageCode]!['wateringCalendar']!;
  String get soilMoisture => _localizedValues[locale.languageCode]!['soilMoisture']!;
  String get drySoil => _localizedValues[locale.languageCode]!['drySoil']!;
  String get mediumHumidity => _localizedValues[locale.languageCode]!['mediumHumidity']!;
  String get humidSoil => _localizedValues[locale.languageCode]!['humidSoil']!;
  String get waterToday => _localizedValues[locale.languageCode]!['waterToday']!;
  String get rest => _localizedValues[locale.languageCode]!['rest']!;

  // Météo
  String get weather => _localizedValues[locale.languageCode]!['weather']!;
  String get monday => _localizedValues[locale.languageCode]!['monday']!;
  String get tuesday => _localizedValues[locale.languageCode]!['tuesday']!;
  String get wednesday => _localizedValues[locale.languageCode]!['wednesday']!;
  String get thursday => _localizedValues[locale.languageCode]!['thursday']!;
  String get friday => _localizedValues[locale.languageCode]!['friday']!;
  String get saturday => _localizedValues[locale.languageCode]!['saturday']!;
  String get sunday => _localizedValues[locale.languageCode]!['sunday']!;

  // IA et recommandations
  String get aiAdvice => _localizedValues[locale.languageCode]!['aiAdvice']!;
  String get aiAdviceFor => _localizedValues[locale.languageCode]!['aiAdviceFor']!;
  String get dataSource => _localizedValues[locale.languageCode]!['dataSource']!;
  String get realTimeData => _localizedValues[locale.languageCode]!['realTimeData']!;
  String get cloudEmpty => _localizedValues[locale.languageCode]!['cloudEmpty']!;

  // Recommandations spécifiques
  String get oliveWatering => _localizedValues[locale.languageCode]!['oliveWatering']!;
  String get wheatWatering => _localizedValues[locale.languageCode]!['wheatWatering']!;
  String get tomatoWatering => _localizedValues[locale.languageCode]!['tomatoWatering']!;
  String get strawberryWatering => _localizedValues[locale.languageCode]!['strawberryWatering']!;
  String get cornWatering => _localizedValues[locale.languageCode]!['cornWatering']!;
  String get standardWatering => _localizedValues[locale.languageCode]!['standardWatering']!;

  // Messages d'humidité
  String get soilVeryHumid => _localizedValues[locale.languageCode]!['soilVeryHumid']!;
  String get soilDry => _localizedValues[locale.languageCode]!['soilDry']!;
  String get soilModeratelyHumid => _localizedValues[locale.languageCode]!['soilModeratelyHumid']!;

  // Messages de pluie
  String get noWateringNeeded => _localizedValues[locale.languageCode]!['noWateringNeeded']!;
  String get sandySoilInfo => _localizedValues[locale.languageCode]!['sandySoilInfo']!;
  String get claySoilInfo => _localizedValues[locale.languageCode]!['claySoilInfo']!;
  String get loamySoilInfo => _localizedValues[locale.languageCode]!['loamySoilInfo']!;
  String get standardSoil => _localizedValues[locale.languageCode]!['standardSoil']!;

  // Besoins en eau
  String get oliveNeeds => _localizedValues[locale.languageCode]!['oliveNeeds']!;
  String get wheatNeeds => _localizedValues[locale.languageCode]!['wheatNeeds']!;
  String get tomatoNeeds => _localizedValues[locale.languageCode]!['tomatoNeeds']!;
  String get strawberryNeeds => _localizedValues[locale.languageCode]!['strawberryNeeds']!;
  String get cornNeeds => _localizedValues[locale.languageCode]!['cornNeeds']!;
  String get standardNeeds => _localizedValues[locale.languageCode]!['standardNeeds']!;

  // Formulaires et champs
  String get parcelDetails => _localizedValues[locale.languageCode]!['parcelDetails']!;
  String get locationField => _localizedValues[locale.languageCode]!['locationField']!;
  String get locationHint => _localizedValues[locale.languageCode]!['locationHint']!;
  String get soilType => _localizedValues[locale.languageCode]!['soilType']!;
  String get cropType => _localizedValues[locale.languageCode]!['cropType']!;
  String get cropHint => _localizedValues[locale.languageCode]!['cropHint']!;
  String get surfaceArea => _localizedValues[locale.languageCode]!['surfaceArea']!;
  String get surfaceHint => _localizedValues[locale.languageCode]!['surfaceHint']!;
  String get hectares => _localizedValues[locale.languageCode]!['hectares']!;
  String get validate => _localizedValues[locale.languageCode]!['validate']!;
  String get calcareousSoil => _localizedValues[locale.languageCode]!['calcareousSoil']!;
  String get cropTypes => _localizedValues[locale.languageCode]!['cropTypes']!;
  String get surfaceAreaHectares => _localizedValues[locale.languageCode]!['surfaceAreaHectares']!;
  String get generateAIPlan => _localizedValues[locale.languageCode]!['generateAIPlan']!;
  String get fillAllFields => _localizedValues[locale.languageCode]!['fillAllFields']!;
  String get welcomeToApp => _localizedValues[locale.languageCode]!['welcomeToApp']!;
  String get chooseRole => _localizedValues[locale.languageCode]!['chooseRole']!;
  String get smallFarmer => _localizedValues[locale.languageCode]!['smallFarmer']!;
  String get agriculturalCompany => _localizedValues[locale.languageCode]!['agriculturalCompany']!;

  // Valeurs statiques
  static const Map<String, Map<String, String>> _localizedValues = {
    'fr': {
      'appName': 'AgroPiquet',
      'welcome': 'Bienvenue',
      'irrigationPlan': 'Plan d\'arrosage',
      'weatherDashboard': 'Tableau de bord météo',
      'farmerDashboard': 'Tableau de bord agriculteur',
      'enterpriseDashboard': 'Tableau de bord entreprise',
      
      'agriculture': 'Agriculture',
      'soil': 'Sol',
      'crop': 'Culture',
      'crops': 'Cultures',
      'olive': 'Olive',
      'wheat': 'Blé',
      'tomato': 'Tomate',
      'strawberry': 'Fraise',
      'corn': 'Maïs',
      
      'sandySoil': 'Sableux',
      'claySoil': 'Argileux',
      'loamySoil': 'Limoneux',
      'calcareousSoil': 'Calcaire',
      
      'irrigation': 'Irrigation',
      'watering': 'Arrosage',
      'wateringPlan': 'Plan d\'arrosage',
      'wateringCalendar': 'Calendrier d\'arrosage (IA + météo)',
      'soilMoisture': 'Humidité du sol',
      'drySoil': 'Sol sec',
      'mediumHumidity': 'Humidité moyenne',
      'humidSoil': 'Sol humide',
      'waterToday': 'Arrose',
      'rest': 'Repos',
      
      'weather': 'Météo',
      'monday': 'Lundi',
      'tuesday': 'Mardi',
      'wednesday': 'Mercredi',
      'thursday': 'Jeudi',
      'friday': 'Vendredi',
      'saturday': 'Samedi',
      'sunday': 'Dimanche',
      
      'aiAdvice': 'Conseil IA',
      'aiAdviceFor': 'Conseil IA pour',
      'dataSource': 'Source des données',
      'realTimeData': 'Données capteurs en temps réel',
      'cloudEmpty': 'Cloud vide - Utilisation des valeurs par défaut (0%)',
      
      'oliveWatering': 'L\'olivier nécessite peu d\'eau : un arrosage léger par semaine suffit.',
      'wheatWatering': 'Le blé préfère un sol toujours humide : arrosez chaque jour.',
      'tomatoWatering': 'La tomate a besoin d\'un arrosage régulier : tous les 2 jours environ.',
      'strawberryWatering': 'Les fraises nécessitent beaucoup d\'eau : arrosez quotidiennement.',
      'cornWatering': 'Le maïs aime l\'humidité : arrosage tous les 3 jours environ.',
      'standardWatering': 'Arrosage standard : tous les 2 à 3 jours, selon les conditions météo.',
      
      'soilVeryHumid': 'Sol bien humide — reportez l\'arrosage.',
      'soilDry': 'Sol sec — arrosez dès aujourd\'hui.',
      'soilModeratelyHumid': 'Sol modérément humide.',
      
      'noWateringNeeded': 'Pas d\'arrosage prévu cette semaine, la pluie couvrira les besoins en eau.',
      'sandySoilInfo': 'Le sol sableux retient peu l\'eau.',
      'claySoilInfo': 'Le sol argileux garde bien l\'humidité.',
      'loamySoilInfo': 'Le sol limoneux est équilibré et fertile.',
      'standardSoil': 'Sol standard.',
      
      'oliveNeeds': 'Arrosez légèrement tous les 5 jours.\nBesoin faible : 1.5L/m².',
      'wheatNeeds': 'Arrosez une fois tous les 4 à 5 jours.\nBesoin faible : 1L/m².',
      'tomatoNeeds': 'Arrosez chaque jour ou un jour sur deux.\nBesoin moyen : 2L/m² par jour.',
      'strawberryNeeds': 'Arrosage quotidien recommandé.\nBesoin élevé : 2.5L/m².',
      'cornNeeds': 'Arrosez tous les 2 à 3 jours.\nBesoin moyen : 2L/m².',
      'standardNeeds': 'Arrosage standard : tous les 2-3 jours.\n2L/m².',
      
      'parcelDetails': 'Détails de la parcelle',
      'locationField': '📍 Localisation',
      'locationHint': 'Ex: Bizerte, Tunisie',
      'soilType': '🌾 Type de sol',
      'cropType': '🌱 Culture',
      'cropHint': 'Ex: Tomate, Blé, Olive...',
      'surfaceArea': '📏 Surface',
      'surfaceHint': 'Ex: 5',
      'hectares': 'hectares',
      'validate': 'Valider',
      'cropTypes': '🌱 Types de cultures',
      'surfaceAreaHectares': '📏 Superficie (hectares)',
      'generateAIPlan': 'Générer le plan IA 🌱',
      'fillAllFields': 'Veuillez remplir tous les champs.',
      'welcomeToApp': 'Bienvenue sur AgroPiquet 🌿',
      'chooseRole': 'Choisissez votre rôle pour continuer',
      'smallFarmer': 'Je suis un petit fermier 👨‍🌾',
      'agriculturalCompany': 'Je suis une entreprise agricole 🏢🌱',
    },
    'en': {
      'appName': 'AgroPiquet',
      'welcome': 'Welcome',
      'irrigationPlan': 'Irrigation Plan',
      'weatherDashboard': 'Weather Dashboard',
      'farmerDashboard': 'Farmer Dashboard',
      'enterpriseDashboard': 'Enterprise Dashboard',
      
      'agriculture': 'Agriculture',
      'soil': 'Soil',
      'crop': 'Crop',
      'crops': 'Crops',
      'olive': 'Olive',
      'wheat': 'Wheat',
      'tomato': 'Tomato',
      'strawberry': 'Strawberry',
      'corn': 'Corn',
      
      'sandySoil': 'Sandy',
      'claySoil': 'Clay',
      'loamySoil': 'Loamy',
      'calcareousSoil': 'Calcareous',
      
      'irrigation': 'Irrigation',
      'watering': 'Watering',
      'wateringPlan': 'Watering Plan',
      'wateringCalendar': 'Watering Calendar (AI + Weather)',
      'soilMoisture': 'Soil Moisture',
      'drySoil': 'Dry Soil',
      'mediumHumidity': 'Medium Humidity',
      'humidSoil': 'Humid Soil',
      'waterToday': 'Water',
      'rest': 'Rest',
      
      'weather': 'Weather',
      'monday': 'Monday',
      'tuesday': 'Tuesday',
      'wednesday': 'Wednesday',
      'thursday': 'Thursday',
      'friday': 'Friday',
      'saturday': 'Saturday',
      'sunday': 'Sunday',
      
      'aiAdvice': 'AI Advice',
      'aiAdviceFor': 'AI Advice for',
      'dataSource': 'Data Source',
      'realTimeData': 'Real-time sensor data',
      'cloudEmpty': 'Cloud empty - Using default values (0%)',
      
      'oliveWatering': 'The olive tree needs little water: one light watering per week is enough.',
      'wheatWatering': 'Wheat prefers always moist soil: water every day.',
      'tomatoWatering': 'Tomato needs regular watering: every 2 days approximately.',
      'strawberryWatering': 'Strawberries need a lot of water: water daily.',
      'cornWatering': 'Corn likes humidity: watering every 3 days approximately.',
      'standardWatering': 'Standard watering: every 2 to 3 days, depending on weather conditions.',
      
      'soilVeryHumid': 'Soil very humid — postpone watering.',
      'soilDry': 'Dry soil — water today.',
      'soilModeratelyHumid': 'Moderately humid soil.',
      
      'noWateringNeeded': 'No watering planned this week, rain will cover water needs.',
      'sandySoilInfo': 'Sandy soil retains little water.',
      'claySoilInfo': 'Clay soil keeps moisture well.',
      'loamySoilInfo': 'Loamy soil is balanced and fertile.',
      'standardSoil': 'Standard soil.',
      
      'oliveNeeds': 'Water lightly every 5 days.\nLow need: 1.5L/m².',
      'wheatNeeds': 'Water once every 4 to 5 days.\nLow need: 1L/m².',
      'tomatoNeeds': 'Water every day or every other day.\nMedium need: 2L/m² per day.',
      'strawberryNeeds': 'Daily watering recommended.\nHigh need: 2.5L/m².',
      'cornNeeds': 'Water every 2 to 3 days.\nMedium need: 2L/m².',
      'standardNeeds': 'Standard watering: every 2-3 days.\n2L/m².',
      
      'parcelDetails': 'Parcel Details',
      'locationField': '📍 Location',
      'locationHint': 'Ex: Bizerte, Tunisia',
      'soilType': '🌾 Soil Type',
      'cropType': '🌱 Crop',
      'cropHint': 'Ex: Tomato, Wheat, Olive...',
      'surfaceArea': '📏 Surface Area',
      'surfaceHint': 'Ex: 5',
      'hectares': 'hectares',
      'validate': 'Validate',
      'cropTypes': '🌱 Crop Types',
      'surfaceAreaHectares': '📏 Surface Area (hectares)',
      'generateAIPlan': 'Generate AI Plan 🌱',
      'fillAllFields': 'Please fill all fields.',
      'welcomeToApp': 'Welcome to AgroPiquet 🌿',
      'chooseRole': 'Choose your role to continue',
      'smallFarmer': 'I am a small farmer 👨‍🌾',
      'agriculturalCompany': 'I am an agricultural company 🏢🌱',
    },
    'ar': {
      'appName': 'أغروبيكيه',
      'welcome': 'مرحبا',
      'irrigationPlan': 'خطة الري',
      'weatherDashboard': 'لوحة الطقس',
      'farmerDashboard': 'لوحة المزارع',
      'enterpriseDashboard': 'لوحة المؤسسة',
      
      'agriculture': 'الزراعة',
      'soil': 'التربة',
      'crop': 'المحصول',
      'crops': 'المحاصيل',
      'olive': 'زيتون',
      'wheat': 'قمح',
      'tomato': 'طماطم',
      'strawberry': 'فراولة',
      'corn': 'ذرة',
      
      'sandySoil': 'رملية',
      'claySoil': 'طينية',
      'loamySoil': 'طمية',
      'calcareousSoil': 'جيرية',
      
      'irrigation': 'الري',
      'watering': 'الري',
      'wateringPlan': 'خطة الري',
      'wateringCalendar': 'تقويم الري (ذكاء اصطناعي + طقس)',
      'soilMoisture': 'رطوبة التربة',
      'drySoil': 'تربة جافة',
      'mediumHumidity': 'رطوبة متوسطة',
      'humidSoil': 'تربة رطبة',
      'waterToday': 'ري',
      'rest': 'راحة',
      
      'weather': 'الطقس',
      'monday': 'الإثنين',
      'tuesday': 'الثلاثاء',
      'wednesday': 'الأربعاء',
      'thursday': 'الخميس',
      'friday': 'الجمعة',
      'saturday': 'السبت',
      'sunday': 'الأحد',
      
      'aiAdvice': 'نصيحة الذكاء الاصطناعي',
      'aiAdviceFor': 'نصيحة الذكاء الاصطناعي لـ',
      'dataSource': 'مصدر البيانات',
      'realTimeData': 'بيانات المستشعر في الوقت الفعلي',
      'cloudEmpty': 'السحابة فارغة - استخدام القيم الافتراضية (0%)',
      
      'oliveWatering': 'شجرة الزيتون تحتاج القليل من الماء: ري خفيف واحد في الأسبوع كافٍ.',
      'wheatWatering': 'القمح يفضل تربة رطبة دائماً: ري كل يوم.',
      'tomatoWatering': 'الطماطم تحتاج ري منتظم: كل يومين تقريباً.',
      'strawberryWatering': 'الفراولة تحتاج الكثير من الماء: ري يومي.',
      'cornWatering': 'الذرة تحب الرطوبة: ري كل 3 أيام تقريباً.',
      'standardWatering': 'ري قياسي: كل 2 إلى 3 أيام، حسب ظروف الطقس.',
      
      'soilVeryHumid': 'تربة رطبة جداً — تأجيل الري.',
      'soilDry': 'تربة جافة — الري اليوم.',
      'soilModeratelyHumid': 'تربة رطبة بشكل معتدل.',
      
      'noWateringNeeded': 'لا ري مخطط هذا الأسبوع، المطر سيغطي احتياجات الماء.',
      'sandySoilInfo': 'التربة الرملية تحتفظ بقليل من الماء.',
      'claySoilInfo': 'التربة الطينية تحتفظ بالرطوبة جيداً.',
      'loamySoilInfo': 'التربة الطمية متوازنة وخصبة.',
      'standardSoil': 'تربة قياسية.',
      
      'oliveNeeds': 'ري خفيف كل 5 أيام.\nحاجة منخفضة: 1.5 لتر/م².',
      'wheatNeeds': 'ري مرة كل 4 إلى 5 أيام.\nحاجة منخفضة: 1 لتر/م².',
      'tomatoNeeds': 'ري كل يوم أو يوماً بعد يوم.\nحاجة متوسطة: 2 لتر/م² في اليوم.',
      'strawberryNeeds': 'ري يومي موصى به.\nحاجة عالية: 2.5 لتر/م².',
      'cornNeeds': 'ري كل 2 إلى 3 أيام.\nحاجة متوسطة: 2 لتر/م².',
      'standardNeeds': 'ري قياسي: كل 2-3 أيام.\n2 لتر/م².',
      
      'parcelDetails': 'تفاصيل الأرض',
      'locationField': '📍 الموقع',
      'locationHint': 'مثال: بنزرت، تونس',
      'soilType': '🌾 نوع التربة',
      'cropType': '🌱 المحصول',
      'cropHint': 'مثال: طماطم، قمح، زيتون...',
      'surfaceArea': '📏 المساحة',
      'surfaceHint': 'مثال: 5',
      'hectares': 'هكتار',
      'validate': 'تحقق',
      'cropTypes': '🌱 أنواع المحاصيل',
      'surfaceAreaHectares': '📏 المساحة (هكتار)',
      'generateAIPlan': 'توليد خطة الذكاء الاصطناعي 🌱',
      'fillAllFields': 'يرجى ملء جميع الحقول.',
      'welcomeToApp': 'مرحبًا بك في أغروبيكيت 🌿',
      'chooseRole': 'اختر دورك للمتابعة',
      'smallFarmer': 'أنا فلاح صغير 👨‍🌾',
      'agriculturalCompany': 'أنا شركة زراعية 🏢🌱',
    },
  };
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['fr', 'en', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}
