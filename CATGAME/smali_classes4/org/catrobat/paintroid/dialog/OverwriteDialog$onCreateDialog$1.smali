.class final Lorg/catrobat/paintroid/dialog/OverwriteDialog$onCreateDialog$1;
.super Ljava/lang/Object;
.source "OverwriteDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/dialog/OverwriteDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/dialog/OverwriteDialog;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/dialog/OverwriteDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/dialog/OverwriteDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/dialog/OverwriteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "$noName_1"    # I

    .line 49
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/OverwriteDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/dialog/OverwriteDialog;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 50
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    sget-object v2, Lorg/catrobat/paintroid/dialog/OverwriteDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lorg/catrobat/paintroid/FileIO$FileType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const-string v3, "resolver"

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :cond_1
    :goto_0
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    sget-object v2, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/FileIO;->getDefaultFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lorg/catrobat/paintroid/FileIO;->getUriForFilenameInDownloadsFolder(Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 51
    :cond_2
    sget-object v1, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    sget-object v2, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/FileIO;->getDefaultFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lorg/catrobat/paintroid/FileIO;->getUriForFilenameInPicturesFolder(Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v1

    .line 50
    :goto_1
    nop

    .line 55
    .local v1, "storeImageUri":Landroid/net/Uri;
    sput-object v1, Lorg/catrobat/paintroid/FileIO;->storeImageUri:Landroid/net/Uri;

    .line 56
    iget-object v2, p0, Lorg/catrobat/paintroid/dialog/OverwriteDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/dialog/OverwriteDialog;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/paintroid/dialog/OverwriteDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/dialog/OverwriteDialog;

    invoke-static {v3}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->access$getPermission$p(Lorg/catrobat/paintroid/dialog/OverwriteDialog;)I

    move-result v3

    iget-object v4, p0, Lorg/catrobat/paintroid/dialog/OverwriteDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/dialog/OverwriteDialog;

    invoke-static {v4}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->access$isExport$p(Lorg/catrobat/paintroid/dialog/OverwriteDialog;)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->switchBetweenVersions(IZ)V

    .line 57
    iget-object v2, p0, Lorg/catrobat/paintroid/dialog/OverwriteDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/dialog/OverwriteDialog;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/dialog/OverwriteDialog;->dismiss()V

    .line 58
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "storeImageUri":Landroid/net/Uri;
    return-void
.end method
