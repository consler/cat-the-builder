.class public Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"


# static fields
.field public static final ACCESSIBILITY_SCREEN_KEY:Ljava/lang/String; = "setting_accessibility_screen"

.field public static final AI_SENSORS_SCREEN_KEY:Ljava/lang/String; = "setting_ai_screen"

.field public static final DRONE_ALTITUDE_LIMIT:Ljava/lang/String; = "setting_drone_altitude_limit"

.field public static final DRONE_CONFIGS:Ljava/lang/String; = "setting_drone_basic_configs"

.field public static final DRONE_ROTATION_SPEED:Ljava/lang/String; = "setting_drone_rotation_speed"

.field public static final DRONE_SCREEN_KEY:Ljava/lang/String; = "settings_drone_screen"

.field public static final DRONE_SETTINGS_CATEGORY:Ljava/lang/String; = "setting_drone_category"

.field public static final DRONE_TILT_ANGLE:Ljava/lang/String; = "setting_drone_tilt_angle"

.field public static final DRONE_VERTICAL_SPEED:Ljava/lang/String; = "setting_drone_vertical_speed"

.field public static final EV3_SCREEN_KEY:Ljava/lang/String; = "setting_ev3_screen"

.field public static final EV3_SENSORS:[Ljava/lang/String;

.field public static final EV3_SETTINGS_CATEGORY:Ljava/lang/String; = "setting_ev3_category"

.field public static final NXT_SCREEN_KEY:Ljava/lang/String; = "setting_nxt_screen"

.field public static final NXT_SENSORS:[Ljava/lang/String;

.field public static final NXT_SETTINGS_CATEGORY:Ljava/lang/String; = "setting_nxt_category"

.field public static final RASPBERRY_SCREEN_KEY:Ljava/lang/String; = "settings_raspberry_screen"

.field public static final RASPI_CONNECTION_SETTINGS_CATEGORY:Ljava/lang/String; = "setting_raspi_connection_settings_category"

.field public static final RASPI_HOST:Ljava/lang/String; = "setting_raspi_host_preference"

.field public static final RASPI_PORT:Ljava/lang/String; = "setting_raspi_port_preference"

.field public static final RASPI_VERSION_SPINNER:Ljava/lang/String; = "setting_raspi_version_preference"

.field public static final SETTINGS_CAST_GLOBALLY_ENABLED:Ljava/lang/String; = "setting_cast_globally_enabled"

.field public static final SETTINGS_CRASH_REPORTS:Ljava/lang/String; = "setting_enable_crash_reports"

.field public static final SETTINGS_EDIT_TRUSTED_DOMAINS:Ljava/lang/String; = "setting_trusted_domains"

.field public static final SETTINGS_MINDSTORMS_EV3_BRICKS_ENABLED:Ljava/lang/String; = "settings_mindstorms_ev3_bricks_enabled"

.field public static final SETTINGS_MINDSTORMS_EV3_SHOW_SENSOR_INFO_BOX_DISABLED:Ljava/lang/String; = "settings_mindstorms_ev3_show_sensor_info_box_disabled"

.field public static final SETTINGS_MINDSTORMS_NXT_BRICKS_ENABLED:Ljava/lang/String; = "settings_mindstorms_nxt_bricks_enabled"

.field public static final SETTINGS_MINDSTORMS_NXT_SHOW_SENSOR_INFO_BOX_DISABLED:Ljava/lang/String; = "settings_mindstorms_nxt_show_sensor_info_box_disabled"

.field public static final SETTINGS_MULTILINGUAL:Ljava/lang/String; = "setting_multilingual"

.field public static final SETTINGS_MULTIPLAYER_VARIABLES_ENABLED:Ljava/lang/String; = "setting_multiplayer_variables_enabled"

.field public static final SETTINGS_PARROT_AR_DRONE_CATROBAT_TERMS_OF_SERVICE_ACCEPTED_PERMANENTLY:Ljava/lang/String; = "setting_parrot_ar_drone_catrobat_terms_of_service_accepted_permanently"

.field public static final SETTINGS_PARROT_JUMPING_SUMO_CATROBAT_TERMS_OF_SERVICE_ACCEPTED_PERMANENTLY:Ljava/lang/String; = "setting_parrot_jumping_sumo_catrobat_terms_of_service_accepted_permanently"

.field public static final SETTINGS_SHOW_AI_FACE_DETECTION_SENSORS:Ljava/lang/String; = "setting_ai_face_detection"

.field public static final SETTINGS_SHOW_AI_OBJECT_DETECTION_SENSORS:Ljava/lang/String; = "setting_ai_object_detection"

.field public static final SETTINGS_SHOW_AI_POSE_DETECTION_SENSORS:Ljava/lang/String; = "setting_ai_pose_detection"

.field public static final SETTINGS_SHOW_AI_SPEECH_RECOGNITION_SENSORS:Ljava/lang/String; = "setting_ai_speech_recognition"

.field public static final SETTINGS_SHOW_AI_SPEECH_SYNTHETIZATION_SENSORS:Ljava/lang/String; = "setting_ai_speech_synthetization"

.field public static final SETTINGS_SHOW_AI_TEXT_RECOGNITION_SENSORS:Ljava/lang/String; = "setting_ai_text_recognition"

.field public static final SETTINGS_SHOW_ARDUINO_BRICKS:Ljava/lang/String; = "setting_arduino_bricks"

.field public static final SETTINGS_SHOW_EMBROIDERY_BRICKS:Ljava/lang/String; = "setting_embroidery_bricks"

.field public static final SETTINGS_SHOW_HINTS:Ljava/lang/String; = "setting_enable_hints"

.field public static final SETTINGS_SHOW_JUMPING_SUMO_BRICKS:Ljava/lang/String; = "setting_parrot_jumping_sumo_bricks"

.field public static final SETTINGS_SHOW_NFC_BRICKS:Ljava/lang/String; = "setting_nfc_bricks"

.field public static final SETTINGS_SHOW_PARROT_AR_DRONE_BRICKS:Ljava/lang/String; = "setting_parrot_ar_drone_bricks"

.field public static final SETTINGS_SHOW_PHIRO_BRICKS:Ljava/lang/String; = "setting_enable_phiro_bricks"

.field public static final SETTINGS_SHOW_RASPI_BRICKS:Ljava/lang/String; = "setting_raspi_bricks"

.field public static final SETTINGS_TEST_BRICKS:Ljava/lang/String; = "setting_test_bricks"

.field public static final SETTINGS_USE_CATBLOCKS:Ljava/lang/String; = "settings_use_catblocks"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field screen:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 110
    const-string v0, "setting_mindstorms_nxt_sensor_1"

    const-string v1, "setting_mindstorms_nxt_sensor_2"

    const-string v2, "setting_mindstorms_nxt_sensor_3"

    const-string v3, "setting_mindstorms_nxt_sensor_4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->NXT_SENSORS:[Ljava/lang/String;

    .line 114
    const-string v0, "setting_mindstorms_ev3_sensor_1"

    const-string v1, "setting_mindstorms_ev3_sensor_2"

    const-string v2, "setting_mindstorms_ev3_sensor_3"

    const-string v3, "setting_mindstorms_ev3_sensor_4"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->EV3_SENSORS:[Ljava/lang/String;

    .line 130
    const-class v0, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->screen:Landroid/preference/PreferenceScreen;

    return-void
.end method

.method public static enableLegoMindstormsEV3Bricks(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 497
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 498
    const-string v1, "settings_mindstorms_ev3_bricks_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 499
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 500
    return-void
.end method

.method public static enableLegoMindstormsNXTBricks(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 491
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 492
    const-string v1, "settings_mindstorms_nxt_bricks_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 493
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 494
    return-void
.end method

.method private static getBooleanSharedPreference(ZLjava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .param p0, "defaultValue"    # Z
    .param p1, "settingsString"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 401
    invoke-static {p2}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getDronePreferenceMapping(Landroid/content/Context;Ljava/lang/String;)Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferenceSetting"    # Ljava/lang/String;

    .line 486
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "preference":Ljava/lang/String;
    invoke-static {v0}, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;->getPreferenceFromPreferenceCode(Ljava/lang/String;)Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    move-result-object v1

    return-object v1
.end method

.method public static getDronePreferenceMapping(Landroid/content/Context;)[Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 472
    const-string v0, "setting_drone_basic_configs"

    const-string v1, "setting_drone_altitude_limit"

    const-string v2, "setting_drone_vertical_speed"

    const-string v3, "setting_drone_rotation_speed"

    const-string v4, "setting_drone_tilt_angle"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "dronePreferences":[Ljava/lang/String;
    const/4 v1, 0x5

    new-array v2, v1, [Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    .line 476
    .local v2, "preferenceMapping":[Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 477
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    aget-object v5, v0, v3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, "preference":Ljava/lang/String;
    invoke-static {v4}, Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;->getPreferenceFromPreferenceCode(Ljava/lang/String;)Lorg/catrobat/catroid/common/DroneConfigPreference$Preferences;

    move-result-object v5

    aput-object v5, v2, v3

    .line 476
    .end local v4    # "preference":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 481
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method public static getLegoEV3SensorMapping(Landroid/content/Context;)[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 419
    const/4 v0, 0x4

    new-array v1, v0, [Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 420
    .local v1, "sensorMapping":[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 421
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    sget-object v4, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->EV3_SENSORS:[Ljava/lang/String;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, "sensor":Ljava/lang/String;
    invoke-static {v3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->getSensorFromSensorCode(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    move-result-object v4

    aput-object v4, v1, v2

    .line 420
    .end local v3    # "sensor":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static getLegoNXTSensorMapping(Landroid/content/Context;)[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 409
    const/4 v0, 0x4

    new-array v1, v0, [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    .line 410
    .local v1, "sensorMapping":[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 411
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    sget-object v4, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->NXT_SENSORS:[Ljava/lang/String;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 412
    .local v3, "sensor":Ljava/lang/String;
    invoke-static {v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->getSensorFromSensorCode(Ljava/lang/String;)Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    move-result-object v4

    aput-object v4, v1, v2

    .line 410
    .end local v3    # "sensor":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 415
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static getRaspiHost(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 429
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "setting_raspi_host_preference"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRaspiPort(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 433
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "setting_raspi_port_preference"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getRaspiRevision(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 437
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "setting_raspi_version_preference"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 405
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static isAIFaceDetectionSharedPreferenceEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 335
    const/4 v0, 0x0

    const-string v1, "setting_ai_face_detection"

    invoke-static {v0, v1, p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getBooleanSharedPreference(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isAIObjectDetectionSharedPreferenceEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 375
    const/4 v0, 0x0

    const-string v1, "setting_ai_object_detection"

    invoke-static {v0, v1, p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getBooleanSharedPreference(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isAIPoseDetectionSharedPreferenceEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 345
    const/4 v0, 0x0

    const-string v1, "setting_ai_pose_detection"

    invoke-static {v0, v1, p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getBooleanSharedPreference(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isAISpeechRecognitionSharedPreferenceEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 325
    const/4 v0, 0x0

    const-string v1, "setting_ai_speech_recognition"

    invoke-static {v0, v1, p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getBooleanSharedPreference(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isAISpeechSynthetizationSharedPreferenceEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 355
    const/4 v0, 0x0

    const-string v1, "setting_ai_speech_synthetization"

    invoke-static {v0, v1, p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getBooleanSharedPreference(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isAITextRecognitionSharedPreferenceEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 365
    const/4 v0, 0x0

    const-string v1, "setting_ai_text_recognition"

    invoke-static {v0, v1, p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getBooleanSharedPreference(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isArduinoSharedPreferenceEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 385
    const/4 v0, 0x0

    const-string v1, "setting_arduino_bricks"

    invoke-static {v0, v1, p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getBooleanSharedPreference(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isCastSharedPreferenceEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 297
    const/4 v0, 0x0

    const-string v1, "setting_cast_globally_enabled"

    invoke-static {v0, v1, p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getBooleanSharedPreference(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isDroneSharedPreferenceEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 277
    const/4 v0, 0x0

    const-string v1, "setting_parrot_ar_drone_bricks"

    invoke-static {v0, v1, p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getBooleanSharedPreference(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isEmroiderySharedPreferenceEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 273
    const/4 v0, 0x0

    const-string v1, "setting_embroidery_bricks"

    invoke-static {v0, v1, p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getBooleanSharedPreference(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isJSSharedPreferenceEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 281
    const/4 v0, 0x0

    const-string v1, "setting_parrot_jumping_sumo_bricks"

    invoke-static {v0, v1, p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getBooleanSharedPreference(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isMindstormsEV3SharedPreferenceEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 289
    const/4 v0, 0x0

    const-string v1, "settings_mindstorms_ev3_bricks_enabled"

    invoke-static {v0, v1, p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getBooleanSharedPreference(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isMindstormsNXTSharedPreferenceEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 285
    const/4 v0, 0x0

    const-string v1, "settings_mindstorms_nxt_bricks_enabled"

    invoke-static {v0, v1, p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getBooleanSharedPreference(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isMultiplayerVariablesPreferenceEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 510
    const/4 v0, 0x0

    const-string v1, "setting_multiplayer_variables_enabled"

    invoke-static {v0, v1, p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getBooleanSharedPreference(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 511
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->hasMultiplayerVariables()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 510
    :cond_1
    return v0
.end method

.method public static isNfcSharedPreferenceEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 393
    const/4 v0, 0x0

    const-string v1, "setting_nfc_bricks"

    invoke-static {v0, v1, p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getBooleanSharedPreference(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isPhiroSharedPreferenceEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 293
    const/4 v0, 0x0

    const-string v1, "setting_enable_phiro_bricks"

    invoke-static {v0, v1, p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getBooleanSharedPreference(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isRaspiSharedPreferenceEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 389
    const/4 v0, 0x0

    const-string v1, "setting_raspi_bricks"

    invoke-static {v0, v1, p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getBooleanSharedPreference(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isTestSharedPreferenceEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 397
    sget-boolean v0, Lorg/catrobat/catroid/BuildConfig;->DEBUG:Z

    const-string v1, "setting_test_bricks"

    invoke-static {v0, v1, p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getBooleanSharedPreference(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$null$0()V
    .locals 2

    .line 536
    const-class v0, Lorg/catrobat/catroid/sync/ProjectsCategoriesSync;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->inject(Ljava/lang/Class;)Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/sync/ProjectsCategoriesSync;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/sync/ProjectsCategoriesSync;->sync(Z)V

    return-void
.end method

.method public static removeLanguageSharedPreference(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 574
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 575
    const-string v1, "applicationLanguage"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 576
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 577
    return-void
.end method

.method public static setAIFaceDetectionPreferenceEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .line 339
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 340
    const-string v1, "setting_ai_face_detection"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 341
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 342
    return-void
.end method

.method public static setAIObjectDetectionPreferenceEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .line 379
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 380
    const-string v1, "setting_ai_object_detection"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 381
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 382
    return-void
.end method

.method public static setAIPoseDetectionPreferenceEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .line 349
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 350
    const-string v1, "setting_ai_pose_detection"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 351
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 352
    return-void
.end method

.method public static setAISpeechReconitionPreferenceEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .line 329
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 330
    const-string v1, "setting_ai_speech_recognition"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 331
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 332
    return-void
.end method

.method public static setAISpeechSynthetizationPreferenceEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .line 359
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 360
    const-string v1, "setting_ai_speech_synthetization"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 361
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 362
    return-void
.end method

.method public static setAITextRecognitionPreferenceEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .line 369
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 370
    const-string v1, "setting_ai_text_recognition"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 371
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 372
    return-void
.end method

.method public static setArduinoSharedPreferenceEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .line 313
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 314
    const-string v1, "setting_arduino_bricks"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 315
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 316
    return-void
.end method

.method private setHintPreferences()V
    .locals 2

    .line 262
    const-string v0, "setting_enable_hints"

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 263
    .local v0, "hintCheckBoxPreference":Landroid/preference/CheckBoxPreference;
    new-instance v1, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment$1;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment$1;-><init>(Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 270
    return-void
.end method

.method public static setJumpingSumoSharedPreferenceEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .line 307
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 308
    const-string v1, "setting_parrot_jumping_sumo_bricks"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 309
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 310
    return-void
.end method

.method private setLanguage()V
    .locals 7

    .line 515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .local v0, "languagesNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lorg/catrobat/catroid/common/SharedPreferenceKeys;->LANGUAGE_TAGS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 517
    .local v4, "languageTag":Ljava/lang/String;
    const-string v5, "deviceLanguage"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 518
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120261

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 520
    :cond_0
    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    .line 521
    .local v5, "mLocale":Ljava/util/Locale;
    invoke-virtual {v5, v5}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    .end local v4    # "languageTag":Ljava/lang/String;
    .end local v5    # "mLocale":Ljava/util/Locale;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 525
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 526
    .local v1, "languages":[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 528
    const-string v2, "setting_multilingual"

    invoke-virtual {p0, v2}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 529
    .local v2, "listPreference":Landroid/preference/ListPreference;
    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 530
    sget-object v3, Lorg/catrobat/catroid/common/SharedPreferenceKeys;->LANGUAGE_TAGS:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 531
    new-instance v3, Lorg/catrobat/catroid/ui/settingsfragments/-$$Lambda$SettingsFragment$Nhs2DVjimxUiQT754sB7XsiPmwc;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/ui/settingsfragments/-$$Lambda$SettingsFragment$Nhs2DVjimxUiQT754sB7XsiPmwc;-><init>(Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 539
    return-void
.end method

.method public static setLanguageSharedPreference(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/String;

    .line 568
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 569
    const-string v1, "applicationLanguage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 570
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 571
    return-void
.end method

.method public static setLegoMindstormsEV3SensorMapping(Landroid/content/Context;Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sensor"    # Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;
    .param p2, "sensorSetting"    # Ljava/lang/String;

    .line 465
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 466
    invoke-virtual {p1}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->getSensorCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 467
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 468
    return-void
.end method

.method public static setLegoMindstormsEV3SensorMapping(Landroid/content/Context;[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sensorMapping"    # [Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    .line 450
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 451
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->EV3_SENSORS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 452
    aget-object v2, v2, v1

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;->getSensorCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    .end local v1    # "i":I
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 456
    return-void
.end method

.method public static setLegoMindstormsNXTSensorMapping(Landroid/content/Context;Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sensor"    # Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;
    .param p2, "sensorSetting"    # Ljava/lang/String;

    .line 459
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 460
    invoke-virtual {p1}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->getSensorCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 461
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 462
    return-void
.end method

.method public static setLegoMindstormsNXTSensorMapping(Landroid/content/Context;[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sensorMapping"    # [Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    .line 441
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 442
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->NXT_SENSORS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 443
    aget-object v2, v2, v1

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;->getSensorCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    .end local v1    # "i":I
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 447
    return-void
.end method

.method public static setMultiplayerVariablesPreferenceEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .line 504
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 505
    const-string v1, "setting_multiplayer_variables_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 506
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 507
    return-void
.end method

.method public static setPhiroSharedPreferenceEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .line 301
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 302
    const-string v1, "setting_enable_phiro_bricks"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 303
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 304
    return-void
.end method

.method public static setRaspiSharedPreferenceEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .line 319
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 320
    const-string v1, "setting_raspi_bricks"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 321
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 322
    return-void
.end method

.method public static setToChosenLanguage(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 542
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 543
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "applicationLanguage"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, "languageTag":Ljava/lang/String;
    const-string v2, "deviceLanguage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    sget-object v2, Lorg/catrobat/catroid/CatroidApplication;->defaultSystemLanguage:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .local v2, "mLocale":Ljava/util/Locale;
    goto :goto_1

    .line 548
    .end local v2    # "mLocale":Ljava/util/Locale;
    :cond_0
    sget-object v2, Lorg/catrobat/catroid/common/SharedPreferenceKeys;->LANGUAGE_TAGS:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/catrobat/catroid/CatroidApplication;->defaultSystemLanguage:Ljava/lang/String;

    .line 550
    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    :goto_0
    nop

    .line 553
    .restart local v2    # "mLocale":Ljava/util/Locale;
    :goto_1
    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 554
    invoke-static {p0, v2}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->updateLocale(Landroid/content/Context;Ljava/util/Locale;)V

    .line 555
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->updateLocale(Landroid/content/Context;Ljava/util/Locale;)V

    .line 556
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->setUserLocaleTag(Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method public static setUseCatBlocks(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useCatBlocks"    # Z

    .line 584
    invoke-static {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 585
    const-string v1, "settings_use_catblocks"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 586
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 587
    return-void
.end method

.method public static updateLocale(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 560
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 561
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 562
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 563
    .local v2, "conf":Landroid/content/res/Configuration;
    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 564
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 565
    return-void
.end method

.method public static useCatBlocks(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 580
    const/4 v0, 0x0

    const-string v1, "settings_use_catblocks"

    invoke-static {v0, v1, p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getBooleanSharedPreference(ZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public synthetic lambda$setLanguage$1$SettingsFragment(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "languageTag"    # Ljava/lang/Object;

    .line 532
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "selectedLanguageTag":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setLanguageSharedPreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 534
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lorg/catrobat/catroid/ui/MainMenuActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 535
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finishAffinity()V

    .line 536
    new-instance v1, Ljava/lang/Thread;

    sget-object v2, Lorg/catrobat/catroid/ui/settingsfragments/-$$Lambda$SettingsFragment$WoM_jLMiFyDSTbLBCMveeM9o9x0;->INSTANCE:Lorg/catrobat/catroid/ui/settingsfragments/-$$Lambda$SettingsFragment$WoM_jLMiFyDSTbLBCMveeM9o9x0;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 537
    const/4 v1, 0x1

    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 137
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setToChosenLanguage(Landroid/app/Activity;)V

    .line 140
    const v0, 0x7f150009

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->addPreferencesFromResource(I)V

    .line 141
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setHintPreferences()V

    .line 142
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setLanguage()V

    .line 144
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->screen:Landroid/preference/PreferenceScreen;

    .line 203
    const-string v0, "setting_ai_screen"

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 204
    .local v0, "AIPreference":Landroid/preference/PreferenceScreen;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 206
    .end local v0    # "AIPreference":Landroid/preference/PreferenceScreen;
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .line 216
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "setting_nxt_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_1
    const-string v1, "settings_raspberry_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "setting_ev3_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_3
    const-string v1, "setting_accessibility_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_4
    const-string v1, "setting_ai_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_5
    const-string v1, "settings_drone_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const v7, 0x7f0a0321

    if-eqz v1, :cond_6

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    goto/16 :goto_2

    .line 251
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;

    invoke-direct {v2}, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;-><init>()V

    sget-object v3, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;->TAG:Ljava/lang/String;

    .line 252
    invoke-virtual {v1, v7, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/ui/settingsfragments/RaspberryPiSettingsFragment;->TAG:Ljava/lang/String;

    .line 253
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 254
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_2

    .line 244
    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;

    invoke-direct {v2}, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;-><init>()V

    sget-object v3, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;->TAG:Ljava/lang/String;

    .line 245
    invoke-virtual {v1, v7, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/ui/settingsfragments/ParrotARDroneSettingsFragment;->TAG:Ljava/lang/String;

    .line 247
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 249
    goto/16 :goto_2

    .line 238
    :cond_3
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/settingsfragments/Ev3SensorsSettingsFragment;

    invoke-direct {v2}, Lorg/catrobat/catroid/ui/settingsfragments/Ev3SensorsSettingsFragment;-><init>()V

    sget-object v3, Lorg/catrobat/catroid/ui/settingsfragments/Ev3SensorsSettingsFragment;->TAG:Ljava/lang/String;

    .line 239
    invoke-virtual {v1, v7, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/ui/settingsfragments/Ev3SensorsSettingsFragment;->TAG:Ljava/lang/String;

    .line 240
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 242
    goto :goto_2

    .line 232
    :cond_4
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/settingsfragments/NXTSensorsSettingsFragment;

    invoke-direct {v2}, Lorg/catrobat/catroid/ui/settingsfragments/NXTSensorsSettingsFragment;-><init>()V

    sget-object v3, Lorg/catrobat/catroid/ui/settingsfragments/NXTSensorsSettingsFragment;->TAG:Ljava/lang/String;

    .line 233
    invoke-virtual {v1, v7, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/ui/settingsfragments/NXTSensorsSettingsFragment;->TAG:Ljava/lang/String;

    .line 234
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 236
    goto :goto_2

    .line 226
    :cond_5
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;

    invoke-direct {v2}, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;-><init>()V

    sget-object v3, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;->TAG:Ljava/lang/String;

    .line 227
    invoke-virtual {v1, v7, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/ui/settingsfragments/AccessibilitySettingsFragment;->TAG:Ljava/lang/String;

    .line 228
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 230
    goto :goto_2

    .line 219
    :cond_6
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment;

    invoke-direct {v2}, Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment;-><init>()V

    sget-object v3, Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment;->Companion:Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment$Companion;

    .line 221
    invoke-virtual {v3}, Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-virtual {v1, v7, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment;->Companion:Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment$Companion;

    .line 222
    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/settingsfragments/AISettingsFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 223
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 224
    nop

    .line 257
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x3696ddf1 -> :sswitch_5
        0x30bd9934 -> :sswitch_4
        0x38dda70c -> :sswitch_3
        0x5d64aef8 -> :sswitch_2
        0x6302211d -> :sswitch_1
        0x7caeebb0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 2

    .line 210
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 211
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f12069e

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 212
    return-void
.end method
