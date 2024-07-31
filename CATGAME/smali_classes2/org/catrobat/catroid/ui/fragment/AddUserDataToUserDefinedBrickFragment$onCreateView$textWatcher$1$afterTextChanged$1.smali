.class final Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1$afterTextChanged$1;
.super Ljava/lang/Object;
.source "AddUserDataToUserDefinedBrickFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1;->afterTextChanged(Landroid/text/Editable;)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1$afterTextChanged$1;->this$0:Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 112
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1$afterTextChanged$1;->this$0:Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment$onCreateView$textWatcher$1;->this$0:Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;->access$getScrollView$p(Lorg/catrobat/catroid/ui/fragment/AddUserDataToUserDefinedBrickFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 113
    :cond_0
    return-void
.end method
