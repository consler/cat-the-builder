.class public final Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CategoriesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;Landroid/view/View;)V",
        "categoryRecyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getCategoryRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "categoryTitle",
        "Landroid/widget/TextView;",
        "getCategoryTitle",
        "()Landroid/widget/TextView;",
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
.field private final categoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final categoryTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;
    .param p2, "itemView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$ViewHolder;->this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 39
    const v0, 0x7f0a02ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.categoryTitle)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$ViewHolder;->categoryTitle:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0a02eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.categoryRecyclerView)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$ViewHolder;->categoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final getCategoryRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$ViewHolder;->categoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final getCategoryTitle()Landroid/widget/TextView;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoriesAdapter$ViewHolder;->categoryTitle:Landroid/widget/TextView;

    return-object v0
.end method
