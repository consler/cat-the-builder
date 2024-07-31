.class public final Lorg/catrobat/catroid/ui/ExportEmbroideryFileLauncher;
.super Ljava/lang/Object;
.source "ExportLaunchers.kt"

# interfaces
.implements Lorg/catrobat/catroid/ui/ExportLauncher;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/ExportEmbroideryFileLauncher;",
        "Lorg/catrobat/catroid/ui/ExportLauncher;",
        "activity",
        "Lorg/catrobat/catroid/stage/StageActivity;",
        "file",
        "Ljava/io/File;",
        "(Lorg/catrobat/catroid/stage/StageActivity;Ljava/io/File;)V",
        "startActivity",
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
.field private final activity:Lorg/catrobat/catroid/stage/StageActivity;

.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/stage/StageActivity;Ljava/io/File;)V
    .locals 1
    .param p1, "activity"    # Lorg/catrobat/catroid/stage/StageActivity;
    .param p2, "file"    # Ljava/io/File;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/ExportEmbroideryFileLauncher;->activity:Lorg/catrobat/catroid/stage/StageActivity;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/ExportEmbroideryFileLauncher;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public startActivity()V
    .locals 5

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/ui/ExportEmbroideryFileLauncher;->activity:Lorg/catrobat/catroid/stage/StageActivity;

    check-cast v0, Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/catrobat/catroid/ui/ExportEmbroideryFileLauncher;->activity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-virtual {v2}, Lorg/catrobat/catroid/stage/StageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".fileProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/ui/ExportEmbroideryFileLauncher;->file:Ljava/io/File;

    invoke-static {v0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 42
    .local v0, "fileUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, "shareIntent":Landroid/content/Intent;
    const-string v2, "text/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    move-object v2, v0

    check-cast v2, Landroid/os/Parcelable;

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 45
    iget-object v2, p0, Lorg/catrobat/catroid/ui/ExportEmbroideryFileLauncher;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CHOOSER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v2, "chooserIntent":Landroid/content/Intent;
    move-object v3, v1

    check-cast v3, Landroid/os/Parcelable;

    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 49
    const-string v3, "android.intent.extra.TITLE"

    const-string v4, "Share embroidery file"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object v3, p0, Lorg/catrobat/catroid/ui/ExportEmbroideryFileLauncher;->activity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/stage/StageActivity;->startActivity(Landroid/content/Intent;)V

    .line 52
    return-void
.end method
