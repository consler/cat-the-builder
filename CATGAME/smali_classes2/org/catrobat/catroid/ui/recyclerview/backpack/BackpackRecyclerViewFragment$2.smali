.class Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$2;
.super Ljava/lang/Object;
.source "BackpackRecyclerViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->onItemClick(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;

.field final synthetic val$item:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;

    .line 286
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$2;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$2;"
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$2;->val$item:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 289
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$2;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$2;"
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$2;->val$item:Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->showDeleteAlert(Ljava/util/List;)V

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$2;->this$0:Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$2;->val$item:Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->unpackItems(Ljava/util/List;)V

    .line 292
    nop

    .line 296
    :goto_0
    return-void
.end method
