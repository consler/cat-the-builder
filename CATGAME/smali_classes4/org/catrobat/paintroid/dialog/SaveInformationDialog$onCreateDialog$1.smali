.class final Lorg/catrobat/paintroid/dialog/SaveInformationDialog$onCreateDialog$1;
.super Ljava/lang/Object;
.source "SaveInformationDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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
.field final synthetic this$0:Lorg/catrobat/paintroid/dialog/SaveInformationDialog;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/dialog/SaveInformationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "$noName_1"    # I

    .line 119
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/dialog/SaveInformationDialog;

    invoke-static {v0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->access$getImageName$p(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    check-cast v0, Landroid/net/Uri;

    sput-object v0, Lorg/catrobat/paintroid/FileIO;->storeImageUri:Landroid/net/Uri;

    .line 121
    nop

    .line 122
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/dialog/SaveInformationDialog;

    invoke-static {v0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->access$getPermission$p(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    sget-object v1, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    sget-object v2, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/FileIO;->getDefaultFileName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/dialog/SaveInformationDialog;

    invoke-virtual {v3}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "requireContext().contentResolver"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/catrobat/paintroid/FileIO;->checkFileExists(Lorg/catrobat/paintroid/FileIO$FileType;Ljava/lang/String;Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/dialog/SaveInformationDialog;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/dialog/SaveInformationDialog;

    invoke-static {v1}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->access$getPermission$p(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;)I

    move-result v1

    iget-object v2, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/dialog/SaveInformationDialog;

    invoke-static {v2}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->access$isExport$p(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->showOverwriteDialog(IZ)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/dialog/SaveInformationDialog;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->getPresenter()Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/dialog/SaveInformationDialog;

    invoke-static {v1}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->access$getPermission$p(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;)I

    move-result v1

    iget-object v2, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/dialog/SaveInformationDialog;

    invoke-static {v2}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->access$isExport$p(Lorg/catrobat/paintroid/dialog/SaveInformationDialog;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/catrobat/paintroid/contract/MainActivityContracts$Presenter;->switchBetweenVersions(IZ)V

    .line 127
    :goto_0
    nop

    .line 128
    iget-object v0, p0, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$onCreateDialog$1;->this$0:Lorg/catrobat/paintroid/dialog/SaveInformationDialog;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->dismiss()V

    .line 129
    return-void
.end method
