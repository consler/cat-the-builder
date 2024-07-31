.class public final Lorg/catrobat/catroid/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "org.catrobat.catroid"

.field public static final BUILD_TYPE:Ljava/lang/String; = "debug"

.field public static final DEBUG:Z

.field public static final FEATURE_AI_SENSORS_ENABLED:Z = false

.field public static final FEATURE_APK_GENERATOR_ENABLED:Z = false

.field public static final FEATURE_ARDUINO_ENABLED:Z = true

.field public static final FEATURE_CAST_ENABLED:Z = true

.field public static final FEATURE_CATBLOCKS_DEBUGABLE:Z = true

.field public static final FEATURE_CATBLOCKS_ENABLED:Z = true

.field public static final FEATURE_EMBROIDERY_ENABLED:Z = true

.field public static final FEATURE_LEGO_EV3_ENABLED:Z = true

.field public static final FEATURE_LEGO_NXT_ENABLED:Z = true

.field public static final FEATURE_LIST_AS_BASIC_DATATYPE:Z = false

.field public static final FEATURE_MERGE_ENABLED:Z = true

.field public static final FEATURE_MULTIPLAYER_VARIABLES_ENABLED:Z = true

.field public static final FEATURE_NFC_ENABLED:Z = true

.field public static final FEATURE_PARROT_AR_DRONE_ENABLED:Z = true

.field public static final FEATURE_PARROT_JUMPING_SUMO_ENABLED:Z = true

.field public static final FEATURE_PHIRO_ENABLED:Z = true

.field public static final FEATURE_POCKETMUSIC_ENABLED:Z = true

.field public static final FEATURE_RASPI_ENABLED:Z = true

.field public static final FEATURE_SCRATCH_CONVERTER_ENABLED:Z = true

.field public static final FEATURE_TESTBRICK_ENABLED:Z = true

.field public static final FEATURE_USER_REPORTERS_ENABLED:Z = true

.field public static final FLAVOR:Ljava/lang/String; = "catroid"

.field public static final GIT_COMMIT_INFO:Ljava/lang/String; = "branch  @"

.field public static final PROJECT_NAME:Ljava/lang/String; = "No Standalone Project"

.field public static final START_PROJECT:Ljava/lang/String; = "No Starting Project"

.field public static final USE_ANDROID_LOCALES_FOR_SCREENSHOTS:Z = false

.field public static final VERSION_CODE:I = 0x5a

.field public static final VERSION_NAME:Ljava/lang/String; = "1.2.1"

.field public static final WEB_TEST_FLAG:Z = false

.field public static final WEB_TEST_URL:Ljava/lang/String; = "null"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-string v0, "true"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/catrobat/catroid/BuildConfig;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
