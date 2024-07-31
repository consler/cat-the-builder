.class public final Lorg/catrobat/catroid/common/SharedPreferenceKeys;
.super Ljava/lang/Object;
.source "SharedPreferenceKeys.java"


# static fields
.field public static final ACCESSIBILITY_PROFILE_PREFERENCE_KEY:Ljava/lang/String; = "AccessibilityProfile"

.field public static final AGREED_TO_PRIVACY_POLICY_VERSION:Ljava/lang/String; = "AgreedToCurrentPrivacyPolicy"

.field public static final DEVICE_LANGUAGE:Ljava/lang/String; = "deviceLanguage"

.field public static final DISABLE_HINTS_DIALOG_SHOWN_PREFERENCE_KEY:Ljava/lang/String; = "disableHintsDialogShown"

.field public static final INDEXING_VARIABLE_PREFERENCE_KEY:Ljava/lang/String; = "variableIndexing"

.field public static final LANGUAGE_TAGS:[Ljava/lang/String;

.field public static final LANGUAGE_TAG_KEY:Ljava/lang/String; = "applicationLanguage"

.field public static final LAST_USED_DATE_KEY:Ljava/lang/String; = "lastUsedDate"

.field public static final NEW_SPRITE_VISUAL_PLACEMENT_KEY:Ljava/lang/String; = "newSpriteVisualPlacement"

.field public static final SCRATCH_CONVERTER_CLIENT_ID_PREFERENCE_KEY:Ljava/lang/String; = "scratchconverter.clientID"

.field public static final SCRATCH_CONVERTER_DOWNLOAD_STATE_PREFERENCE_KEY:Ljava/lang/String; = "scratchconverter.downloadStatePref"

.field public static final SHOW_DETAILS_LOOKS_PREFERENCE_KEY:Ljava/lang/String; = "showDetailsLookList"

.field public static final SHOW_DETAILS_PROJECTS_PREFERENCE_KEY:Ljava/lang/String; = "showDetailsProjectList"

.field public static final SHOW_DETAILS_SCENES_PREFERENCE_KEY:Ljava/lang/String; = "showDetailsSceneList"

.field public static final SHOW_DETAILS_SCRATCH_PROJECTS_PREFERENCE_KEY:Ljava/lang/String; = "showDetailsScratchProjects"

.field public static final SHOW_DETAILS_SOUNDS_PREFERENCE_KEY:Ljava/lang/String; = "showDetailsSoundList"

.field public static final SHOW_DETAILS_SPRITES_PREFERENCE_KEY:Ljava/lang/String; = "showDetailsSpriteList"

.field public static final SHOW_MULTIPLAYER_BLUETOOTH_DIALOG_KEY:Ljava/lang/String; = "showMultiplayerBluetoothDialog"

.field public static final SHOW_SURVEY_KEY:Ljava/lang/String; = "showSurvey"

.field public static final SORT_PROJECTS_PREFERENCE_KEY:Ljava/lang/String; = "sortProjectsList"

.field public static final SORT_VARIABLE_PREFERENCE_KEY:Ljava/lang/String; = "sortVariableList"

.field public static final SURVEY_URL1_HASH_KEY:Ljava/lang/String; = "surveyUrl1Hash"

.field public static final SURVEY_URL2_HASH_KEY:Ljava/lang/String; = "surveyUrl2Hash"

.field public static final TIME_SPENT_IN_APP_IN_SECONDS_KEY:Ljava/lang/String; = "timeSpentInApp"


# direct methods
.method static constructor <clinit>()V
    .locals 66

    .line 37
    const-string v0, "deviceLanguage"

    const-string v1, "af"

    const-string v2, "az"

    const-string v3, "ms"

    const-string v4, "bs"

    const-string v5, "ca"

    const-string v6, "da"

    const-string v7, "de"

    const-string v8, "en-AU"

    const-string v9, "en-CA"

    const-string v10, "en-GB"

    const-string v11, "en"

    const-string v12, "es"

    const-string v13, "fr"

    const-string v14, "gl"

    const-string v15, "ha"

    const-string v16, "hr"

    const-string v17, "ig"

    const-string v18, "id"

    const-string v19, "it"

    const-string v20, "sw"

    const-string v21, "lt"

    const-string v22, "hu"

    const-string v23, "nl"

    const-string v24, "no"

    const-string v25, "pl"

    const-string v26, "pt-BR"

    const-string v27, "pt"

    const-string v28, "ro"

    const-string v29, "sq"

    const-string v30, "sk"

    const-string v31, "sl"

    const-string v32, "fi"

    const-string v33, "sv"

    const-string v34, "vi"

    const-string v35, "tw"

    const-string v36, "tr"

    const-string v37, "cs"

    const-string v38, "el"

    const-string v39, "bg"

    const-string v40, "mk"

    const-string v41, "ru"

    const-string v42, "sr-CS"

    const-string v43, "sr"

    const-string v44, "sr-SP"

    const-string v45, "uk"

    const-string v46, "kk"

    const-string v47, "he"

    const-string v48, "ur"

    const-string v49, "ar"

    const-string v50, "sd"

    const-string v51, "fa"

    const-string v52, "ps"

    const-string v53, "hi"

    const-string v54, "bn"

    const-string v55, "gu"

    const-string v56, "ta"

    const-string v57, "te"

    const-string v58, "kn"

    const-string v59, "ml"

    const-string v60, "si"

    const-string v61, "th"

    const-string v62, "zh-CN"

    const-string v63, "zh-TW"

    const-string v64, "ja"

    const-string v65, "ko"

    filled-new-array/range {v0 .. v65}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/common/SharedPreferenceKeys;->LANGUAGE_TAGS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
