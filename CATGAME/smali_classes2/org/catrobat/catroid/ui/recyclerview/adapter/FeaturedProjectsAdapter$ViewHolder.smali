.class public final Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FeaturedProjectsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter;
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
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "(Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter;Landroid/view/View;)V",
        "featuredProjectIV",
        "Landroid/widget/ImageView;",
        "getFeaturedProjectIV",
        "()Landroid/widget/ImageView;",
        "setFeaturedProjectIV",
        "(Landroid/widget/ImageView;)V",
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
.field private featuredProjectIV:Landroid/widget/ImageView;

.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter;
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

    .line 37
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter$ViewHolder;->this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    const v0, 0x7f0a0380

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.featuredProjectIV)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter$ViewHolder;->featuredProjectIV:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final getFeaturedProjectIV()Landroid/widget/ImageView;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter$ViewHolder;->featuredProjectIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final setFeaturedProjectIV(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "<set-?>"    # Landroid/widget/ImageView;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/FeaturedProjectsAdapter$ViewHolder;->featuredProjectIV:Landroid/widget/ImageView;

    return-void
.end method
