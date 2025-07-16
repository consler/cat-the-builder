.class public final enum Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;
.super Ljava/lang/Enum;
.source "CameraCaptureMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraCaptureMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AfMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

.field public static final enum OFF:Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

.field public static final enum ON_CONTINUOUS_AUTO:Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

.field public static final enum ON_MANUAL_AUTO:Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

.field public static final enum UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 31
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    .line 34
    new-instance v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    const-string v3, "OFF"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;->OFF:Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    .line 41
    new-instance v3, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    const-string v5, "ON_MANUAL_AUTO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;->ON_MANUAL_AUTO:Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    .line 49
    new-instance v5, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    const-string v7, "ON_CONTINUOUS_AUTO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;->ON_CONTINUOUS_AUTO:Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    const/4 v7, 0x4

    new-array v7, v7, [Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 28
    sput-object v7, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;->$VALUES:[Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;
    .locals 1

    .line 28
    const-class v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;
    .locals 1

    .line 28
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;->$VALUES:[Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    invoke-virtual {v0}, [Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;

    return-object v0
.end method
