.class public final Lorg/catrobat/catroid/ui/ImportFromCameraLauncher$Companion;
.super Ljava/lang/Object;
.source "ImportLaunchers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/ImportFromCameraLauncher$Companion;",
        "",
        "()V",
        "REQUEST_PERMISSIONS_CAMERA_LAUNCHER",
        "",
        "getREQUEST_PERMISSIONS_CAMERA_LAUNCHER$annotations",
        "getREQUEST_PERMISSIONS_CAMERA_LAUNCHER",
        "()I",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 163
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getREQUEST_PERMISSIONS_CAMERA_LAUNCHER$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getREQUEST_PERMISSIONS_CAMERA_LAUNCHER()I
    .locals 1

    .line 165
    invoke-static {}, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->access$getREQUEST_PERMISSIONS_CAMERA_LAUNCHER$cp()I

    move-result v0

    return v0
.end method
