.class Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$3$1;
.super Ljava/lang/Object;
.source "ScratchReconvertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$3;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$3;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$3;

    .line 121
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$3$1;->this$1:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 124
    iget-object v0, p0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$3$1;->this$1:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$3;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog$3;->this$0:Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;->access$100(Lorg/catrobat/catroid/ui/dialogs/ScratchReconvertDialog;)Z

    .line 125
    return-void
.end method
