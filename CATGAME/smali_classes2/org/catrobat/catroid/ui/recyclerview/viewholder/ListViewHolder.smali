.class public Lorg/catrobat/catroid/ui/recyclerview/viewholder/ListViewHolder;
.super Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
.source "ListViewHolder.java"


# instance fields
.field public spinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 36
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;-><init>(Landroid/view/View;)V

    .line 37
    const v0, 0x7f0a05ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ListViewHolder;->spinner:Landroid/widget/Spinner;

    .line 38
    return-void
.end method
