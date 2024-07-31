.class Lorg/catrobat/catroid/ui/dialogs/TermsOfUseDialogFragment$1;
.super Ljava/lang/Object;
.source "TermsOfUseDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/dialogs/TermsOfUseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/dialogs/TermsOfUseDialogFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/dialogs/TermsOfUseDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/dialogs/TermsOfUseDialogFragment;

    .line 58
    iput-object p1, p0, Lorg/catrobat/catroid/ui/dialogs/TermsOfUseDialogFragment$1;->this$0:Lorg/catrobat/catroid/ui/dialogs/TermsOfUseDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 61
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 62
    return-void
.end method
