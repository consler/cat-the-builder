.class final Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$onActivityCreated$1;
.super Ljava/lang/Object;
.source "MainMenuFragment.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Boolean;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "show",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Boolean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$onActivityCreated$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "show"    # Ljava/lang/Boolean;

    .line 107
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$onActivityCreated$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->access$getProgressBar$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "show"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ExtensionsKt;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 108
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$onActivityCreated$1;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
