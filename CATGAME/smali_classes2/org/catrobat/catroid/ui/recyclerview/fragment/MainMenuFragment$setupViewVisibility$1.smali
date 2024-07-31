.class final Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$setupViewVisibility$1;
.super Ljava/lang/Object;
.source "MainMenuFragment.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->setupViewVisibility()V
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
        "Lkotlin/Triple<",
        "+",
        "Ljava/lang/Boolean;",
        "+",
        "Ljava/util/List<",
        "+",
        "Lorg/catrobat/catroid/retrofit/models/FeaturedProject;",
        ">;+",
        "Ljava/util/List<",
        "+",
        "Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012J\u0010\u0002\u001aF\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0005 \u0008*\"\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0005\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lkotlin/Triple;",
        "",
        "",
        "Lorg/catrobat/catroid/retrofit/models/FeaturedProject;",
        "Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;",
        "kotlin.jvm.PlatformType",
        "onChanged"
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

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$setupViewVisibility$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p1, Lkotlin/Triple;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$setupViewVisibility$1;->onChanged(Lkotlin/Triple;)V

    return-void
.end method

.method public final onChanged(Lkotlin/Triple;)V
    .locals 8
    .param p1, "it"    # Lkotlin/Triple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Triple<",
            "Ljava/lang/Boolean;",
            "+",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/FeaturedProject;",
            ">;+",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;",
            ">;>;)V"
        }
    .end annotation

    .line 140
    invoke-virtual {p1}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 141
    .local v0, "isConnectionActive":Z
    invoke-virtual {p1}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 142
    .local v1, "featuredProjectsList":Ljava/util/List;
    invoke-virtual {p1}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 144
    .local v2, "projectsCategoriesList":Ljava/util/List;
    nop

    .line 145
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_5

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    :goto_1
    if-nez v5, :cond_4

    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v3

    :goto_3
    if-eqz v5, :cond_5

    :cond_4
    move v5, v3

    goto :goto_4

    :cond_5
    move v5, v4

    .line 144
    :goto_4
    nop

    .line 146
    .local v5, "showNoInternetLayout":Z
    iget-object v6, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$setupViewVisibility$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;

    invoke-static {v6}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->access$getBinding$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;)Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v6

    iget-object v6, v6, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->noInternetLayout:Landroid/widget/RelativeLayout;

    const-string v7, "binding.noInternetLayout"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    invoke-static {v6, v5}, Lorg/catrobat/catroid/utils/ExtensionsKt;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 147
    if-eqz v5, :cond_6

    .line 148
    return-void

    .line 151
    :cond_6
    iget-object v6, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$setupViewVisibility$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;

    invoke-static {v6}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->access$getBinding$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;)Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v6

    iget-object v6, v6, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->categoriesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v7, "binding.categoriesRecyclerView"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/View;

    if-nez v5, :cond_7

    goto :goto_5

    :cond_7
    move v3, v4

    :goto_5
    invoke-static {v6, v3}, Lorg/catrobat/catroid/utils/ExtensionsKt;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 153
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$setupViewVisibility$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;

    invoke-static {v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->access$getFeaturedProjectsAdapter$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;)Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter;->setItems(Ljava/util/List;)V

    .line 154
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$setupViewVisibility$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;

    invoke-static {v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->access$getBinding$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;)Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;

    move-result-object v3

    iget-object v3, v3, Lorg/catrobat/catroid/databinding/FragmentMainMenuBinding;->featuredProjectsRecyclerView:Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->setItemsCount(I)V

    .line 156
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment$setupViewVisibility$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;

    invoke-static {v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;->access$getCategoriesAdapter$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/MainMenuFragment;)Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;->setItems(Ljava/util/List;)V

    .line 157
    .end local v0    # "isConnectionActive":Z
    .end local v1    # "featuredProjectsList":Ljava/util/List;
    .end local v2    # "projectsCategoriesList":Ljava/util/List;
    .end local v5    # "showNoInternetLayout":Z
    return-void
.end method
