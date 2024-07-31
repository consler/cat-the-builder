.class Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment$1;
.super Ljava/lang/Object;
.source "LoginDialogFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;

    .line 77
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 80
    if-eqz p2, :cond_0

    .line 81
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->access$000(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;->access$000(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/LoginDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 85
    :goto_0
    return-void
.end method
