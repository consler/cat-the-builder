.class public final enum Landroidx/camera/core/ImageSaver$SaveError;
.super Ljava/lang/Enum;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SaveError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/ImageSaver$SaveError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/ImageSaver$SaveError;

.field public static final enum CROP_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

.field public static final enum ENCODE_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

.field public static final enum FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

.field public static final enum UNKNOWN:Landroidx/camera/core/ImageSaver$SaveError;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 273
    new-instance v0, Landroidx/camera/core/ImageSaver$SaveError;

    const-string v1, "FILE_IO_FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/ImageSaver$SaveError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/ImageSaver$SaveError;->FILE_IO_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    .line 275
    new-instance v1, Landroidx/camera/core/ImageSaver$SaveError;

    const-string v3, "ENCODE_FAILED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/camera/core/ImageSaver$SaveError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/camera/core/ImageSaver$SaveError;->ENCODE_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    .line 277
    new-instance v3, Landroidx/camera/core/ImageSaver$SaveError;

    const-string v5, "CROP_FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/camera/core/ImageSaver$SaveError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/camera/core/ImageSaver$SaveError;->CROP_FAILED:Landroidx/camera/core/ImageSaver$SaveError;

    .line 278
    new-instance v5, Landroidx/camera/core/ImageSaver$SaveError;

    const-string v7, "UNKNOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/camera/core/ImageSaver$SaveError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/camera/core/ImageSaver$SaveError;->UNKNOWN:Landroidx/camera/core/ImageSaver$SaveError;

    const/4 v7, 0x4

    new-array v7, v7, [Landroidx/camera/core/ImageSaver$SaveError;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 271
    sput-object v7, Landroidx/camera/core/ImageSaver$SaveError;->$VALUES:[Landroidx/camera/core/ImageSaver$SaveError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 271
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/ImageSaver$SaveError;
    .locals 1

    .line 271
    const-class v0, Landroidx/camera/core/ImageSaver$SaveError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/ImageSaver$SaveError;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/ImageSaver$SaveError;
    .locals 1

    .line 271
    sget-object v0, Landroidx/camera/core/ImageSaver$SaveError;->$VALUES:[Landroidx/camera/core/ImageSaver$SaveError;

    invoke-virtual {v0}, [Landroidx/camera/core/ImageSaver$SaveError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/ImageSaver$SaveError;

    return-object v0
.end method
