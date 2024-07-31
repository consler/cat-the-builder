.class public final synthetic Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$RecyclerViewFragment$Q5zKqEEqd1ruJZg5CgjafLXyU2E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$RecyclerViewFragment$Q5zKqEEqd1ruJZg5CgjafLXyU2E;->f$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$RecyclerViewFragment$Q5zKqEEqd1ruJZg5CgjafLXyU2E;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$RecyclerViewFragment$Q5zKqEEqd1ruJZg5CgjafLXyU2E;->f$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/-$$Lambda$RecyclerViewFragment$Q5zKqEEqd1ruJZg5CgjafLXyU2E;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->lambda$showDeleteAlert$1$RecyclerViewFragment(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
