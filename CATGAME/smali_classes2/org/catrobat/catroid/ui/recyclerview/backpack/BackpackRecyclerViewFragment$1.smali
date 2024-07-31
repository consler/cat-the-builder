.class Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$1;
.super Ljava/lang/Object;
.source "BackpackRecyclerViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->showDeleteAlert(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;

.field final synthetic val$selectedItems:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;

    .line 267
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$1;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$1;"
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$1;->val$selectedItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 270
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$1;, "Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$1;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment$1;->val$selectedItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/backpack/BackpackRecyclerViewFragment;->deleteItems(Ljava/util/List;)V

    .line 271
    return-void
.end method
