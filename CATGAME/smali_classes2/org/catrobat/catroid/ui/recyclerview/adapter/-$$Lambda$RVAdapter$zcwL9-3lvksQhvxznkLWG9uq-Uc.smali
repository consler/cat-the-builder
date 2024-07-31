.class public final synthetic Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$zcwL9-3lvksQhvxznkLWG9uq-Uc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;Ljava/lang/Object;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$zcwL9-3lvksQhvxznkLWG9uq-Uc;->f$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$zcwL9-3lvksQhvxznkLWG9uq-Uc;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$zcwL9-3lvksQhvxznkLWG9uq-Uc;->f$2:Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$zcwL9-3lvksQhvxznkLWG9uq-Uc;->f$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$zcwL9-3lvksQhvxznkLWG9uq-Uc;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$zcwL9-3lvksQhvxznkLWG9uq-Uc;->f$2:Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    invoke-virtual {v0, v1, v2, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->lambda$onBindViewHolder$3$RVAdapter(Ljava/lang/Object;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
