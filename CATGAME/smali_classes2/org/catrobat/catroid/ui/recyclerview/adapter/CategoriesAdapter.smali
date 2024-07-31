.class public final Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CategoriesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$ViewHolder;",
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0006\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u001cB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u001c\u0010\r\u001a\u00020\u000e2\n\u0010\u000f\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000cH\u0016J\u001c\u0010\u0011\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000cH\u0016J\u0014\u0010\u0015\u001a\u00020\u000e2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0017J\u000e\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u0005J\u000e\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$ViewHolder;",
        "()V",
        "categoryTitleCallback",
        "Lorg/catrobat/catroid/ui/recyclerview/CategoryTitleCallback;",
        "data",
        "",
        "Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;",
        "projectCallback",
        "Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;",
        "getItemCount",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "setItems",
        "items",
        "",
        "setOnCategoryTitleClickCallback",
        "callback",
        "setOnProjectClickCallback",
        "featuredProjectCallback",
        "ViewHolder",
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
.field private categoryTitleCallback:Lorg/catrobat/catroid/ui/recyclerview/CategoryTitleCallback;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;",
            ">;"
        }
    .end annotation
.end field

.field private projectCallback:Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;->data:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getCategoryTitleCallback$p(Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;)Lorg/catrobat/catroid/ui/recyclerview/CategoryTitleCallback;
    .locals 2
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;->categoryTitleCallback:Lorg/catrobat/catroid/ui/recyclerview/CategoryTitleCallback;

    if-nez v0, :cond_0

    const-string v1, "categoryTitleCallback"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$setCategoryTitleCallback$p(Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;Lorg/catrobat/catroid/ui/recyclerview/CategoryTitleCallback;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/ui/recyclerview/CategoryTitleCallback;

    .line 36
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;->categoryTitleCallback:Lorg/catrobat/catroid/ui/recyclerview/CategoryTitleCallback;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 36
    check-cast p1, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$ViewHolder;I)V
    .locals 8
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$ViewHolder;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;

    .line 75
    .local v0, "item":Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;
    invoke-virtual {p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$ViewHolder;->getCategoryTitle()Landroid/widget/TextView;

    move-result-object v1

    .local v1, "$this$apply":Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 76
    .local v2, "$i$a$-apply-CategoriesAdapter$onBindViewHolder$1":I
    invoke-virtual {v0}, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->getCategory()Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;->getName()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$onBindViewHolder$$inlined$apply$lambda$1;

    invoke-direct {v3, p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$onBindViewHolder$$inlined$apply$lambda$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    nop

    .line 75
    .end local v1    # "$this$apply":Landroid/widget/TextView;
    .end local v2    # "$i$a$-apply-CategoriesAdapter$onBindViewHolder$1":I
    nop

    .line 81
    invoke-virtual {p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$ViewHolder;->getCategoryRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    .local v1, "$this$apply":Landroidx/recyclerview/widget/RecyclerView;
    const/4 v2, 0x0

    .line 82
    .local v2, "$i$a$-apply-CategoriesAdapter$onBindViewHolder$2":I
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 83
    nop

    .line 86
    nop

    .line 83
    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;

    invoke-direct {v3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;-><init>()V

    move-object v4, v3

    .local v4, "$this$apply":Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;
    const/4 v5, 0x0

    .line 84
    .local v5, "$i$a$-apply-CategoriesAdapter$onBindViewHolder$2$1":I
    invoke-virtual {v0}, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->getProjectsList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;->setItems(Ljava/util/List;)V

    .line 85
    iget-object v6, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;->projectCallback:Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;

    if-nez v6, :cond_0

    const-string v7, "projectCallback"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v4, v6}, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;->setCallback(Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;)V

    .line 86
    nop

    .line 83
    .end local v4    # "$this$apply":Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;
    .end local v5    # "$i$a$-apply-CategoriesAdapter$onBindViewHolder$2$1":I
    nop

    .line 86
    nop

    .local v3, "it":Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;
    const/4 v4, 0x0

    .line 87
    .local v4, "$i$a$-let-CategoriesAdapter$onBindViewHolder$2$2":I
    move-object v5, v3

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 88
    nop

    .line 86
    .end local v3    # "it":Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;
    .end local v4    # "$i$a$-let-CategoriesAdapter$onBindViewHolder$2$2":I
    nop

    .line 89
    nop

    .line 81
    .end local v1    # "$this$apply":Landroidx/recyclerview/widget/RecyclerView;
    .end local v2    # "$i$a$-apply-CategoriesAdapter$onBindViewHolder$2":I
    nop

    .line 90
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$ViewHolder;

    .line 63
    nop

    .line 65
    nop

    .line 63
    nop

    .line 64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 66
    nop

    .line 67
    nop

    .line 68
    nop

    .line 65
    const v2, 0x7f0d01cd

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v2, "LayoutInflater\n         \u2026  false\n                )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$ViewHolder;-><init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 2
    .param p1, "items"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;->data:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;->notifyDataSetChanged()V

    .line 59
    return-void
.end method

.method public final setOnCategoryTitleClickCallback(Lorg/catrobat/catroid/ui/recyclerview/CategoryTitleCallback;)V
    .locals 1
    .param p1, "callback"    # Lorg/catrobat/catroid/ui/recyclerview/CategoryTitleCallback;

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;->categoryTitleCallback:Lorg/catrobat/catroid/ui/recyclerview/CategoryTitleCallback;

    .line 53
    return-void
.end method

.method public final setOnProjectClickCallback(Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;)V
    .locals 1
    .param p1, "featuredProjectCallback"    # Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;

    const-string v0, "featuredProjectCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;->projectCallback:Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;

    .line 49
    return-void
.end method
