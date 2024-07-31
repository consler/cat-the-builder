.class public final Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HorizontalProjectResponseAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter$ViewHolder;",
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
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u0018B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\nH\u0016J\u001c\u0010\u000b\u001a\u00020\u000c2\n\u0010\r\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\nH\u0016J\u001c\u0010\u000f\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\nH\u0016J\u000e\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0005J\u0014\u0010\u0015\u001a\u00020\u000c2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter$ViewHolder;",
        "()V",
        "callback",
        "Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;",
        "data",
        "",
        "Lorg/catrobat/catroid/retrofit/models/ProjectResponse;",
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
        "setCallback",
        "featuredProjectCallback",
        "setItems",
        "items",
        "",
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
.field private callback:Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    nop

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;->data:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;)Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;
    .locals 2
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;->callback:Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;

    if-nez v0, :cond_0

    const-string v1, "callback"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$setCallback$p(Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;

    .line 36
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;->callback:Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 36
    check-cast p1, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter$ViewHolder;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;

    .line 70
    .local v0, "item":Lorg/catrobat/catroid/retrofit/models/ProjectResponse;
    invoke-virtual {p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter$ViewHolder;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;->getScreenshotSmall()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/catrobat/catroid/utils/ExtensionsKt;->loadImageFromUrl(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 71
    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter$onBindViewHolder$1;

    invoke-direct {v2, p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter$onBindViewHolder$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;Lorg/catrobat/catroid/retrofit/models/ProjectResponse;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter$ViewHolder;

    .line 58
    nop

    .line 60
    nop

    .line 58
    nop

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 61
    nop

    .line 62
    nop

    .line 63
    nop

    .line 60
    const v2, 0x7f0d01ce

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v2, "LayoutInflater\n         \u2026  false\n                )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter$ViewHolder;-><init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public final setCallback(Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;)V
    .locals 1
    .param p1, "featuredProjectCallback"    # Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;

    const-string v0, "featuredProjectCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;->callback:Lorg/catrobat/catroid/ui/recyclerview/FeaturedProjectCallback;

    .line 48
    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 2
    .param p1, "items"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;->data:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/HorizontalProjectResponseAdapter;->notifyDataSetChanged()V

    .line 54
    return-void
.end method
