.class public Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;
.super Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
.source "ExtendedViewHolder.java"


# instance fields
.field public details:Landroid/widget/TextView;

.field public image:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 38
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;-><init>(Landroid/view/View;)V

    .line 39
    const v0, 0x7f0a03e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->image:Landroid/widget/ImageView;

    .line 40
    const v0, 0x7f0a0341

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    .line 41
    return-void
.end method
