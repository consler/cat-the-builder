.class public final enum Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;
.super Ljava/lang/Enum;
.source "CameraCaptureMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraCaptureMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AfState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

.field public static final enum FOCUSED:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

.field public static final enum INACTIVE:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

.field public static final enum LOCKED_FOCUSED:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

.field public static final enum LOCKED_NOT_FOCUSED:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

.field public static final enum SCANNING:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

.field public static final enum UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 56
    new-instance v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    .line 59
    new-instance v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    const-string v3, "INACTIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->INACTIVE:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    .line 62
    new-instance v3, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    const-string v5, "SCANNING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->SCANNING:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    .line 65
    new-instance v5, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    const-string v7, "FOCUSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->FOCUSED:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    .line 68
    new-instance v7, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    const-string v9, "LOCKED_FOCUSED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->LOCKED_FOCUSED:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    .line 71
    new-instance v9, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    const-string v11, "LOCKED_NOT_FOCUSED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->LOCKED_NOT_FOCUSED:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    const/4 v11, 0x6

    new-array v11, v11, [Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 53
    sput-object v11, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->$VALUES:[Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;
    .locals 1

    .line 53
    const-class v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;
    .locals 1

    .line 53
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->$VALUES:[Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    invoke-virtual {v0}, [Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    return-object v0
.end method
