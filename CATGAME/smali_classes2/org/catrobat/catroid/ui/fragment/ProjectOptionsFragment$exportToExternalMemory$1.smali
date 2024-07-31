.class public final Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$exportToExternalMemory$1;
.super Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;
.source "ProjectOptionsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;->exportToExternalMemory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "org/catrobat/catroid/ui/fragment/ProjectOptionsFragment$exportToExternalMemory$1",
        "Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;",
        "task",
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
.field final synthetic this$0:Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;ILjava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;
    .param p2, "$super_call_param$1"    # I
    .param p3, "$super_call_param$2"    # Ljava/util/List;
    .param p4, "$super_call_param$3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List;",
            "I)V"
        }
    .end annotation

    .line 330
    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$exportToExternalMemory$1;->this$0:Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;

    invoke-direct {p0, p2, p3, p4}, Lorg/catrobat/catroid/ui/runtimepermissions/RequiresPermissionTask;-><init>(ILjava/util/List;I)V

    return-void
.end method


# virtual methods
.method public task()V
    .locals 5

    .line 336
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$exportToExternalMemory$1;->this$0:Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;->access$getProject$p(Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;)Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, ".catrobat"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v2, Lorg/catrobat/catroid/common/Constants;->DOWNLOAD_DIRECTORY:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 338
    .local v1, "projectZip":Ljava/io/File;
    sget-object v2, Lorg/catrobat/catroid/common/Constants;->DOWNLOAD_DIRECTORY:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 339
    sget-object v2, Lorg/catrobat/catroid/common/Constants;->DOWNLOAD_DIRECTORY:Ljava/io/File;

    const-string v3, "Constants.DOWNLOAD_DIRECTORY"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 340
    return-void

    .line 342
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 343
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 345
    :cond_2
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 346
    .local v2, "projectDestination":Landroid/net/Uri;
    iget-object v3, p0, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$exportToExternalMemory$1;->this$0:Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;

    const-string v4, "projectDestination"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;->access$startAsyncProjectExport(Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;Landroid/net/Uri;)V

    .line 347
    return-void
.end method
