.class public final Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LayerAdapter.kt"

# interfaces
.implements Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/ui/LayerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LayerViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0008\u0010\u001f\u001a\u00020 H\u0002J\u0008\u0010!\u001a\u00020\u0013H\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\"\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0010\u0010#\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\u0011H\u0016J\u0008\u0010%\u001a\u00020\u001eH\u0016J\u0010\u0010&\u001a\u00020\u001e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\'\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020)H\u0016R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006*"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;",
        "Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "layerPresenter",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;",
        "(Lorg/catrobat/paintroid/ui/LayerAdapter;Landroid/view/View;Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;)V",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "currentBitmap",
        "dragHandle",
        "Landroid/widget/ImageView;",
        "imageView",
        "isSelected",
        "",
        "layerBackground",
        "Landroid/widget/LinearLayout;",
        "layerVisibilityCheckbox",
        "Landroid/widget/CheckBox;",
        "opacityEditText",
        "Landroidx/appcompat/widget/AppCompatEditText;",
        "opacitySeekBar",
        "Landroid/widget/SeekBar;",
        "view",
        "getView",
        "()Landroid/view/View;",
        "bindView",
        "",
        "getBackgroundType",
        "Lorg/catrobat/paintroid/ui/LayerAdapter$BackgroundType;",
        "getViewLayout",
        "resizeBitmap",
        "setLayerVisibilityCheckbox",
        "setTo",
        "setMergable",
        "setSelected",
        "updateImageView",
        "layer",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Layer;",
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
.field private currentBitmap:Landroid/graphics/Bitmap;

.field private final dragHandle:Landroid/widget/ImageView;

.field private final imageView:Landroid/widget/ImageView;

.field private isSelected:Z

.field private final layerBackground:Landroid/widget/LinearLayout;

.field private final layerPresenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

.field private final layerVisibilityCheckbox:Landroid/widget/CheckBox;

.field private final opacityEditText:Landroidx/appcompat/widget/AppCompatEditText;

.field private final opacitySeekBar:Landroid/widget/SeekBar;

.field final synthetic this$0:Lorg/catrobat/paintroid/ui/LayerAdapter;


# direct methods
.method public static synthetic $r8$lambda$4bi2CFZrWzDrALnBznuiM7UqRdU(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->bindView$lambda-0(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9erCERk6yGKcF0r7vyRp37L6gK8(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->bindView$lambda-2(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$b-UuO22CTJjNeI0askczrpx7zgU(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->bindView$lambda-1(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$piwrtidIF-_nZHGjtmVTuF-XChY(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->bindView$lambda-3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/catrobat/paintroid/ui/LayerAdapter;Landroid/view/View;Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerPresenter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->this$0:Lorg/catrobat/paintroid/ui/LayerAdapter;

    .line 82
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 81
    iput-object p3, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerPresenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    .line 83
    sget p1, Lorg/catrobat/paintroid/R$id;->pocketpaint_item_layer:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "itemView.findViewById(R.id.pocketpaint_item_layer)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerBackground:Landroid/widget/LinearLayout;

    .line 84
    sget p1, Lorg/catrobat/paintroid/R$id;->pocketpaint_item_layer_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "itemView.findViewById(R.\u2026etpaint_item_layer_image)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->imageView:Landroid/widget/ImageView;

    .line 85
    sget p1, Lorg/catrobat/paintroid/R$id;->pocketpaint_layer_drag_handle:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "itemView.findViewById(R.\u2026tpaint_layer_drag_handle)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->dragHandle:Landroid/widget/ImageView;

    .line 86
    sget p1, Lorg/catrobat/paintroid/R$id;->pocketpaint_layer_opacity_seekbar:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "itemView.findViewById(R.\u2026nt_layer_opacity_seekbar)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->opacitySeekBar:Landroid/widget/SeekBar;

    .line 87
    sget p1, Lorg/catrobat/paintroid/R$id;->pocketpaint_layer_opacity_value:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p3, "itemView.findViewById(R.\u2026aint_layer_opacity_value)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->opacityEditText:Landroidx/appcompat/widget/AppCompatEditText;

    .line 89
    sget p1, Lorg/catrobat/paintroid/R$id;->pocketpaint_checkbox_layer:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "itemView.findViewById(R.\u2026cketpaint_checkbox_layer)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerVisibilityCheckbox:Landroid/widget/CheckBox;

    return-void
.end method

.method public static final synthetic access$getImageView$p(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic access$getLayerPresenter$p(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;)Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerPresenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    return-object p0
.end method

.method public static final synthetic access$getOpacityEditText$p(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;)Landroidx/appcompat/widget/AppCompatEditText;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->opacityEditText:Landroidx/appcompat/widget/AppCompatEditText;

    return-object p0
.end method

.method public static final synthetic access$getOpacitySeekBar$p(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;)Landroid/widget/SeekBar;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->opacitySeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public static final synthetic access$resizeBitmap(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static final bindView$lambda-0(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerVisibilityCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 107
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerPresenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->getPosition()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->setLayerVisibility(IZ)V

    return-void
.end method

.method private static final bindView$lambda-1(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerPresenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->getPosition()I

    move-result p0

    invoke-interface {p1, p0}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->setLayerSelected(I)V

    return-void
.end method

.method private static final bindView$lambda-2(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerPresenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    invoke-interface {p0}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->onStopDragging()V

    goto :goto_0

    .line 116
    :cond_1
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerPresenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->getPosition()I

    move-result v0

    iget-object p0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0, p0}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->onStartDragging(ILandroid/view/View;)V

    :goto_0
    return p2
.end method

.method private static final bindView$lambda-3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method private final getBackgroundType()Lorg/catrobat/paintroid/ui/LayerAdapter$BackgroundType;
    .locals 3

    .line 216
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->this$0:Lorg/catrobat/paintroid/ui/LayerAdapter;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/LayerAdapter;->getPresenter()Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->getLayerCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->getAdapterPosition()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->this$0:Lorg/catrobat/paintroid/ui/LayerAdapter;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/ui/LayerAdapter;->getPresenter()Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    move-result-object v1

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->getLayerCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 217
    sget-object v0, Lorg/catrobat/paintroid/ui/LayerAdapter$BackgroundType;->CENTER:Lorg/catrobat/paintroid/ui/LayerAdapter$BackgroundType;

    return-object v0

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->this$0:Lorg/catrobat/paintroid/ui/LayerAdapter;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/LayerAdapter;->getPresenter()Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->getLayerCount()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 220
    sget-object v0, Lorg/catrobat/paintroid/ui/LayerAdapter$BackgroundType;->SINGLE:Lorg/catrobat/paintroid/ui/LayerAdapter$BackgroundType;

    return-object v0

    .line 222
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->this$0:Lorg/catrobat/paintroid/ui/LayerAdapter;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/ui/LayerAdapter;->getPresenter()Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    move-result-object v1

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->getLayerCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_2

    .line 223
    sget-object v0, Lorg/catrobat/paintroid/ui/LayerAdapter$BackgroundType;->BOTTOM:Lorg/catrobat/paintroid/ui/LayerAdapter$BackgroundType;

    return-object v0

    .line 225
    :cond_2
    sget-object v0, Lorg/catrobat/paintroid/ui/LayerAdapter$BackgroundType;->TOP:Lorg/catrobat/paintroid/ui/LayerAdapter$BackgroundType;

    return-object v0
.end method

.method private final resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 199
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x43c80000    # 400.0f

    if-le v0, v1, :cond_0

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    int-to-float v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    int-to-float v1, v2

    add-float/2addr v0, v1

    move v4, v3

    move v3, v0

    move v0, v4

    :goto_0
    float-to-int v1, v3

    float-to-int v0, v0

    const/4 v2, 0x0

    .line 206
    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "createScaledBitmap(bitma\u2026newHeight.toInt(), false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public bindView()V
    .locals 6

    .line 99
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerPresenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->getLayerItem(I)Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerPresenter:Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;

    invoke-interface {v1}, Lorg/catrobat/paintroid/contract/LayerContracts$Presenter;->getSelectedLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 101
    :goto_0
    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->setSelected(Z)V

    .line 102
    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->isVisible()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->setLayerVisibilityCheckbox(Z)V

    .line 103
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->updateImageView(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)V

    .line 105
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerVisibilityCheckbox:Landroid/widget/CheckBox;

    new-instance v4, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerBackground:Landroid/widget/LinearLayout;

    new-instance v4, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$$ExternalSyntheticLambda1;-><init>(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->dragHandle:Landroid/widget/ImageView;

    new-instance v4, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$$ExternalSyntheticLambda2;-><init>(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->opacitySeekBar:Landroid/widget/SeekBar;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getOpacityPercentage()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 124
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->opacityEditText:Landroidx/appcompat/widget/AppCompatEditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v4, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;

    const/16 v5, 0x64

    invoke-direct {v4, v3, v5}, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;-><init>(II)V

    check-cast v4, Landroid/text/InputFilter;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 125
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->opacityEditText:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-interface {v0}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getOpacityPercentage()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->opacityEditText:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v1, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$bindView$4;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$bindView$4;-><init>(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->opacitySeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 154
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->opacitySeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$bindView$6;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$bindView$6;-><init>(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;)V

    check-cast v1, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->currentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getViewLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerBackground:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->isSelected:Z

    return v0
.end method

.method public setLayerVisibilityCheckbox(Z)V
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerVisibilityCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setMergable()V
    .locals 2

    .line 213
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerBackground:Landroid/widget/LinearLayout;

    sget v1, Lorg/catrobat/paintroid/R$color;->pocketpaint_color_merge_layer:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 172
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->getBackgroundType()Lorg/catrobat/paintroid/ui/LayerAdapter$BackgroundType;

    move-result-object v0

    sget-object v1, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/LayerAdapter$BackgroundType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 176
    sget-object v0, Lorg/catrobat/paintroid/ui/LayerAdapter;->Companion:Lorg/catrobat/paintroid/ui/LayerAdapter$Companion;

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/ui/LayerAdapter$Companion;->getCenterBackground(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 175
    :cond_1
    sget-object v0, Lorg/catrobat/paintroid/ui/LayerAdapter;->Companion:Lorg/catrobat/paintroid/ui/LayerAdapter$Companion;

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/ui/LayerAdapter$Companion;->getBottomBackground(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_2
    sget-object v0, Lorg/catrobat/paintroid/ui/LayerAdapter;->Companion:Lorg/catrobat/paintroid/ui/LayerAdapter$Companion;

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/ui/LayerAdapter$Companion;->getTopBackground(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_3
    sget-object v0, Lorg/catrobat/paintroid/ui/LayerAdapter;->Companion:Lorg/catrobat/paintroid/ui/LayerAdapter$Companion;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/LayerAdapter$Companion;->getSingleBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 178
    :goto_0
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->layerBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iput-boolean p1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->isSelected:Z

    return-void
.end method

.method public updateImageView(Lorg/catrobat/paintroid/contract/LayerContracts$Layer;)V
    .locals 2

    const-string v0, "layer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    new-instance v0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$updateImageView$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder$updateImageView$1;-><init>(Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;Lorg/catrobat/paintroid/contract/LayerContracts$Layer;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/LayerAdapter$LayerViewHolder;->currentBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
