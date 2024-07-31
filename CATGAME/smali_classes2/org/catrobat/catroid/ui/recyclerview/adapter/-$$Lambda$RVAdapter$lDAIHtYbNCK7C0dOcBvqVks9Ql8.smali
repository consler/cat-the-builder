.class public final synthetic Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$lDAIHtYbNCK7C0dOcBvqVks9Ql8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$lDAIHtYbNCK7C0dOcBvqVks9Ql8;->f$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$lDAIHtYbNCK7C0dOcBvqVks9Ql8;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$lDAIHtYbNCK7C0dOcBvqVks9Ql8;->f$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$lDAIHtYbNCK7C0dOcBvqVks9Ql8;->f$1:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->lambda$onBindViewHolder$2$RVAdapter(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method
