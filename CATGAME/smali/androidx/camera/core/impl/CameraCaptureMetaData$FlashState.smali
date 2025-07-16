.class public final enum Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;
.super Ljava/lang/Enum;
.source "CameraCaptureMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraCaptureMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlashState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

.field public static final enum FIRED:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

.field public static final enum NONE:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

.field public static final enum READY:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

.field public static final enum UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 122
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    .line 125
    new-instance v1, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    const-string v3, "NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->NONE:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    .line 128
    new-instance v3, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    const-string v5, "READY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->READY:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    .line 131
    new-instance v5, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    const-string v7, "FIRED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->FIRED:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    const/4 v7, 0x4

    new-array v7, v7, [Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 119
    sput-object v7, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->$VALUES:[Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;
    .locals 1

    .line 119
    const-class v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;
    .locals 1

    .line 119
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->$VALUES:[Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    invoke-virtual {v0}, [Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    return-object v0
.end method
