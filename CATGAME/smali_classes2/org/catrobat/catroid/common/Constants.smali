.class public final Lorg/catrobat/catroid/common/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/common/Constants$LegoPort;,
        Lorg/catrobat/catroid/common/Constants$LegoSensorType;
    }
.end annotation


# static fields
.field public static final ABOUT_POCKETCODE_LICENSE_URL:Ljava/lang/String; = "https://catrob.at/licenses"

.field public static final ANY_EXTENSION_REGEX:Ljava/lang/String; = "\\.\\w+$"

.field public static final APPLICATION_BUILD_NAME:Ljava/lang/String; = ""

.field public static final APPLICATION_BUILD_NUMBER:I = 0x0

.field public static final BACKBACK_SCENES_DIRECTORY_NAME:Ljava/lang/String; = "scenes"

.field public static final BACKPACK_DIRECTORY_NAME:Ljava/lang/String; = "backpack"

.field public static final BACKPACK_IMAGE_DIRECTORY_NAME:Ljava/lang/String; = "backpack_image"

.field public static final BACKPACK_JSON_FILE_NAME:Ljava/lang/String; = "backpack.json"

.field public static final BACKPACK_SOUND_DIRECTORY_NAME:Ljava/lang/String; = "backpack_sound"

.field public static final BASE_APP_URL_HTTPS:Ljava/lang/String; = "https://share.catrob.at/app/"

.field public static final BLUETOOTH_LEGO_NXT:Ljava/lang/String; = "BLUETOOTH_LEGO_NXT"

.field public static final BORDER_THICKNESS_BUBBLES:I = 0x5

.field public static final BUFFER_8K:I = 0x2000

.field public static final CACHED_PROJECT_ZIP_FILE_NAME:Ljava/lang/String; = "projectImportCache.zip"

.field public static final CACHE_DIR:Ljava/io/File;

.field public static final CAMERA_CACHE_DIR:Ljava/io/File;

.field public static final CAST_CONNECTION_TIMEOUT:I = 0x1388

.field public static final CAST_IDLE_BACKGROUND_COLOR:I = 0x66000000

.field public static final CAST_NOT_SEEING_DEVICE_TIMEOUT:I = 0xbb8

.field public static final CATROBAT_ABOUT_URL:Ljava/lang/String; = "https://www.catrobat.org/"

.field public static final CATROBAT_DELETE_ACCOUNT_URL:Ljava/lang/String; = "https://share.catrob.at/pocketcode/profile/edit"

.field public static final CATROBAT_EXTENSION:Ljava/lang/String; = ".catrobat"

.field public static final CATROBAT_FORMULA_WIKI_URL:Ljava/lang/String; = "https://wiki.catrobat.org/bin/view/Documentation/FormulaEditor"

.field public static final CATROBAT_FUNCTIONS_WIKI_URL:Ljava/lang/String; = "https://wiki.catrobat.org/bin/view/Documentation/FormulaEditor/Functions/"

.field public static final CATROBAT_LOGIC_WIKI_URL:Ljava/lang/String; = "https://wiki.catrobat.org/bin/view/Documentation/FormulaEditor/Logic/"

.field public static final CATROBAT_OBJECT_WIKI_URL:Ljava/lang/String; = "https://wiki.catrobat.org/bin/view/Documentation/FormulaEditor/Properties/"

.field public static final CATROBAT_SENSORS_WIKI_URL:Ljava/lang/String; = "https://wiki.catrobat.org/bin/view/Documentation/FormulaEditor/Sensors/"

.field public static final CATROBAT_TERMS_OF_USE_ACCEPTED:I = 0x1

.field public static final CATROBAT_TERMS_OF_USE_TOKEN_FLAVOR_URL:Ljava/lang/String; = "?flavorName="

.field public static final CATROBAT_TERMS_OF_USE_TOKEN_VERSION_URL:Ljava/lang/String; = "&versionCode="

.field public static final CATROBAT_TERMS_OF_USE_URL:Ljava/lang/String; = "https://share.catrob.at/pocketcode/termsOfUse"

.field public static final CATROBAT_TOKEN_LOGIN_AMP_TOKEN:Ljava/lang/String; = "&token="

.field public static final CODE_XML_FILE_NAME:Ljava/lang/String; = "code.xml"

.field public static final COLLISION_PNG_META_TAG_KEY:Ljava/lang/String; = "CollisionPolygonVertices"

.field public static final COLLISION_POLYGON_CREATION_EPSILON:F = 10.0f

.field public static final COLLISION_POLYGON_METADATA_PATTERN:Ljava/lang/String; = "((((\\d+\\.\\d+);(\\d+\\.\\d+);){2,}(\\d+\\.\\d+);(\\d+\\.\\d+))\\|)*((\\d+\\.\\d+);(\\d+\\.\\d+);){2,}(\\d+\\.\\d+);(\\d+\\.\\d+)"

.field public static final COLLISION_VERTEX_LIMIT:I = 0x64

.field public static final COLLISION_WITH_FINGER_TOUCH_RADIUS:F = 50.0f

.field public static final COORDINATE_TRANSFORMATION_OFFSET:D = 0.5

.field public static final CURRENT_CATROBAT_LANGUAGE_VERSION:D = 1.11

.field public static final CURRENT_OAUTH_PROVIDER:Ljava/lang/String; = "PROVIDER"

.field public static final DATE_FORMAT_DEFAULT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static final DATE_FORMAT_ISO_8601:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field public static final DEFAULT_IMAGE_EXTENSION:Ljava/lang/String; = ".png"

.field public static final DEFAULT_SOUND_EXTENSION:Ljava/lang/String; = ".wav"

.field public static final DEVICE_LIST_JSON_FILENAME:Ljava/lang/String; = "DeviceLists.json"

.field public static final DEVICE_VARIABLE_JSON_FILENAME:Ljava/lang/String; = "DeviceVariables.json"

.field public static final DOWNLOAD_DIRECTORY:Ljava/io/File;

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final EMBROIDERY_FILE_EXTENSION:Ljava/lang/String; = ".dst"

.field public static final ERROR_AUTHENTICATION_REQUIRED:I = 0x1ff

.field public static final ERROR_BAD_REQUEST:I = 0x190

.field public static final ERROR_SERVER_ERROR:I = 0x1f4

.field public static final ERROR_TIMEOUT:I = 0x1f8

.field public static final ERROR_TOO_MANY_REQUESTS:I = 0x1ad

.field public static final EV3:I = 0x1

.field public static final EXIFTAGS_FOR_EXIFREMOVER:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTERNAL_STORAGE_ROOT_EXPORT_DIRECTORY:Ljava/io/File;

.field public static final EXTRA_LANGUAGE:Ljava/lang/String; = "language"

.field public static final EXTRA_PICTURE_PATH_POCKET_PAINT:Ljava/lang/String; = "org.catrobat.extra.PAINTROID_PICTURE_PATH"

.field public static final EXTRA_PROJECT_DESCRIPTION:Ljava/lang/String; = "projectDescription"

.field public static final EXTRA_PROJECT_ID:Ljava/lang/String; = "projectId"

.field public static final EXTRA_PROJECT_NAME:Ljava/lang/String; = "projectName"

.field public static final EXTRA_PROJECT_PATH:Ljava/lang/String; = "projectPath"

.field public static final EXTRA_PROVIDER:Ljava/lang/String; = "provider"

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "resultReceiver"

.field public static final EXTRA_SCENE_NAMES:Ljava/lang/String; = "sceneNames"

.field public static final EXTRA_UPLOAD_NAME:Ljava/lang/String; = "uploadName"

.field public static final EXTRA_USER_EMAIL:Ljava/lang/String; = "userEmail"

.field public static final FLAVOR_DEFAULT:Ljava/lang/String; = "PocketCode"

.field public static final GOOGLE_EMAIL:Ljava/lang/String; = "GOOGLE_EMAIL"

.field public static final GOOGLE_EXCHANGE_CODE:Ljava/lang/String; = "GOOGLE_EXCHANGE_CODE"

.field public static final GOOGLE_ID:Ljava/lang/String; = "GOOGLE_ID"

.field public static final GOOGLE_ID_TOKEN:Ljava/lang/String; = "GOOGLE_ID_TOKEN"

.field public static final GOOGLE_LOCALE:Ljava/lang/String; = "GOOGLE_LOCALE"

.field public static final GOOGLE_PLUS:Ljava/lang/String; = "GPLUS"

.field public static final GOOGLE_USERNAME:Ljava/lang/String; = "GOOGLE_USERNAME"

.field public static final HUAWEI_APP_GALLERY_LINK:Ljava/lang/String; = "https://catrob.at/HuaweiAppGallery"

.field public static final IMAGE_DIRECTORY_NAME:Ljava/lang/String; = "images"

.field public static final INTENT_REQUEST_CODE_CONVERT:I = 0x1

.field public static final INTENT_SCRATCH_PROGRAM_DATA:Ljava/lang/String; = "scratchProgramData"

.field public static final INVALID_SCRATCH_PROGRAM_ID:J = 0x0L

.field public static final JPEG_IMAGE_EXTENSION:Ljava/lang/String; = ".jpg"

.field public static final JSON_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final JSON_INDENTATION:I = 0x4

.field public static final LINE_SPACING_BUBBLES:I = 0x3

.field public static final LOCALE:Ljava/lang/String; = "locale"

.field public static final MAIN_URL_HTTPS:Ljava/lang/String; = "https://share.catrob.at"

.field private static final MAIN_URL_PRODUCTION:Ljava/lang/String; = "https://share.catrob.at"

.field public static final MAX_FILE_NAME_LENGTH:I = 0x7f

.field public static final MAX_NUMBER_OF_CHECKED_TAGS:I = 0x3

.field public static final MAX_PERCENT:I = 0x64

.field public static final MAX_STRING_LENGTH_BUBBLES:I = 0x10

.field public static final MEDIA_LIBRARY_CACHE_DIR:Ljava/io/File;

.field public static final NFC:Ljava/lang/String; = "NFC"

.field public static final NO_EMAIL:Ljava/lang/String; = "no_email"

.field public static final NO_GOOGLE_EMAIL:Ljava/lang/String; = "NO_GOOGLE_EMAIL"

.field public static final NO_GOOGLE_EXCHANGE_CODE:Ljava/lang/String; = "NO_GOOGLE_EXCHANGE_CODE"

.field public static final NO_GOOGLE_ID:Ljava/lang/String; = "NO_GOOGLE_ID"

.field public static final NO_GOOGLE_ID_TOKEN:Ljava/lang/String; = "NO_GOOGLE_ID_TOKEN"

.field public static final NO_GOOGLE_LOCALE:Ljava/lang/String; = "NO_GOOGLE_LOCALE"

.field public static final NO_GOOGLE_USERNAME:Ljava/lang/String; = "NO_GOOGLE_USERNAME"

.field public static final NO_MEDIA_FILE:Ljava/lang/String; = ".nomedia"

.field public static final NO_OAUTH_PROVIDER:Ljava/lang/String; = "NATIVE"

.field public static final NO_TOKEN:Ljava/lang/String; = "no_token"

.field public static final NO_USERNAME:Ljava/lang/String; = "no_username"

.field public static final NXT:I = 0x0

.field public static final OFFSET_FOR_THINK_BUBBLES_AND_ARROW:I = 0x28

.field public static final PADDING_TOP:I = 0x28

.field public static final PERMISSIONS_FILE_NAME:Ljava/lang/String; = "permissions.txt"

.field public static final PLATFORM_DEFAULT:Ljava/lang/String; = "Android"

.field public static final PLATFORM_NAME:Ljava/lang/String; = "Android"

.field public static final PLAY_STORE_PAGE_LINK:Ljava/lang/String; = "https://play.google.com/store/apps/details?id="

.field public static final POCKET_CODE_EXTERNAL_EXPORT_STORAGE_FOLDER_NAME:Ljava/lang/String; = "Catrobat"

.field public static final POCKET_PAINT_CACHE_DIR:Ljava/io/File;

.field public static final POCKET_PAINT_INTENT_ACTIVITY_NAME:Ljava/lang/String; = "org.catrobat.paintroid.MainActivity"

.field public static final PORT_1:I = 0x0

.field public static final PORT_2:I = 0x1

.field public static final PORT_3:I = 0x2

.field public static final PORT_4:I = 0x3

.field public static final PREF_PROJECTNAME_KEY:Ljava/lang/String; = "projectName"

.field public static final RASPI_BROADCAST_PREFIX:Ljava/lang/String; = "#RASPI#"

.field public static final RECENT_BRICKS_DIRECTORY:Ljava/lang/String; = "recent_bricks"

.field public static final RECENT_BRICKS_FILE:Ljava/lang/String; = "recent_bricks.json"

.field public static final REMIX_URL_PREFIX_INDICATOR:C = '['

.field public static final REMIX_URL_PREFIX_REPLACE_INDICATOR:C = '('

.field public static final REMIX_URL_REPLACE_SEPARATOR:C = ';'

.field public static final REMIX_URL_SEPARATOR:C = ','

.field public static final REMIX_URL_SUFIX_INDICATOR:C = ']'

.field public static final REMIX_URL_SUFIX_REPLACE_INDICATOR:C = ')'

.field public static final REMOTE_DISPLAY_APP_ID:Ljava/lang/String; = "CEBB9229"

.field public static final REQUEST_MOBILE:Ljava/lang/String; = "mobile"

.field public static final RESTRICTED_USER:Ljava/lang/String; = "restricted_user"

.field public static final RETROFIT_WRITE_TIMEOUT:J = 0xfL

.field public static final SAY_BRICK:I = 0x0

.field public static final SCRATCH_CONVERTER_API_BASE_URL:Ljava/lang/String; = "https://scratch2.catrob.at/api/v1/"

.field public static final SCRATCH_CONVERTER_API_DEFAULT_PROJECTS_URL:Ljava/lang/String; = "https://scratch2.catrob.at/api/v1/projects/"

.field public static final SCRATCH_CONVERTER_BASE_URL:Ljava/lang/String; = "https://scratch2.catrob.at/"

.field public static final SCRATCH_CONVERTER_HOST:Ljava/lang/String; = "scratch2.catrob.at"

.field public static final SCRATCH_CONVERTER_MAX_NUMBER_OF_JOBS_PER_CLIENT:I = 0x3

.field public static final SCRATCH_CONVERTER_WEB_SOCKET:Ljava/lang/String; = "wss://scratch2.catrob.at/convertersocket"

.field public static final SCRATCH_HTTP_REQUEST_MAX_NUM_OF_RETRIES:I = 0x2

.field public static final SCRATCH_HTTP_REQUEST_MIN_TIMEOUT:I = 0x3e8

.field public static final SCRATCH_IMAGE_DEFAULT_HEIGHT:I = 0x168

.field public static final SCRATCH_IMAGE_DEFAULT_WIDTH:I = 0x1e0

.field public static final SCRATCH_SEARCH_URL:Ljava/lang/String; = "https://api.scratch.mit.edu/search/projects"

.field public static final SCRATCH_SECOND_RELEASE_PUBLISHED_DATE_DAY:I = 0x9

.field public static final SCRATCH_SECOND_RELEASE_PUBLISHED_DATE_MONTH:I = 0x4

.field public static final SCRATCH_SECOND_RELEASE_PUBLISHED_DATE_YEAR:I = 0x7dd

.field public static final SCREENSHOT_AUTOMATIC_FILE_NAME:Ljava/lang/String; = "automatic_screenshot.png"

.field public static final SCREENSHOT_MANUAL_FILE_NAME:Ljava/lang/String; = "manual_screenshot.png"

.field public static final SHARE_PROJECT_URL:Ljava/lang/String; = "https://share.catrob.at/pocketcode//project/"

.field public static final SOUND_DIRECTORY_NAME:Ljava/lang/String; = "sounds"

.field public static final SOUND_RECORDER_CACHE_DIR:Ljava/io/File;

.field public static final STATUS_CODE_INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final STATUS_CODE_UPLOAD_COPY_FAILED:I = 0x1f9

.field public static final STATUS_CODE_UPLOAD_INVALID_CHECKSUM:I = 0x1f8

.field public static final STATUS_CODE_UPLOAD_MISSING_CHECKSUM:I = 0x1f7

.field public static final STATUS_CODE_UPLOAD_MISSING_DATA:I = 0x1f5

.field public static final STATUS_CODE_UPLOAD_MISSING_XML:I = 0x1fb

.field public static final STATUS_CODE_UPLOAD_OLD_CATROBAT_LANGUAGE:I = 0x206

.field public static final STATUS_CODE_UPLOAD_OLD_CATROBAT_VERSION:I = 0x207

.field public static final STATUS_CODE_UPLOAD_RENAME_FAILED:I = 0x201

.field public static final STATUS_CODE_UPLOAD_SAVE_THUMBNAIL_FAILED:I = 0x202

.field public static final STATUS_CODE_UPLOAD_UNZIP_FAILED:I = 0x1fa

.field public static final TEMP_LOOK_FILE:Ljava/io/File;

.field public static final TEXT_FILE_EXTENSION:Ljava/lang/String; = ".txt"

.field public static final TEXT_FROM_CAMERA_SENSOR_HASHCODE:I = 0x602e2c7c

.field public static final TEXT_SIZE_BUBBLE:I = 0x1e

.field public static final TEXT_TO_SPEECH_TMP_PATH:Ljava/lang/String;

.field public static final THINK_BRICK:I = 0x1

.field public static final TMP_CODE_XML_FILE_NAME:Ljava/lang/String; = "tmp_code.xml"

.field public static final TMP_DIR_NAME:Ljava/lang/String; = "tmp"

.field public static final TMP_IMAGE_FILE_NAME:Ljava/lang/String; = "image"

.field public static final TMP_PATH:Ljava/lang/String;

.field public static final TOKEN:Ljava/lang/String; = "token"

.field public static final TOKEN_COOKIE_NAME:Ljava/lang/String; = "CATRO_LOGIN_TOKEN"

.field public static final TRUSTED_DOMAINS_FILE_NAME:Ljava/lang/String; = "trustedDomains.json"

.field public static final TRUSTED_USER_DOMAINS_FILE:Ljava/io/File;

.field public static final TRUSTED_USER_DOMAINS_FILE_NAME:Ljava/lang/String; = "trustedUserDomains.json"

.field public static final TRUST_LIST_JSON_ARRAY_NAME:Ljava/lang/String; = "domains"

.field public static final UNDO_CODE_XML_FILE_NAME:Ljava/lang/String; = "undo_code.xml"

.field public static final UPDATE_DOWNLOAD_ERROR:I = 0x69

.field public static final UPDATE_DOWNLOAD_PROGRESS:I = 0x65

.field public static final UPLOAD_IMAGE_SCALE_HEIGHT:I = 0x1e0

.field public static final UPLOAD_IMAGE_SCALE_WIDTH:I = 0x1e0

.field public static final UPLOAD_RESULT_RECEIVER_RESULT_CODE:I = 0x1

.field public static final UPLOAD_URL:Ljava/lang/String; = "https://upload.catrob.at"

.field public static final USERNAME:Ljava/lang/String; = "username"

.field public static final USERNAME_COOKIE_NAME:Ljava/lang/String; = "CATRO_LOGIN_USER"

.field public static final USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (compatible; Catrobatbot/1.0; +https://catrob.at/bot)"

.field public static final WEB_REQUEST_WIKI_URL:Ljava/lang/String; = "https://catrob.at/webbricks"

.field private static final WEB_TEST_URL:Ljava/lang/String; = "null"

.field public static final WHATSAPP_URI:Ljava/lang/String; = "whatsapp://"

.field public static final ZIP_EXTENSION:Ljava/lang/String; = ".zip"

.field public static final Z_INDEX_BACKGROUND:I = 0x0

.field public static final Z_INDEX_FIRST_SPRITE:I = 0x3

.field public static final Z_INDEX_NUMBER_VIRTUAL_LAYERS:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 35

    .line 63
    new-instance v0, Ljava/io/File;

    .line 64
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Catrobat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/common/Constants;->EXTERNAL_STORAGE_ROOT_EXPORT_DIRECTORY:Ljava/io/File;

    .line 65
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 66
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/common/Constants;->DOWNLOAD_DIRECTORY:Ljava/io/File;

    .line 89
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    const-string v2, "temporary_look_file.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/common/Constants;->TEMP_LOOK_FILE:Ljava/io/File;

    .line 107
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    const-string v2, "trustedUserDomains.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/common/Constants;->TRUSTED_USER_DOMAINS_FILE:Ljava/io/File;

    .line 111
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/common/Constants;->CACHE_DIR:Ljava/io/File;

    .line 115
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/catroid/common/Constants;->CACHE_DIR:Ljava/io/File;

    const-string v2, "pocketPaint"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/common/Constants;->POCKET_PAINT_CACHE_DIR:Ljava/io/File;

    .line 116
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/catroid/common/Constants;->CACHE_DIR:Ljava/io/File;

    const-string v2, "camera"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/common/Constants;->CAMERA_CACHE_DIR:Ljava/io/File;

    .line 117
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/catroid/common/Constants;->CACHE_DIR:Ljava/io/File;

    const-string v2, "soundRecorder"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/common/Constants;->SOUND_RECORDER_CACHE_DIR:Ljava/io/File;

    .line 118
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/catroid/common/Constants;->CACHE_DIR:Ljava/io/File;

    const-string v2, "mediaLibrary"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/common/Constants;->MEDIA_LIBRARY_CACHE_DIR:Ljava/io/File;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/catrobat/catroid/common/Constants;->CACHE_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/common/Constants;->TMP_PATH:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/catrobat/catroid/common/Constants;->TMP_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/textToSpeech"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/common/Constants;->TEXT_TO_SPEECH_TMP_PATH:Ljava/lang/String;

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "Artist"

    const-string v2, "DateTime"

    const-string v3, "DateTimeOriginal"

    const-string v4, "DateTimeDigitized"

    const-string v5, "ExposureTime"

    const-string v6, "Flash"

    const-string v7, "FileSource"

    const-string v8, "GPSAltitude"

    const-string v9, "GPSAltitudeRef"

    const-string v10, "GPSAreaInformation"

    const-string v11, "GPSDateStamp"

    const-string v12, "GPSDestBearing"

    const-string v13, "GPSDestBearingRef"

    const-string v14, "GPSDestDistance"

    const-string v15, "GPSDestDistanceRef"

    const-string v16, "GPSDestLatitude"

    const-string v17, "GPSDestLatitudeRef"

    const-string v18, "GPSDestLongitude"

    const-string v19, "GPSDestLongitudeRef"

    const-string v20, "GPSLatitude"

    const-string v21, "GPSLatitudeRef"

    const-string v22, "GPSLongitude"

    const-string v23, "GPSLongitudeRef"

    const-string v24, "GPSMapDatum"

    const-string v25, "GPSSatellites"

    const-string v26, "GPSTimeStamp"

    const-string v27, "GPSProcessingMethod"

    const-string v28, "GPSDateStamp"

    const-string v29, "Make"

    const-string v30, "Model"

    const-string v31, "ImageDescription"

    const-string v32, "StripOffsets"

    const-string v33, "Software"

    const-string v34, "CameraOwnerName"

    filled-new-array/range {v1 .. v34}, [Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/catrobat/catroid/common/Constants;->EXIFTAGS_FOR_EXIFREMOVER:Ljava/util/ArrayList;

    .line 324
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
