.class public final Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1;
.super Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;
.source "AddUserDataToUserDefinedBrickFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "org/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1",
        "Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;",
        "afterTextChanged",
        "",
        "editable",
        "Landroid/text/Editable;",
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
.field final synthetic this$0:Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1;->this$0:Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;

    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "editable"    # Landroid/text/Editable;

    .line 107
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1;->this$0:Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;->access$getUserBrickTextView$p(Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1;->this$0:Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;->access$getDataTypeToAdd$p(Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;)Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;->INPUT:Lorg/catrobat/catroid/userbrick/UserDefinedBrickData$UserDefinedBrickDataType;

    if-ne v0, v1, :cond_4

    .line 109
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1;->this$0:Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1;->validateInput(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 111
    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1;->this$0:Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;->access$getScrollView$p(Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;)Landroid/widget/ScrollView;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1$afterTextChanged$1;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1$afterTextChanged$1;-><init>(Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 115
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1;->this$0:Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;->access$getAddUserDataUserBrickTextLayout$p(Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 116
    :cond_2
    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1;->this$0:Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;

    if-nez v0, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;->access$setNextItemEnabled(Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;Z)V

    .line 118
    .end local v0    # "error":Ljava/lang/String;
    :cond_4
    return-void
.end method
