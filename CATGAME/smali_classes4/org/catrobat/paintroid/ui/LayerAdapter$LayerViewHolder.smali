.class public final Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;
.super Ljava/lang/Object;
.source "LayerAdapter.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/ui/LayerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LayerViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 %2\u00020\u0001:\u0001%B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u000fH\u0016J\u0008\u0010\u001c\u001a\u00020\u0019H\u0016J\u0008\u0010\u001d\u001a\u00020\u0019H\u0016J$\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0012\u0010$\u001a\u00020\u00192\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006&"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;",
        "Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "layerPresenter",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;",
        "(Landroid/view/View;Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;)V",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "currentBitmap",
        "imageView",
        "Landroid/widget/ImageView;",
        "isSelected",
        "",
        "layerBackground",
        "Landroid/widget/LinearLayout;",
        "layerVisibilityCheckbox",
        "Landroid/widget/CheckBox;",
        "view",
        "getView",
        "()Landroid/view/View;",
        "resizeBitmap",
        "setDeselected",
        "",
        "setLayerVisibilityCheckbox",
        "setTo",
        "setMergable",
        "setSelected",
        "position",
        "",
        "bottomNavigationViewHolder",
        "Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;",
        "defaultToolController",
        "Lorg/catrobat/paintroid/controller/DefaultToolController;",
        "updateImageView",
        "Companion",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$Companion;

.field private static final RESIZE_LENGTH:F = 400.0f


# instance fields
.field private currentBitmap:Landroid/graphics/Bitmap;

.field private final imageView:Landroid/widget/ImageView;

.field private isSelected:Z

.field private final itemView:Landroid/view/View;

.field private final layerBackground:Landroid/widget/LinearLayout;

.field private final layerPresenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

.field private final layerVisibilityCheckbox:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->Companion:Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "layerPresenter"    # Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerPresenter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->itemView:Landroid/view/View;

    iput-object p2, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerPresenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    .line 100
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_item_layer_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.\u2026nt_item_layer_background)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerBackground:Landroid/widget/LinearLayout;

    .line 101
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->itemView:Landroid/view/View;

    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_item_layer_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.\u2026etpaint_item_layer_image)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->imageView:Landroid/widget/ImageView;

    .line 103
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->itemView:Landroid/view/View;

    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_checkbox_layer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.\u2026cketpaint_checkbox_layer)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerVisibilityCheckbox:Landroid/widget/CheckBox;

    return-void
.end method

.method public static final synthetic access$getImageView$p(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;

    .line 99
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static final synthetic access$resizeBitmap(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 99
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private final resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "newWidth":F
    const/4 v1, 0x0

    .line 149
    .local v1, "newHeight":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    const/high16 v5, 0x43c80000    # 400.0f

    if-le v2, v3, :cond_0

    .line 150
    const/high16 v0, 0x43c80000    # 400.0f

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v5

    int-to-float v3, v4

    add-float/2addr v2, v3

    .end local v1    # "newHeight":F
    .local v2, "newHeight":F
    goto :goto_0

    .line 153
    .end local v2    # "newHeight":F
    .restart local v1    # "newHeight":F
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v5

    int-to-float v3, v4

    add-float v0, v2, v3

    .line 154
    const/high16 v2, 0x43c80000    # 400.0f

    .line 155
    .end local v1    # "newHeight":F
    .restart local v2    # "newHeight":F
    :goto_0
    nop

    .line 156
    float-to-int v1, v0

    float-to-int v3, v2

    const/4 v4, 0x0

    invoke-static {p1, v1, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v3, "Bitmap.createScaledBitma\u2026newHeight.toInt(), false)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->currentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->isSelected:Z

    return v0
.end method

.method public setDeselected()V
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerBackground:Landroid/widget/LinearLayout;

    sget v1, Lorg/catrobat/paintroid/R$color;->pocketpaint_colorPrimary:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->isSelected:Z

    .line 133
    return-void
.end method

.method public setLayerVisibilityCheckbox(Z)V
    .locals 1
    .param p1, "setTo"    # Z

    .line 160
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerVisibilityCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 161
    return-void
.end method

.method public setMergable()V
    .locals 2

    .line 163
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerBackground:Landroid/widget/LinearLayout;

    sget v1, Lorg/catrobat/paintroid/R$color;->pocketpaint_color_merge_layer:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public setSelected()V
    .locals 2

    .line 126
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerBackground:Landroid/widget/LinearLayout;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->isSelected:Z

    .line 128
    return-void
.end method

.method public setSelected(ILorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;Lorg/catrobat/paintroid/controller/DefaultToolController;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "bottomNavigationViewHolder"    # Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;
    .param p3, "defaultToolController"    # Lorg/catrobat/paintroid/controller/DefaultToolController;

    .line 117
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerPresenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->getLayerItem(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    if-eqz p3, :cond_0

    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->HAND:Lorg/catrobat/paintroid/tools/ToolType;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lorg/catrobat/paintroid/controller/DefaultToolController;->switchTool(Lorg/catrobat/paintroid/tools/ToolType;Z)V

    .line 119
    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lorg/catrobat/paintroid/tools/ToolType;->HAND:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {p2, v0}, Lorg/catrobat/paintroid/ui/viewholder/BottomNavigationViewHolder;->showCurrentTool(Lorg/catrobat/paintroid/tools/ToolType;)V

    .line 121
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerBackground:Landroid/widget/LinearLayout;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->isSelected:Z

    .line 123
    return-void
.end method

.method public updateImageView(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 138
    new-instance v0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$updateImageView$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$updateImageView$1;-><init>(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 143
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->currentBitmap:Landroid/graphics/Bitmap;

    .line 144
    return-void
.end method
