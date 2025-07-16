.class public final Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;
.super Ljava/lang/Object;
.source "LayerMenuViewHolder.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J\u0008\u0010\u0012\u001a\u00020\u0010H\u0016J\u0008\u0010\u0013\u001a\u00020\u0010H\u0016J\u0008\u0010\u0014\u001a\u00020\u0010H\u0016J\u0008\u0010\u0015\u001a\u00020\u0010H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008R\u0011\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;",
        "Lorg/catrobat/paintroid/contract/LayerContracts$LayerMenuViewHolder;",
        "layerLayout",
        "Lcom/google/android/material/navigation/NavigationView;",
        "(Lcom/google/android/material/navigation/NavigationView;)V",
        "layerAddButton",
        "Landroid/view/View;",
        "getLayerAddButton",
        "()Landroid/view/View;",
        "layerDeleteButton",
        "getLayerDeleteButton",
        "layerOpacityButton",
        "getLayerOpacityButton",
        "layerVisibilityButton",
        "getLayerVisibilityButton",
        "disableAddLayerButton",
        "",
        "disableLayerOpacityButton",
        "disableLayerVisibilityButton",
        "disableRemoveLayerButton",
        "enableAddLayerButton",
        "enableRemoveLayerButton",
        "isShown",
        "",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final layerAddButton:Landroid/view/View;

.field private final layerDeleteButton:Landroid/view/View;

.field private final layerLayout:Lcom/google/android/material/navigation/NavigationView;

.field private final layerOpacityButton:Landroid/view/View;

.field private final layerVisibilityButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 2

    const-string v0, "layerLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;->layerLayout:Lcom/google/android/material/navigation/NavigationView;

    .line 27
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_layer_side_nav_button_add:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "layerLayout.findViewById\u2026ayer_side_nav_button_add)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;->layerAddButton:Landroid/view/View;

    .line 28
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_layer_side_nav_button_delete:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "layerLayout.findViewById\u2026r_side_nav_button_delete)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;->layerDeleteButton:Landroid/view/View;

    .line 29
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_layer_side_nav_button_visibility:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "layerLayout.findViewById\u2026de_nav_button_visibility)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;->layerVisibilityButton:Landroid/view/View;

    .line 30
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_layer_side_nav_button_opacity:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "layerLayout.findViewById\u2026_side_nav_button_opacity)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;->layerOpacityButton:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public disableAddLayerButton()V
    .locals 2

    .line 35
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;->layerAddButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public disableLayerOpacityButton()V
    .locals 2

    .line 55
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;->layerOpacityButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public disableLayerVisibilityButton()V
    .locals 2

    .line 51
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;->layerVisibilityButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public disableRemoveLayerButton()V
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;->layerDeleteButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public enableAddLayerButton()V
    .locals 2

    .line 39
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;->layerAddButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public enableRemoveLayerButton()V
    .locals 2

    .line 47
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;->layerDeleteButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final getLayerAddButton()Landroid/view/View;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;->layerAddButton:Landroid/view/View;

    return-object v0
.end method

.method public final getLayerDeleteButton()Landroid/view/View;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;->layerDeleteButton:Landroid/view/View;

    return-object v0
.end method

.method public final getLayerOpacityButton()Landroid/view/View;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;->layerOpacityButton:Landroid/view/View;

    return-object v0
.end method

.method public final getLayerVisibilityButton()Landroid/view/View;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;->layerVisibilityButton:Landroid/view/View;

    return-object v0
.end method

.method public isShown()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/viewholder/LayerMenuViewHolder;->layerLayout:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->isShown()Z

    move-result v0

    return v0
.end method
