.class Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$2;
.super Ljava/lang/Object;
.source "ScratchReconvertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 101
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$2;->this$0:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 104
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$2;->this$0:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->access$100(Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;)Z

    .line 105
    return-void
.end method
