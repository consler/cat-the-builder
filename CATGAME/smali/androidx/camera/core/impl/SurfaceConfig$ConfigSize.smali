.class public final enum Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;
.super Ljava/lang/Enum;
.source "SurfaceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/SurfaceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field public static final enum ANALYSIS:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field public static final enum MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field public static final enum NOT_SUPPORT:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field public static final enum PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field public static final enum RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;


# instance fields
.field final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 98
    new-instance v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const-string v1, "ANALYSIS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->ANALYSIS:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 103
    new-instance v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const-string v3, "PREVIEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 108
    new-instance v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const-string v5, "RECORD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 113
    new-instance v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const-string v7, "MAXIMUM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 115
    new-instance v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const-string v9, "NOT_SUPPORT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->NOT_SUPPORT:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v9, 0x5

    new-array v9, v9, [Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 96
    sput-object v9, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->$VALUES:[Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    iput p3, p0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;
    .locals 1

    .line 96
    const-class v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;
    .locals 1

    .line 96
    sget-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->$VALUES:[Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-virtual {v0}, [Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    return-object v0
.end method


# virtual methods
.method getId()I
    .locals 1

    .line 124
    iget v0, p0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->mId:I

    return v0
.end method
