.class public final Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$setupNameInputLayout$$inlined$apply$lambda$1;
.super Lorg/catrobat/catroid/merge/NewProjectNameTextWatcher;
.source "ProjectOptionsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;->setupNameInputLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/merge/NewProjectNameTextWatcher<",
        "Lorg/catrobat/catroid/common/Nameable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "org/catrobat/catroid/ui/fragment/ProjectOptionsFragment$setupNameInputLayout$1$1",
        "Lorg/catrobat/catroid/merge/NewProjectNameTextWatcher;",
        "Lorg/catrobat/catroid/common/Nameable;",
        "afterTextChanged",
        "",
        "s",
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
.field final synthetic $this_apply:Landroid/widget/EditText;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;)V
    .locals 0
    .param p1, "$receiver"    # Landroid/widget/EditText;

    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$setupNameInputLayout$$inlined$apply$lambda$1;->$this_apply:Landroid/widget/EditText;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$setupNameInputLayout$$inlined$apply$lambda$1;->this$0:Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;

    .line 114
    invoke-direct {p0}, Lorg/catrobat/catroid/merge/NewProjectNameTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .line 116
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$setupNameInputLayout$$inlined$apply$lambda$1;->this$0:Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;->access$getProject$p(Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;)Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 117
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$setupNameInputLayout$$inlined$apply$lambda$1;->$this_apply:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$setupNameInputLayout$$inlined$apply$lambda$1;->validateInput(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    nop

    .line 121
    .local v0, "error":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment$setupNameInputLayout$$inlined$apply$lambda$1;->this$0:Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;

    invoke-static {v1}, Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;->access$getBinding$p(Lorg/catrobat/catroid/ui/fragment/ProjectOptionsFragment;)Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/catrobat/catroid/databinding/FragmentProjectOptionsBinding;->projectOptionsNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v2, "binding.projectOptionsNameLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method
