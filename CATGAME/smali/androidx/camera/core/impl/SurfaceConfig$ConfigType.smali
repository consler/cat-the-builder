.class public final enum Landroidx/camera/core/impl/SurfaceConfig$ConfigType;
.super Ljava/lang/Enum;
.source "SurfaceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/SurfaceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/impl/SurfaceConfig$ConfigType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

.field public static final enum JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

.field public static final enum PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

.field public static final enum RAW:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

.field public static final enum YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 84
    new-instance v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const-string v1, "PRIV"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 85
    new-instance v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const-string v3, "YUV"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 86
    new-instance v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const-string v5, "JPEG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->JPEG:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 87
    new-instance v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const-string v7, "RAW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->RAW:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    const/4 v7, 0x4

    new-array v7, v7, [Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 83
    sput-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->$VALUES:[Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/impl/SurfaceConfig$ConfigType;
    .locals 1

    .line 83
    const-class v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/impl/SurfaceConfig$ConfigType;
    .locals 1

    .line 83
    sget-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->$VALUES:[Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    invoke-virtual {v0}, [Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    return-object v0
.end method
