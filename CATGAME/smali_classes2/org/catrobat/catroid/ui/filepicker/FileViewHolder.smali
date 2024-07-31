.class Lorg/catrobat/catroid/ui/filepicker/FileViewHolder;
.super Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
.source "FileViewHolder.java"


# instance fields
.field public subtitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 37
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    const v0, 0x7f0a0615

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/FileViewHolder;->title:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0a05e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/filepicker/FileViewHolder;->subtitle:Landroid/widget/TextView;

    .line 40
    return-void
.end method
