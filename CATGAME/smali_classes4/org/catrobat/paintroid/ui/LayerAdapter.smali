.class public final Lorg/catrobat/paintroid/ui/LayerAdapter;
.super Landroid/widget/BaseAdapter;
.source "LayerAdapter.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001aB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000cH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000cH\u0016J$\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000f\u001a\u00020\u000cH\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/LayerAdapter;",
        "Landroid/widget/BaseAdapter;",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Adapter;",
        "presenter",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;",
        "(Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;)V",
        "getPresenter",
        "()Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;",
        "viewHolders",
        "Landroid/util/SparseArray;",
        "Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;",
        "getCount",
        "",
        "getItem",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
        "position",
        "getItemId",
        "",
        "getView",
        "Landroid/view/View;",
        "convertView",
        "parent",
        "Landroid/view/ViewGroup;",
        "getViewHolderAt",
        "notifyDataSetChanged",
        "",
        "LayerViewHolder",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final presenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

.field private final viewHolders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;)V
    .locals 1
    .param p1, "presenter"    # Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    const-string v0, "presenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->presenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->viewHolders:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->presenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->getLayerCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/ui/LayerAdapter;->getItem(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .locals 1
    .param p1, "position"    # I

    .line 46
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->presenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->getLayerItem(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 48
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->presenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->getLayerItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPresenter()Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->presenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 57
    .local v0, "localConvertView":Lkotlin/jvm/internal/Ref$ObjectRef;
    const/4 v1, 0x0

    .line 58
    .local v1, "viewHolder":Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_0

    .line 59
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 60
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lorg/catrobat/paintroid/R$layout;->pocketpaint_item_layer:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 61
    new-instance v3, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;

    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    const-string v5, "localConvertView"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->presenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    invoke-direct {v3, v4, v6}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;-><init>(Landroid/view/View;Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;)V

    move-object v1, v3

    check-cast v1, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

    .line 62
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_0

    .line 64
    :cond_0
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object v1, v2

    check-cast v1, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

    .line 65
    :goto_0
    nop

    .line 66
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->viewHolders:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->presenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->isShown()Z

    move-result v2

    .line 68
    .local v2, "isShown":Z
    iget-object v3, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->presenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    invoke-interface {v3, p1, v1, v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->onBindLayerViewHolderAtPosition(ILorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;Z)V

    .line 69
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    sget v5, Lorg/catrobat/paintroid/R$id;->pocketpaint_checkbox_layer:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    goto :goto_1

    :cond_1
    move-object v3, v4

    .line 70
    .local v3, "checkBox":Landroid/widget/CheckBox;
    :goto_1
    if-eqz v3, :cond_2

    new-instance v5, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$1;

    invoke-direct {v5, p0, v3, p1, v1}, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$1;-><init>(Lorg/catrobat/paintroid/ui/LayerAdapter;Landroid/widget/CheckBox;ILorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;)V

    check-cast v5, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_2
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_3

    sget v4, Lorg/catrobat/paintroid/R$id;->pocketpaint_layer_drag_handle:I

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    .line 83
    .local v4, "dragHandle":Landroidx/appcompat/widget/AppCompatImageView;
    :cond_3
    if-eqz v4, :cond_4

    new-instance v5, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$2;

    invoke-direct {v5, p0, v0, p1}, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$2;-><init>(Lorg/catrobat/paintroid/ui/LayerAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    check-cast v5, Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    :cond_4
    iget-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    return-object v5

    .line 64
    .end local v2    # "isShown":Z
    .end local v3    # "checkBox":Landroid/widget/CheckBox;
    .end local v4    # "dragHandle":Landroidx/appcompat/widget/AppCompatImageView;
    :cond_5
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type org.catrobat.paintroid.contract.LayerContracts.LayerViewHolder"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getViewHolderAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;
    .locals 1
    .param p1, "position"    # I

    .line 97
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->viewHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter;->viewHolders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 52
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 53
    return-void
.end method
