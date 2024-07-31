.class final Lorg/catrobat/paintroid/ui/LayerAdapter$getView$1;
.super Ljava/lang/Object;
.source "LayerAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/ui/LayerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $checkBox:Landroid/widget/CheckBox;

.field final synthetic $position:I

.field final synthetic $viewHolder:Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

.field final synthetic this$0:Lorg/catrobat/paintroid/ui/LayerAdapter;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/LayerAdapter;Landroid/widget/CheckBox;ILorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$1;->this$0:Lorg/catrobat/paintroid/ui/LayerAdapter;

    iput-object p2, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$1;->$checkBox:Landroid/widget/CheckBox;

    iput p3, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$1;->$position:I

    iput-object p4, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$1;->$viewHolder:Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "it"    # Landroid/view/View;

    .line 71
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$1;->this$0:Lorg/catrobat/paintroid/ui/LayerAdapter;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/LayerAdapter;->getPresenter()Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    move-result-object v0

    .local v0, "$this$with":Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;
    const/4 v1, 0x0

    .line 72
    .local v1, "$i$a$-with-LayerAdapter$getView$1$1":I
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$1;->$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iget v2, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$1;->$position:I

    iget-object v3, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$1;->$viewHolder:Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

    invoke-interface {v0, v2, v3}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->unhideLayer(ILorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;)V

    .line 74
    iget v2, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$1;->$position:I

    invoke-interface {v0, v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->getLayerItem(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setVisible(Z)V

    goto :goto_0

    .line 76
    :cond_0
    iget v2, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$1;->$position:I

    invoke-interface {v0, v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->hideLayer(I)V

    .line 77
    iget v2, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$getView$1;->$position:I

    invoke-interface {v0, v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->getLayerItem(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->setVisible(Z)V

    .line 78
    :goto_0
    nop

    .line 79
    nop

    .line 71
    .end local v0    # "$this$with":Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;
    .end local v1    # "$i$a$-with-LayerAdapter$getView$1$1":I
    nop

    .line 80
    return-void
.end method
