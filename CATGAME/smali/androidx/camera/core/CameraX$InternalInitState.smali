.class final enum Landroidx/camera/core/CameraX$InternalInitState;
.super Ljava/lang/Enum;
.source "CameraX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/CameraX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InternalInitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/CameraX$InternalInitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/CameraX$InternalInitState;

.field public static final enum INITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

.field public static final enum INITIALIZING:Landroidx/camera/core/CameraX$InternalInitState;

.field public static final enum SHUTDOWN:Landroidx/camera/core/CameraX$InternalInitState;

.field public static final enum UNINITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 709
    new-instance v0, Landroidx/camera/core/CameraX$InternalInitState;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/CameraX$InternalInitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/CameraX$InternalInitState;->UNINITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

    .line 712
    new-instance v0, Landroidx/camera/core/CameraX$InternalInitState;

    const-string v1, "INITIALIZING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/camera/core/CameraX$InternalInitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/CameraX$InternalInitState;->INITIALIZING:Landroidx/camera/core/CameraX$InternalInitState;

    .line 715
    new-instance v0, Landroidx/camera/core/CameraX$InternalInitState;

    const-string v1, "INITIALIZED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/camera/core/CameraX$InternalInitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/CameraX$InternalInitState;->INITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

    .line 722
    new-instance v0, Landroidx/camera/core/CameraX$InternalInitState;

    const-string v1, "SHUTDOWN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroidx/camera/core/CameraX$InternalInitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/CameraX$InternalInitState;->SHUTDOWN:Landroidx/camera/core/CameraX$InternalInitState;

    .line 707
    const/4 v1, 0x4

    new-array v1, v1, [Landroidx/camera/core/CameraX$InternalInitState;

    sget-object v6, Landroidx/camera/core/CameraX$InternalInitState;->UNINITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

    aput-object v6, v1, v2

    sget-object v2, Landroidx/camera/core/CameraX$InternalInitState;->INITIALIZING:Landroidx/camera/core/CameraX$InternalInitState;

    aput-object v2, v1, v3

    sget-object v2, Landroidx/camera/core/CameraX$InternalInitState;->INITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Landroidx/camera/core/CameraX$InternalInitState;->$VALUES:[Landroidx/camera/core/CameraX$InternalInitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 707
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/CameraX$InternalInitState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 707
    const-class v0, Landroidx/camera/core/CameraX$InternalInitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/CameraX$InternalInitState;

    return-object v0
.end method

.method public static values()[Landroidx/camera/core/CameraX$InternalInitState;
    .locals 1

    .line 707
    sget-object v0, Landroidx/camera/core/CameraX$InternalInitState;->$VALUES:[Landroidx/camera/core/CameraX$InternalInitState;

    invoke-virtual {v0}, [Landroidx/camera/core/CameraX$InternalInitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/CameraX$InternalInitState;

    return-object v0
.end method
