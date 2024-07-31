.class public final Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;
.super Ljava/lang/Object;
.source "ImportLaunchers.kt"

# interfaces
.implements Lorg/catrobat/catroid/ui/ImportLauncher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/ImportFromCameraLauncher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;",
        "Lorg/catrobat/catroid/ui/ImportLauncher;",
        "activity",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "(Landroidx/appcompat/app/AppCompatActivity;)V",
        "cameraImageFileName",
        "",
        "createCameraCacheDir",
        "",
        "getCacheCameraUri",
        "Landroid/net/Uri;",
        "startActivityForResult",
        "requestCode",
        "",
        "Companion",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/catroid/ui/ImportFromCameraLauncher$Companion;

.field private static final REQUEST_PERMISSIONS_CAMERA_LAUNCHER:I


# instance fields
.field private final activity:Landroidx/appcompat/app/AppCompatActivity;

.field private final cameraImageFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->Companion:Lorg/catrobat/catroid/ui/ImportFromCameraLauncher$Companion;

    .line 165
    const/16 v0, 0x12d

    sput v0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->REQUEST_PERMISSIONS_CAMERA_LAUNCHER:I

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1
    .param p1, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 124
    const-string v0, "image.jpg"

    iput-object v0, p0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->cameraImageFileName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;

    .line 122
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->activity:Landroidx/appcompat/app/AppCompatActivity;

    return-object v0
.end method

.method public static final synthetic access$getREQUEST_PERMISSIONS_CAMERA_LAUNCHER$cp()I
    .locals 1

    .line 122
    sget v0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->REQUEST_PERMISSIONS_CAMERA_LAUNCHER:I

    return v0
.end method

.method public static final getREQUEST_PERMISSIONS_CAMERA_LAUNCHER()I
    .locals 1

    sget v0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->REQUEST_PERMISSIONS_CAMERA_LAUNCHER:I

    return v0
.end method


# virtual methods
.method public final createCameraCacheDir()V
    .locals 4

    .line 135
    sget-object v0, Lorg/catrobat/catroid/common/Constants;->CAMERA_CACHE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 136
    sget-object v0, Lorg/catrobat/catroid/common/Constants;->CAMERA_CACHE_DIR:Ljava/io/File;

    const-string v1, "CAMERA_CACHE_DIR"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    return-void

    .line 137
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/catrobat/catroid/common/Constants;->CAMERA_CACHE_DIR:Ljava/io/File;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final getCacheCameraUri()Landroid/net/Uri;
    .locals 5

    .line 127
    nop

    .line 128
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->activity:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v0, Landroid/content/Context;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity.applicationContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".fileProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    new-instance v2, Ljava/io/File;

    sget-object v3, Lorg/catrobat/catroid/common/Constants;->CAMERA_CACHE_DIR:Ljava/io/File;

    iget-object v4, p0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->cameraImageFileName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    invoke-static {v0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "FileProvider.getUriForFi\u2026aImageFileName)\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public startActivityForResult(I)V
    .locals 7
    .param p1, "requestCode"    # I

    .line 142
    nop

    .line 160
    nop

    .line 142
    new-instance v6, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher$startActivityForResult$1;

    .line 143
    sget v3, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->REQUEST_PERMISSIONS_CAMERA_LAUNCHER:I

    const-string v0, "android.permission.CAMERA"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 144
    const v5, 0x7f120710

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher$startActivityForResult$1;-><init>(Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;IILjava/util/List;I)V

    .line 160
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher;->activity:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v6, v0}, Lorg/catrobat/catroid/ui/ImportFromCameraLauncher$startActivityForResult$1;->execute(Landroid/app/Activity;)V

    .line 161
    return-void
.end method
