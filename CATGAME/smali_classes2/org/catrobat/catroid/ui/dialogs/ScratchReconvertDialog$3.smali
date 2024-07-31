.class Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$3;
.super Ljava/lang/Object;
.source "ScratchReconvertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;

    .line 117
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$3;->this$0:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 120
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 121
    .local v0, "positiveButton":Landroid/widget/Button;
    new-instance v1, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$3$1;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$3$1;-><init>(Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void
.end method
