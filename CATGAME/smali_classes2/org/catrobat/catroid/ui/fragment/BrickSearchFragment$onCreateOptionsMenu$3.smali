.class public final Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$3;
.super Ljava/lang/Object;
.source "BrickSearchFragment.kt"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "org/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$3",
        "Landroidx/appcompat/widget/SearchView$OnQueryTextListener;",
        "onQueryTextChange",
        "",
        "query",
        "",
        "onQueryTextSubmit",
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

    .line 131
    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$3;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$3;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->access$getSearchResults$p(Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 134
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$3;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    invoke-static {v0, p1}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->access$searchBrick(Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$3;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->access$getSearchResults$p(Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$3;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$3;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f1205bd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$3;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->access$getSearchResults$p(Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$3;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    new-instance v2, Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;

    iget-object v3, p0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$3;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    invoke-static {v3}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->access$getSearchResults$p(Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;-><init>(Ljava/util/List;)V

    invoke-static {v0, v2}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->access$setAdapter$p(Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;)V

    .line 142
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$3;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->access$getAdapter$p(Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;)Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$3;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->access$getSearchResults$p(Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 149
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$3;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    invoke-static {v0, p1}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->access$searchBrick(Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$3;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    new-instance v1, Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$3;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    invoke-static {v2}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->access$getSearchResults$p(Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->access$setAdapter$p(Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;)V

    .line 151
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$3;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->access$getAdapter$p(Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;)Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$3;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->access$getSearchResults$p(Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$3;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$3;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f1205bd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lorg/catrobat/catroid/utils/ToastUtil;->showError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 154
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment$onCreateOptionsMenu$3;->this$0:Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;

    invoke-static {v0}, Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;->access$getSearchView$p(Lorg/catrobat/catroid/ui/fragment/BrickSearchFragment;)Landroidx/appcompat/widget/SearchView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 155
    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method
