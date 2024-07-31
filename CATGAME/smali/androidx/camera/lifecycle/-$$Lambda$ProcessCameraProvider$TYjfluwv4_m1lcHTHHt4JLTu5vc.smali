.class public final synthetic Landroidx/camera/lifecycle/-$$Lambda$ProcessCameraProvider$TYjfluwv4_m1lcHTHHt4JLTu5vc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/lifecycle/-$$Lambda$ProcessCameraProvider$TYjfluwv4_m1lcHTHHt4JLTu5vc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/lifecycle/-$$Lambda$ProcessCameraProvider$TYjfluwv4_m1lcHTHHt4JLTu5vc;

    invoke-direct {v0}, Landroidx/camera/lifecycle/-$$Lambda$ProcessCameraProvider$TYjfluwv4_m1lcHTHHt4JLTu5vc;-><init>()V

    sput-object v0, Landroidx/camera/lifecycle/-$$Lambda$ProcessCameraProvider$TYjfluwv4_m1lcHTHHt4JLTu5vc;->INSTANCE:Landroidx/camera/lifecycle/-$$Lambda$ProcessCameraProvider$TYjfluwv4_m1lcHTHHt4JLTu5vc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/camera/core/CameraX;

    invoke-static {p1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->lambda$getInstance$0(Landroidx/camera/core/CameraX;)Landroidx/camera/lifecycle/ProcessCameraProvider;

    move-result-object p1

    return-object p1
.end method
