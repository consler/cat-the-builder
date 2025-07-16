.class public final Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;
.super Ljava/lang/Object;
.source "OpenRasterFileFormatConversion.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;",
        "",
        "()V",
        "Companion",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final COMPRESS_QUALITY:I = 0x64

.field public static final Companion:Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion$Companion;

.field private static final DATE_DIVIDER:I = 0x3e8

.field private static final ORA_VERSION:Ljava/lang/String; = "0.0.2"

.field private static final TAG:Ljava/lang/String;

.field private static final THUMBNAIL_HEIGHT:I = 0x100

.field private static final THUMBNAIL_WIDTH:I = 0x100

.field private static mainActivity:Lorg/catrobat/paintroid/MainActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;->Companion:Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion$Companion;

    const-string v0, "OpenRasterFileFormatConversion"

    .line 65
    sput-object v0, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static final synthetic access$getMainActivity$cp()Lorg/catrobat/paintroid/MainActivity;
    .locals 1

    .line 59
    sget-object v0, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setMainActivity$cp(Lorg/catrobat/paintroid/MainActivity;)V
    .locals 0

    .line 59
    sput-object p0, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;->mainActivity:Lorg/catrobat/paintroid/MainActivity;

    return-void
.end method
