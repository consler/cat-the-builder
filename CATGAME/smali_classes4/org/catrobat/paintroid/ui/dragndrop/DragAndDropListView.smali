.class public final Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "DragAndDropListView.kt"

# interfaces
.implements Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDragAndDropListView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragAndDropListView.kt\norg/catrobat/paintroid/ui/dragndrop/DragAndDropListView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,265:1\n1#2:266\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 A2\u00020\u00012\u00020\u0002:\u0001AB\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008B!\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0016J\u0010\u0010\'\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0012\u0010(\u001a\u0004\u0018\u00010 2\u0006\u0010)\u001a\u00020\nH\u0002J\u0012\u0010*\u001a\u0004\u0018\u00010 2\u0006\u0010+\u001a\u00020\nH\u0002J\u0012\u0010,\u001a\u00020-2\u0008\u0010.\u001a\u0004\u0018\u00010\"H\u0002J\u0008\u0010/\u001a\u00020$H\u0002J\u0010\u00100\u001a\u00020-2\u0006\u0010\u001b\u001a\u00020\nH\u0002J\u0010\u00101\u001a\u00020$2\u0006\u00102\u001a\u00020\nH\u0002J\u0008\u00103\u001a\u00020$H\u0003J\u0010\u00104\u001a\u00020-2\u0006\u00105\u001a\u000206H\u0016J\u000e\u00107\u001a\u00020$2\u0006\u00108\u001a\u00020\u0012J\u0012\u00109\u001a\u00020$2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0002J\u000e\u0010:\u001a\u00020$2\u0006\u0010\u001c\u001a\u00020\u001dJ\u0018\u0010;\u001a\u00020$2\u0006\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010<\u001a\u00020$H\u0016J\u0018\u0010=\u001a\u00020$2\u0006\u0010>\u001a\u00020\n2\u0006\u0010?\u001a\u00020-H\u0002J\u0008\u0010@\u001a\u00020$H\u0002R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0014X\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006B"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Lorg/catrobat/paintroid/ui/dragndrop/ListItemDragHandler;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attributes",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyle",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "downY",
        "",
        "hoveringListItem",
        "Landroid/graphics/drawable/BitmapDrawable;",
        "initialPosition",
        "layerAdapter",
        "Lorg/catrobat/paintroid/ui/LayerAdapter;",
        "manager",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "getManager$Paintroid_signedRelease",
        "()Landroidx/recyclerview/widget/LinearLayoutManager;",
        "setManager$Paintroid_signedRelease",
        "(Landroidx/recyclerview/widget/LinearLayoutManager;)V",
        "mergePosition",
        "offsetToCenter",
        "position",
        "presenter",
        "Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;",
        "scrollAmount",
        "view",
        "Landroid/view/View;",
        "viewBounds",
        "Landroid/graphics/Rect;",
        "dispatchDraw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "getHoveringListItem",
        "getItemAbove",
        "itemPositionAbove",
        "getItemBelow",
        "itemPositionBelow",
        "handleScroll",
        "",
        "bounds",
        "handleTouchUp",
        "isPositionValid",
        "mergeItems",
        "mergeWith",
        "notifyDataSetChanged",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "setLayerAdapter",
        "adapter",
        "setOffsetToCenter",
        "setPresenter",
        "startDragging",
        "stopDragging",
        "swapItems",
        "swapWith",
        "isScrolling",
        "swapListItems",
        "Companion",
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


# static fields
.field private static final ALPHA_VALUE:I = 0xc0

.field private static final BRIGHTNESS_ADD_VALUE:I = 0x222222

.field private static final BRIGHTNESS_MUL_VALUE:I = 0xffffff

.field public static final Companion:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView$Companion;


# instance fields
.field private downY:F

.field private hoveringListItem:Landroid/graphics/drawable/BitmapDrawable;

.field private initialPosition:I

.field private layerAdapter:Lorg/catrobat/paintroid/ui/LayerAdapter;

.field public manager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mergePosition:I

.field private offsetToCenter:I

.field private position:I

.field private presenter:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;

.field private scrollAmount:I

.field private view:Landroid/view/View;

.field private viewBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->Companion:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 72
    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->setHasFixedSize(Z)V

    .line 73
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 72
    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->setHasFixedSize(Z)V

    .line 73
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 72
    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->setHasFixedSize(Z)V

    .line 73
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    :goto_0
    return-void
.end method

.method private final getHoveringListItem(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 170
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 171
    new-instance v1, Landroid/graphics/LightingColorFilter;

    const v2, 0xffffff

    const v3, 0x222222

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 172
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 173
    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 174
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-direct {v0, v1, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->viewBounds:Landroid/graphics/Rect;

    .line 176
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    const/16 p1, 0xc0

    .line 178
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    return-object v2
.end method

.method private final getItemAbove(I)Landroid/view/View;
    .locals 2

    .line 188
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->isPositionValid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->layerAdapter:Lorg/catrobat/paintroid/ui/LayerAdapter;

    if-nez v0, :cond_0

    const-string v0, "layerAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/ui/LayerAdapter;->getViewHolderAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method private final getItemBelow(I)Landroid/view/View;
    .locals 2

    .line 191
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->isPositionValid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->layerAdapter:Lorg/catrobat/paintroid/ui/LayerAdapter;

    if-nez v0, :cond_0

    const-string v0, "layerAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/ui/LayerAdapter;->getViewHolderAt(I)Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/catrobat/paintroid/contract/LayerContracts$LayerViewHolder;->getView()Landroid/view/View;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method private final handleScroll(Landroid/graphics/Rect;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 115
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 116
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 117
    :goto_1
    iget p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->scrollAmount:I

    if-nez p1, :cond_2

    .line 118
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x5

    iput p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->scrollAmount:I

    :cond_2
    const/4 p1, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v3, -0x1

    .line 120
    invoke-virtual {p0, v3}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->canScrollVertically(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_3

    .line 121
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getManager$Paintroid_signedRelease()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 122
    iget v1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->scrollAmount:I

    neg-int v1, v1

    invoke-virtual {p0, p1, v1}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->smoothScrollBy(II)V

    .line 123
    invoke-direct {p0, v0, v2}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->swapItems(IZ)V

    return v2

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 127
    invoke-virtual {p0, v2}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getHeight()I

    move-result v1

    add-int/lit16 v1, v1, -0x12c

    if-le v0, v1, :cond_4

    .line 130
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getManager$Paintroid_signedRelease()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 131
    iget v1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->scrollAmount:I

    invoke-virtual {p0, p1, v1}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->smoothScrollBy(II)V

    .line 132
    invoke-direct {p0, v0, v2}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->swapItems(IZ)V

    return v2

    :cond_4
    return p1
.end method

.method private final handleTouchUp()V
    .locals 3

    .line 251
    iget v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->mergePosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 252
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->presenter:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->initialPosition:I

    invoke-interface {v1, v2, v0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;->mergeItems(II)V

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->presenter:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->initialPosition:I

    iget v2, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->position:I

    invoke-interface {v0, v1, v2}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;->reorderItems(II)V

    .line 256
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->stopDragging()V

    return-void
.end method

.method private final isPositionValid(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 248
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->layerAdapter:Lorg/catrobat/paintroid/ui/LayerAdapter;

    if-nez v1, :cond_0

    const-string v1, "layerAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Lorg/catrobat/paintroid/ui/LayerAdapter;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private final mergeItems(I)V
    .locals 2

    .line 205
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->presenter:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->position:I

    invoke-interface {v0, v1, p1}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;->markMergeable(II)V

    .line 206
    :goto_0
    iput p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->mergePosition:I

    return-void
.end method

.method private final notifyDataSetChanged()V
    .locals 1

    .line 211
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 212
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->layerAdapter:Lorg/catrobat/paintroid/ui/LayerAdapter;

    if-nez v0, :cond_1

    const-string v0, "layerAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Lorg/catrobat/paintroid/ui/LayerAdapter;->clearViewHolders()V

    return-void
.end method

.method private final setOffsetToCenter(Landroid/graphics/Rect;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->offsetToCenter:I

    return-void
.end method

.method private final swapItems(IZ)V
    .locals 2

    .line 194
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->presenter:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->position:I

    invoke-interface {v0, v1, p1}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;->swapItemsVisually(II)I

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->position:I

    .line 195
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->view:Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const/4 v0, -0x1

    .line 196
    iput v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->mergePosition:I

    if-eqz p2, :cond_3

    .line 198
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    iget v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->position:I

    invoke-virtual {p2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    goto :goto_2

    .line 200
    :cond_3
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->notifyDataSetChanged()V

    :goto_2
    return-void
.end method

.method private final swapListItems()V
    .locals 11

    .line 216
    iget v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->position:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 218
    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getItemBelow(I)Landroid/view/View;

    move-result-object v3

    .line 219
    invoke-direct {p0, v1}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getItemAbove(I)Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    .line 225
    iget v7, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->downY:F

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v6

    .line 226
    :goto_0
    iget-object v8, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->view:Landroid/view/View;

    if-nez v8, :cond_2

    :cond_1
    move v4, v6

    goto :goto_1

    .line 227
    :cond_2
    iget v9, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->downY:F

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    add-float/2addr v4, v8

    cmpg-float v4, v9, v4

    if-gez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v6

    move v7, v4

    :goto_1
    if-eqz v3, :cond_7

    .line 231
    iget v8, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->downY:F

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    move v8, v2

    goto :goto_2

    :cond_4
    move v8, v6

    .line 232
    :goto_2
    iget-object v9, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->view:Landroid/view/View;

    if-nez v9, :cond_6

    :cond_5
    move v2, v6

    goto :goto_3

    .line 233
    :cond_6
    iget v10, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->downY:F

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    sub-float/2addr v3, v9

    cmpl-float v3, v10, v3

    if-lez v3, :cond_5

    goto :goto_3

    :cond_7
    move v2, v6

    move v8, v2

    :goto_3
    if-nez v8, :cond_c

    if-eqz v7, :cond_8

    goto :goto_6

    :cond_8
    if-nez v4, :cond_a

    if-eqz v2, :cond_9

    goto :goto_4

    .line 242
    :cond_9
    iget v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->mergePosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 243
    iput v1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->mergePosition:I

    .line 244
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->notifyDataSetChanged()V

    goto :goto_7

    :cond_a
    :goto_4
    if-eqz v4, :cond_b

    goto :goto_5

    :cond_b
    move v1, v0

    .line 241
    :goto_5
    invoke-direct {p0, v1}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->mergeItems(I)V

    goto :goto_7

    :cond_c
    :goto_6
    if-eqz v8, :cond_d

    move v1, v0

    .line 238
    :cond_d
    invoke-direct {p0, v1, v6}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->swapItems(IZ)V

    :cond_e
    :goto_7
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 164
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->hoveringListItem:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public final getManager$Paintroid_signedRelease()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->manager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "manager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->hoveringListItem:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto/16 :goto_1

    .line 93
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->stopDragging()V

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->downY:F

    sub-float/2addr p1, v0

    add-float/2addr v0, p1

    .line 99
    iget p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->offsetToCenter:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->downY:F

    .line 100
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->viewBounds:Landroid/graphics/Rect;

    if-nez p1, :cond_3

    goto :goto_0

    .line 101
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->downY:F

    float-to-int v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 102
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v0

    .line 104
    iget-object v3, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->hoveringListItem:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4, v0, p1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 106
    :goto_0
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->viewBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->handleScroll(Landroid/graphics/Rect;)Z

    move-result p1

    .line 107
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->invalidate()V

    if-nez p1, :cond_7

    .line 108
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->swapListItems()V

    goto :goto_1

    .line 88
    :cond_5
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->handleTouchUp()V

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->downY:F

    .line 90
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->notifyDataSetChanged()V

    .line 91
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 94
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->downY:F

    :cond_7
    :goto_1
    return v1
.end method

.method public final setLayerAdapter(Lorg/catrobat/paintroid/ui/LayerAdapter;)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->layerAdapter:Lorg/catrobat/paintroid/ui/LayerAdapter;

    return-void
.end method

.method public final setManager$Paintroid_signedRelease(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->manager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method

.method public final setPresenter(Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;)V
    .locals 1

    const-string v0, "presenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->presenter:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;

    return-void
.end method

.method public startDragging(ILandroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->view:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :goto_0
    iput-object p2, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->view:Landroid/view/View;

    .line 141
    iput p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->initialPosition:I

    .line 142
    iput p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->position:I

    const/4 p1, 0x4

    .line 143
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    invoke-direct {p0, p2}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getHoveringListItem(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->hoveringListItem:Landroid/graphics/drawable/BitmapDrawable;

    .line 145
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->viewBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->setOffsetToCenter(Landroid/graphics/Rect;)V

    .line 146
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->invalidate()V

    return-void
.end method

.method public stopDragging()V
    .locals 2

    .line 150
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->hoveringListItem:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->presenter:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;

    instance-of v1, v0, Lorg/catrobat/paintroid/presenter/LayerPresenter;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 152
    check-cast v0, Lorg/catrobat/paintroid/presenter/LayerPresenter;

    iget v1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->mergePosition:I

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->resetMergeColor(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.paintroid.presenter.LayerPresenter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, -0x1

    .line 154
    iput v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->mergePosition:I

    .line 155
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->view:Landroid/view/View;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->view:Landroid/view/View;

    .line 157
    iput-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->hoveringListItem:Landroid/graphics/drawable/BitmapDrawable;

    .line 158
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->invalidate()V

    .line 159
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->notifyDataSetChanged()V

    return-void
.end method
