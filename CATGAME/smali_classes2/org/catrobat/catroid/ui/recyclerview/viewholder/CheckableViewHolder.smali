.class public Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
.super Lorg/catrobat/catroid/ui/recyclerview/viewholder/ViewHolder;
.source "CheckableViewHolder.java"


# instance fields
.field public checkBox:Landroid/widget/CheckBox;

.field public settings:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 38
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ViewHolder;-><init>(Landroid/view/View;)V

    .line 39
    const v0, 0x7f0a02f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 40
    const v0, 0x7f0a05a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;->settings:Landroid/widget/ImageButton;

    .line 41
    return-void
.end method
