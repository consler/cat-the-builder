.class Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$5;
.super Ljava/lang/Object;
.source "RegistrationDialogFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    .line 222
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$5;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 225
    if-eqz p2, :cond_0

    .line 226
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$5;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->access$600(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 227
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$5;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->access$400(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$5;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->access$600(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 230
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment$5;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;->access$400(Lorg/catrobat/catroid/ui/recyclerview/dialog/login/RegistrationDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 232
    :goto_0
    return-void
.end method
