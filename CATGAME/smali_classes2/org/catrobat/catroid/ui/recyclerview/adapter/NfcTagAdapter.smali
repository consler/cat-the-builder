.class public Lorg/catrobat/catroid/ui/recyclerview/adapter/NfcTagAdapter;
.super Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;
.source "NfcTagAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter<",
        "Lorg/catrobat/catroid/common/NfcTagData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/NfcTagData;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/NfcTagData;>;"
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;-><init>(Ljava/util/List;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;
    .param p2, "position"    # I

    .line 43
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/NfcTagAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/common/NfcTagData;

    .line 45
    .local v0, "item":Lorg/catrobat/catroid/common/NfcTagData;
    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/NfcTagData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->image:Landroid/widget/ImageView;

    const v2, 0x7f08024d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a03d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 48
    .local v1, "ripples":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 49
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    :cond_0
    return-void
.end method
