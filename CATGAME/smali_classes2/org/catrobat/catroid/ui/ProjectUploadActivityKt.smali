.class public final Lorg/catrobat/catroid/ui/ProjectUploadActivityKt;
.super Ljava/lang/Object;
.source "ProjectUploadActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0006\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u000b\u001a\n \u000c*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "BACKGROUND_REQUEST_BRICK",
        "",
        "LICENSE_TO_PLAY_URL",
        "LOOK_REQUEST_BRICK",
        "NUMBER_OF_UPLOADED_PROJECTS",
        "OPEN_URL_BRICK",
        "PROGRAM_NAME_END_TAG",
        "PROGRAM_NAME_START_TAG",
        "PROJECT_DIR",
        "SIGN_IN_CODE",
        "",
        "TAG",
        "kotlin.jvm.PlatformType",
        "THUMBNAIL_SIZE",
        "WEB_REQUEST_BRICK",
        "WIKI_URL",
        "catroid_catroidDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final BACKGROUND_REQUEST_BRICK:Ljava/lang/String; = "BackgroundRequestBrick"

.field private static final LICENSE_TO_PLAY_URL:Ljava/lang/String; = "<a href=\'https://catrob.at/ltp\'>https://catrob.at/ltp</a>"

.field private static final LOOK_REQUEST_BRICK:Ljava/lang/String; = "LookRequestBrick"

.field public static final NUMBER_OF_UPLOADED_PROJECTS:Ljava/lang/String; = "number_of_uploaded_projects"

.field private static final OPEN_URL_BRICK:Ljava/lang/String; = "OpenUrlBrick"

.field private static final PROGRAM_NAME_END_TAG:Ljava/lang/String; = "</programName>"

.field private static final PROGRAM_NAME_START_TAG:Ljava/lang/String; = "<programName>"

.field public static final PROJECT_DIR:Ljava/lang/String; = "projectDir"

.field public static final SIGN_IN_CODE:I = 0x2a

.field private static final TAG:Ljava/lang/String;

.field private static final THUMBNAIL_SIZE:I = 0x64

.field private static final WEB_REQUEST_BRICK:Ljava/lang/String; = "WebRequestBrick"

.field private static final WIKI_URL:Ljava/lang/String; = "<a href=\'https://catrob.at/webbricks\'>https://catrob.at/webbricks</a>"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    const-class v0, Lorg/catrobat/catroid/ui/ProjectUploadActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/ProjectUploadActivityKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/catrobat/catroid/ui/ProjectUploadActivityKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
