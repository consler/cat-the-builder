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
    .locals 9

    .line 709
    new-instance v0, Landroidx/camera/core/CameraX$InternalInitState;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/CameraX$InternalInitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/CameraX$InternalInitState;->UNINITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

    .line 712
    new-instance v1, Landroidx/camera/core/CameraX$InternalInitState;

    const-string v3, "INITIALIZING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/camera/core/CameraX$InternalInitState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/camera/core/CameraX$InternalInitState;->INITIALIZING:Landroidx/camera/core/CameraX$InternalInitState;

    .line 715
    new-instance v3, Landroidx/camera/core/CameraX$InternalInitState;

    const-string v5, "INITIALIZED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/camera/core/CameraX$InternalInitState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/camera/core/CameraX$InternalInitState;->INITIALIZED:Landroidx/camera/core/CameraX$InternalInitState;

    .line 722
    new-instance v5, Landroidx/camera/core/CameraX$InternalInitState;

    const-string v7, "SHUTDOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/camera/core/CameraX$InternalInitState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/camera/core/CameraX$InternalInitState;->SHUTDOWN:Landroidx/camera/core/CameraX$InternalInitState;

    const/4 v7, 0x4

    new-array v7, v7, [Landroidx/camera/core/CameraX$InternalInitState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 707
    sput-object v7, Landroidx/camera/core/CameraX$InternalInitState;->$VALUES:[Landroidx/camera/core/CameraX$InternalInitState;

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

    .line 707
    const-class v0, Landroidx/camera/core/CameraX$InternalInitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/CameraX$InternalInitState;

    return-object p0
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
