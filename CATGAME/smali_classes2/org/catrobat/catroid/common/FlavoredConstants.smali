.class public final Lorg/catrobat/catroid/common/FlavoredConstants;
.super Ljava/lang/Object;
.source "FlavoredConstants.java"


# static fields
.field public static final BASE_UPLOAD_URL:Ljava/lang/String; = "https://upload.catrob.at/pocketcode/"

.field public static final BASE_URL_HTTPS:Ljava/lang/String; = "https://share.catrob.at/pocketcode/"

.field public static final CATEGORY_URL:Ljava/lang/String; = "https://share.catrob.at/pocketcode/#home-projects__"

.field public static final CATROBAT_HELP_URL:Ljava/lang/String; = "https://catrob.at/help"

.field public static final DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

.field public static final EXTERNAL_STORAGE_ROOT_DIRECTORY:Ljava/io/File;

.field public static final FLAVOR_NAME:Ljava/lang/String; = "pocketcode"

.field public static final LIBRARY_BACKGROUNDS_URL_LANDSCAPE:Ljava/lang/String; = "https://share.catrob.at/pocketcode/media-library/backgrounds-landscape"

.field public static final LIBRARY_BACKGROUNDS_URL_PORTRAIT:Ljava/lang/String; = "https://share.catrob.at/pocketcode/media-library/backgrounds-portrait"

.field public static final LIBRARY_BASE_URL:Ljava/lang/String; = "https://share.catrob.at/pocketcode/download-media/"

.field public static final LIBRARY_LOOKS_URL:Ljava/lang/String; = "https://share.catrob.at/pocketcode/media-library/looks"

.field public static final LIBRARY_OBJECT_URL:Ljava/lang/String; = "https://share.catrob.at/pocketcode/media-library/objects"

.field public static final LIBRARY_SOUNDS_URL:Ljava/lang/String; = "https://share.catrob.at/pocketcode/media-library/sounds"

.field public static final POCKET_CODE_EXTERNAL_STORAGE_FOLDER_NAME:Ljava/lang/String; = "Pocket Code"

.field public static final PRIVACY_POLICY_URL:Ljava/lang/String; = "https://catrob.at/privacypolicy"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    .line 51
    new-instance v0, Ljava/io/File;

    .line 52
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Pocket Code"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/common/FlavoredConstants;->EXTERNAL_STORAGE_ROOT_DIRECTORY:Ljava/io/File;

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
