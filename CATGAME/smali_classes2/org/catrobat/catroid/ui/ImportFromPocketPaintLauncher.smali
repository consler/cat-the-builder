.class public final Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;
.super Ljava/lang/Object;
.source "ImportLaunchers.kt"

# interfaces
.implements Lorg/catrobat/catroid/ui/ImportLauncher;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;",
        "Lorg/catrobat/catroid/ui/ImportLauncher;",
        "activity",
        "Landroid/app/Activity;",
        "(Landroid/app/Activity;)V",
        "pocketPaintImageFileName",
        "",
        "createEmptyImageFile",
        "Ljava/io/File;",
        "getPocketPaintCacheUri",
        "Landroid/net/Uri;",
        "startActivityForResult",
        "",
        "requestCode",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final pocketPaintImageFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;->activity:Landroid/app/Activity;

    .line 60
    const-string v0, "image.png"

    iput-object v0, p0, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;->pocketPaintImageFileName:Ljava/lang/String;

    return-void
.end method

.method private final createEmptyImageFile()Ljava/io/File;
    .locals 5

    .line 71
    sget-object v0, Lorg/catrobat/catroid/common/Constants;->POCKET_PAINT_CACHE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 72
    sget-object v0, Lorg/catrobat/catroid/common/Constants;->POCKET_PAINT_CACHE_DIR:Ljava/io/File;

    const-string v1, "POCKET_PAINT_CACHE_DIR"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    const-string v1, "ProjectManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    .line 77
    .local v0, "currentProject":Lorg/catrobat/catroid/content/Project;
    nop

    .line 78
    const-string v1, "currentProject"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v1

    iget v1, v1, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenWidth:I

    .line 79
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v2

    iget v2, v2, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 77
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 81
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/io/File;

    sget-object v3, Lorg/catrobat/catroid/common/Constants;->POCKET_PAINT_CACHE_DIR:Ljava/io/File;

    iget-object v4, p0, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;->pocketPaintImageFileName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/catrobat/catroid/io/StorageOperations;->compressBitmapToPng(Landroid/graphics/Bitmap;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    const-string v3, "StorageOperations.compre\u2026ocketPaintImageFileName))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    .line 73
    .end local v0    # "currentProject":Lorg/catrobat/catroid/content/Project;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/catrobat/catroid/common/Constants;->POCKET_PAINT_CACHE_DIR:Ljava/io/File;

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


# virtual methods
.method public final getPocketPaintCacheUri()Landroid/net/Uri;
    .locals 5

    .line 63
    nop

    .line 64
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

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

    .line 66
    new-instance v2, Ljava/io/File;

    sget-object v3, Lorg/catrobat/catroid/common/Constants;->POCKET_PAINT_CACHE_DIR:Ljava/io/File;

    iget-object v4, p0, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;->pocketPaintImageFileName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    invoke-static {v0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "FileProvider.getUriForFi\u2026tImageFileName)\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public startActivityForResult(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .line 85
    nop

    .line 86
    nop

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    const-string v3, "org.catrobat.paintroid.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(\"android.intent.a\u2026NT_INTENT_ACTIVITY_NAME))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    nop

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;->createEmptyImageFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "org.catrobat.extra.PAINTROID_PICTURE_PATH"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 93
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ImportFromPocketPaintLauncher;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 95
    return-void
.end method
