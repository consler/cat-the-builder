.class public final synthetic Landroidx/camera/camera2/-$$Lambda$Camera2Config$mYXXnxW6sa_oF7xhp51ozRSO_ck;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/CameraDeviceSurfaceManager$Provider;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/camera2/-$$Lambda$Camera2Config$mYXXnxW6sa_oF7xhp51ozRSO_ck;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/-$$Lambda$Camera2Config$mYXXnxW6sa_oF7xhp51ozRSO_ck;

    invoke-direct {v0}, Landroidx/camera/camera2/-$$Lambda$Camera2Config$mYXXnxW6sa_oF7xhp51ozRSO_ck;-><init>()V

    sput-object v0, Landroidx/camera/camera2/-$$Lambda$Camera2Config$mYXXnxW6sa_oF7xhp51ozRSO_ck;->INSTANCE:Landroidx/camera/camera2/-$$Lambda$Camera2Config$mYXXnxW6sa_oF7xhp51ozRSO_ck;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Landroid/content/Context;)Landroidx/camera/core/impl/CameraDeviceSurfaceManager;
    .locals 0

    invoke-static {p1}, Landroidx/camera/camera2/Camera2Config;->lambda$defaultConfig$0(Landroid/content/Context;)Landroidx/camera/core/impl/CameraDeviceSurfaceManager;

    move-result-object p1

    return-object p1
.end method
