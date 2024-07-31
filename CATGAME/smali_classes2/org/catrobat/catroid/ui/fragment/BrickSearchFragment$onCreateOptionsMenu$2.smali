.class public final Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$2;
.super Ljava/lang/Object;
.source "BrickSearchFragment.kt"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0007H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "org/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$2",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "onScroll",
        "",
        "view",
        "Landroid/widget/AbsListView;",
        "firstVisibleItem",
        "",
        "visibleItemCount",
        "totalItemCount",
        "onScrollStateChanged",
        "scrollState",
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
.field final synthetic this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$2;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$2;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->access$getSearchView$p(Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;)Landroidx/appcompat/widget/SearchView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/ViewUtils;->hideKeyboard(Landroid/view/View;)V

    .line 117
    return-void
.end method
