.class final enum Landroidx/camera/camera2/internal/CaptureSession$State;
.super Ljava/lang/Enum;
.source "CaptureSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/CaptureSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/camera2/internal/CaptureSession$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/camera2/internal/CaptureSession$State;

.field public static final enum CLOSED:Landroidx/camera/camera2/internal/CaptureSession$State;

.field public static final enum GET_SURFACE:Landroidx/camera/camera2/internal/CaptureSession$State;

.field public static final enum INITIALIZED:Landroidx/camera/camera2/internal/CaptureSession$State;

.field public static final enum OPENED:Landroidx/camera/camera2/internal/CaptureSession$State;

.field public static final enum OPENING:Landroidx/camera/camera2/internal/CaptureSession$State;

.field public static final enum RELEASED:Landroidx/camera/camera2/internal/CaptureSession$State;

.field public static final enum RELEASING:Landroidx/camera/camera2/internal/CaptureSession$State;

.field public static final enum UNINITIALIZED:Landroidx/camera/camera2/internal/CaptureSession$State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 746
    new-instance v0, Landroidx/camera/camera2/internal/CaptureSession$State;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/internal/CaptureSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/internal/CaptureSession$State;->UNINITIALIZED:Landroidx/camera/camera2/internal/CaptureSession$State;

    .line 751
    new-instance v0, Landroidx/camera/camera2/internal/CaptureSession$State;

    const-string v1, "INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/camera/camera2/internal/CaptureSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/internal/CaptureSession$State;->INITIALIZED:Landroidx/camera/camera2/internal/CaptureSession$State;

    .line 756
    new-instance v0, Landroidx/camera/camera2/internal/CaptureSession$State;

    const-string v1, "GET_SURFACE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/camera/camera2/internal/CaptureSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/internal/CaptureSession$State;->GET_SURFACE:Landroidx/camera/camera2/internal/CaptureSession$State;

    .line 761
    new-instance v0, Landroidx/camera/camera2/internal/CaptureSession$State;

    const-string v1, "OPENING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroidx/camera/camera2/internal/CaptureSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/internal/CaptureSession$State;->OPENING:Landroidx/camera/camera2/internal/CaptureSession$State;

    .line 767
    new-instance v0, Landroidx/camera/camera2/internal/CaptureSession$State;

    const-string v1, "OPENED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroidx/camera/camera2/internal/CaptureSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/internal/CaptureSession$State;->OPENED:Landroidx/camera/camera2/internal/CaptureSession$State;

    .line 774
    new-instance v0, Landroidx/camera/camera2/internal/CaptureSession$State;

    const-string v1, "CLOSED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroidx/camera/camera2/internal/CaptureSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/internal/CaptureSession$State;->CLOSED:Landroidx/camera/camera2/internal/CaptureSession$State;

    .line 776
    new-instance v0, Landroidx/camera/camera2/internal/CaptureSession$State;

    const-string v1, "RELEASING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Landroidx/camera/camera2/internal/CaptureSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/internal/CaptureSession$State;->RELEASING:Landroidx/camera/camera2/internal/CaptureSession$State;

    .line 781
    new-instance v0, Landroidx/camera/camera2/internal/CaptureSession$State;

    const-string v1, "RELEASED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Landroidx/camera/camera2/internal/CaptureSession$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/internal/CaptureSession$State;->RELEASED:Landroidx/camera/camera2/internal/CaptureSession$State;

    .line 744
    const/16 v1, 0x8

    new-array v1, v1, [Landroidx/camera/camera2/internal/CaptureSession$State;

    sget-object v10, Landroidx/camera/camera2/internal/CaptureSession$State;->UNINITIALIZED:Landroidx/camera/camera2/internal/CaptureSession$State;

    aput-object v10, v1, v2

    sget-object v2, Landroidx/camera/camera2/internal/CaptureSession$State;->INITIALIZED:Landroidx/camera/camera2/internal/CaptureSession$State;

    aput-object v2, v1, v3

    sget-object v2, Landroidx/camera/camera2/internal/CaptureSession$State;->GET_SURFACE:Landroidx/camera/camera2/internal/CaptureSession$State;

    aput-object v2, v1, v4

    sget-object v2, Landroidx/camera/camera2/internal/CaptureSession$State;->OPENING:Landroidx/camera/camera2/internal/CaptureSession$State;

    aput-object v2, v1, v5

    sget-object v2, Landroidx/camera/camera2/internal/CaptureSession$State;->OPENED:Landroidx/camera/camera2/internal/CaptureSession$State;

    aput-object v2, v1, v6

    sget-object v2, Landroidx/camera/camera2/internal/CaptureSession$State;->CLOSED:Landroidx/camera/camera2/internal/CaptureSession$State;

    aput-object v2, v1, v7

    sget-object v2, Landroidx/camera/camera2/internal/CaptureSession$State;->RELEASING:Landroidx/camera/camera2/internal/CaptureSession$State;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Landroidx/camera/camera2/internal/CaptureSession$State;->$VALUES:[Landroidx/camera/camera2/internal/CaptureSession$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 744
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/camera2/internal/CaptureSession$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 744
    const-class v0, Landroidx/camera/camera2/internal/CaptureSession$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/internal/CaptureSession$State;

    return-object v0
.end method

.method public static values()[Landroidx/camera/camera2/internal/CaptureSession$State;
    .locals 1

    .line 744
    sget-object v0, Landroidx/camera/camera2/internal/CaptureSession$State;->$VALUES:[Landroidx/camera/camera2/internal/CaptureSession$State;

    invoke-virtual {v0}, [Landroidx/camera/camera2/internal/CaptureSession$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/camera2/internal/CaptureSession$State;

    return-object v0
.end method
