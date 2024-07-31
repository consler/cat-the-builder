.class public final Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;
.super Landroid/widget/ListView;
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
    value = "SMAP\nDragAndDropListView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragAndDropListView.kt\norg/catrobat/paintroid/ui/dragndrop/DragAndDropListView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,212:1\n1#2:213\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 22\u00020\u00012\u00020\u0002:\u00012B\u0011\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005B\u001b\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008B#\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u00172\u0006\u0010 \u001a\u00020\nH\u0002J\u0012\u0010!\u001a\u0004\u0018\u00010\u00172\u0006\u0010\"\u001a\u00020\nH\u0002J\u0008\u0010#\u001a\u00020\u001bH\u0002J\u0010\u0010$\u001a\u00020%2\u0006\u0010\u0013\u001a\u00020\nH\u0002J\u0010\u0010&\u001a\u00020\u001b2\u0006\u0010\'\u001a\u00020\nH\u0002J\u0010\u0010(\u001a\u00020%2\u0006\u0010)\u001a\u00020*H\u0016J\u0012\u0010+\u001a\u00020\u001b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0002J\u000e\u0010,\u001a\u00020\u001b2\u0006\u0010\u0014\u001a\u00020\u0015J\u0018\u0010-\u001a\u00020\u001b2\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010.\u001a\u00020\u001bH\u0016J\u0010\u0010/\u001a\u00020\u001b2\u0006\u00100\u001a\u00020\nH\u0002J\u0008\u00101\u001a\u00020\u001bH\u0002R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;",
        "Landroid/widget/ListView;",
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
        "mergePosition",
        "offsetToCenter",
        "position",
        "presenter",
        "Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;",
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
        "handleTouchUp",
        "isPositionValid",
        "",
        "mergeItems",
        "mergeWith",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "setOffsetToCenter",
        "setPresenter",
        "startDragging",
        "stopDragging",
        "swapItems",
        "swapWith",
        "swapListItems",
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
.field private static final ALPHA_VALUE:I = 0xc0

.field private static final BRIGHTNESS_ADD_VALUE:I = 0x222222

.field private static final BRIGHTNESS_MUL_VALUE:I = 0xffffff

.field public static final Companion:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView$Companion;


# instance fields
.field private downY:F

.field private hoveringListItem:Landroid/graphics/drawable/BitmapDrawable;

.field private initialPosition:I

.field private mergePosition:I

.field private offsetToCenter:I

.field private position:I

.field private presenter:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;

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
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 61
    nop

    .line 62
    new-instance v0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView$1;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView$1;-><init>(Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;)V

    check-cast v0, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    nop

    .line 62
    new-instance v0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView$1;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView$1;-><init>(Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;)V

    check-cast v0, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 55
    nop

    .line 56
    nop

    .line 57
    nop

    .line 58
    nop

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    nop

    .line 62
    new-instance v0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView$1;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView$1;-><init>(Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;)V

    check-cast v0, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    return-void
.end method

.method public static final synthetic access$getPresenter$p(Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;)Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;

    .line 40
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->presenter:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;

    return-object v0
.end method

.method public static final synthetic access$setPresenter$p(Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;

    .line 40
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->presenter:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;

    return-void
.end method

.method private final getHoveringListItem(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 125
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 126
    new-instance v2, Landroid/graphics/LightingColorFilter;

    const v3, 0xffffff

    const v4, 0x222222

    invoke-direct {v2, v3, v4}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 127
    .local v2, "colorFilter":Landroid/graphics/LightingColorFilter;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 128
    .local v3, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v4, v2

    check-cast v4, Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 129
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->viewBounds:Landroid/graphics/Rect;

    .line 130
    if-eqz v4, :cond_0

    .local v4, "it":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 131
    .local v5, "$i$a$-let-DragAndDropListView$getHoveringListItem$1":I
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 132
    nop

    .line 130
    .end local v4    # "it":Landroid/graphics/Rect;
    .end local v5    # "$i$a$-let-DragAndDropListView$getHoveringListItem$1":I
    nop

    .line 133
    :cond_0
    const/16 v4, 0xc0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 134
    return-object v3
.end method

.method private final getItemAbove(I)Landroid/view/View;
    .locals 1
    .param p1, "itemPositionAbove"    # I

    .line 143
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->isPositionValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final getItemBelow(I)Landroid/view/View;
    .locals 1
    .param p1, "itemPositionBelow"    # I

    .line 146
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->isPositionValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final handleTouchUp()V
    .locals 3

    .line 198
    iget v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->mergePosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 199
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->presenter:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;

    if-eqz v1, :cond_1

    iget v2, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->initialPosition:I

    invoke-interface {v1, v2, v0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;->mergeItems(II)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->presenter:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->initialPosition:I

    iget v2, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->position:I

    invoke-interface {v0, v1, v2}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;->reorderItems(II)V

    .line 202
    :cond_1
    :goto_0
    nop

    .line 203
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->stopDragging()V

    .line 204
    return-void
.end method

.method private final isPositionValid(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 195
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getCount()I

    move-result v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    if-le v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private final mergeItems(I)V
    .locals 2
    .param p1, "mergeWith"    # I

    .line 158
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->presenter:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->position:I

    invoke-interface {v0, v1, p1}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;->markMergeable(II)V

    .line 159
    :cond_0
    iput p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->mergePosition:I

    .line 160
    return-void
.end method

.method private final setOffsetToCenter(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "viewBounds"    # Landroid/graphics/Rect;

    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->offsetToCenter:I

    .line 140
    return-void

    .line 138
    :cond_0
    return-void
.end method

.method private final swapItems(I)V
    .locals 3
    .param p1, "swapWith"    # I

    .line 149
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->presenter:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;

    if-eqz v0, :cond_0

    .line 213
    .local v0, "it":Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;
    const/4 v1, 0x0

    .line 149
    .local v1, "$i$a$-let-DragAndDropListView$swapItems$1":I
    iget v2, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->position:I

    invoke-interface {v0, v2, p1}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;->swapItemsVisually(II)I

    move-result v2

    iput v2, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->position:I

    .line 150
    .end local v0    # "it":Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;
    .end local v1    # "$i$a$-let-DragAndDropListView$swapItems$1":I
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :cond_1
    iget v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->position:I

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->view:Landroid/view/View;

    .line 152
    if-eqz v0, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->mergePosition:I

    .line 154
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->invalidateViews()V

    .line 155
    return-void
.end method

.method private final swapListItems()V
    .locals 17

    .line 163
    move-object/from16 v0, p0

    iget v1, v0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->position:I

    add-int/lit8 v2, v1, -0x1

    .line 164
    .local v2, "itemPositionAbove":I
    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 165
    .local v1, "itemPositionBelow":I
    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getItemBelow(I)Landroid/view/View;

    move-result-object v4

    .line 166
    .local v4, "itemBelow":Landroid/view/View;
    invoke-direct {v0, v2}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getItemAbove(I)Landroid/view/View;

    move-result-object v5

    .line 167
    .local v5, "itemAbove":Landroid/view/View;
    const/4 v6, 0x0

    .line 168
    .local v6, "canMergeUpwards":Z
    const/4 v7, 0x0

    .line 169
    .local v7, "canMergeDownwards":Z
    const/4 v8, 0x0

    .line 170
    .local v8, "isAbove":Z
    const/4 v9, 0x0

    .line 171
    .local v9, "isBelow":Z
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x0

    if-eqz v5, :cond_2

    .line 172
    iget v12, v0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->downY:F

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_0

    move v12, v3

    goto :goto_0

    :cond_0
    move v12, v11

    :goto_0
    move v9, v12

    .line 173
    iget-object v12, v0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->view:Landroid/view/View;

    if-eqz v12, :cond_2

    .local v12, "it":Landroid/view/View;
    const/4 v13, 0x0

    .line 174
    .local v13, "$i$a$-let-DragAndDropListView$swapListItems$1":I
    iget v14, v0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->downY:F

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v15

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v10

    add-float/2addr v15, v3

    cmpg-float v3, v14, v15

    if-gez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v11

    :goto_1
    move v6, v3

    .line 175
    nop

    .line 177
    .end local v12    # "it":Landroid/view/View;
    .end local v13    # "$i$a$-let-DragAndDropListView$swapListItems$1":I
    :cond_2
    if-eqz v4, :cond_5

    .line 178
    iget v3, v0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->downY:F

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v12

    cmpl-float v3, v3, v12

    if-lez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v11

    :goto_2
    move v8, v3

    .line 179
    iget-object v3, v0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->view:Landroid/view/View;

    if-eqz v3, :cond_5

    .local v3, "it":Landroid/view/View;
    const/4 v12, 0x0

    .line 180
    .local v12, "$i$a$-let-DragAndDropListView$swapListItems$2":I
    iget v13, v0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->downY:F

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v14

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v10

    sub-float/2addr v14, v15

    cmpl-float v10, v13, v14

    if-lez v10, :cond_4

    const/16 v16, 0x1

    goto :goto_3

    :cond_4
    move/from16 v16, v11

    :goto_3
    move/from16 v7, v16

    .line 181
    nop

    .line 183
    .end local v3    # "it":Landroid/view/View;
    .end local v12    # "$i$a$-let-DragAndDropListView$swapListItems$2":I
    :cond_5
    if-nez v8, :cond_a

    if-eqz v9, :cond_6

    goto :goto_6

    .line 186
    :cond_6
    if-nez v6, :cond_8

    if-eqz v7, :cond_7

    goto :goto_4

    .line 189
    :cond_7
    iget v3, v0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->mergePosition:I

    const/4 v10, -0x1

    if-eq v3, v10, :cond_c

    .line 190
    iput v10, v0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->mergePosition:I

    .line 191
    invoke-virtual/range {p0 .. p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->invalidateViews()V

    goto :goto_8

    .line 187
    :cond_8
    :goto_4
    if-eqz v6, :cond_9

    move v3, v2

    goto :goto_5

    :cond_9
    move v3, v1

    .line 188
    .local v3, "mergeWith":I
    :goto_5
    invoke-direct {v0, v3}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->mergeItems(I)V

    .end local v3    # "mergeWith":I
    goto :goto_8

    .line 184
    :cond_a
    :goto_6
    if-eqz v8, :cond_b

    move v3, v1

    goto :goto_7

    :cond_b
    move v3, v2

    .line 185
    .local v3, "swapWith":I
    :goto_7
    invoke-direct {v0, v3}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->swapItems(I)V

    .line 192
    .end local v3    # "swapWith":I
    :cond_c
    :goto_8
    nop

    .line 193
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 119
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->hoveringListItem:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->hoveringListItem:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_5

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->stopDragging()V

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->downY:F

    sub-float/2addr v0, v2

    .line 79
    .local v0, "dY":F
    add-float/2addr v2, v0

    iput v2, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->downY:F

    .line 80
    iget v3, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->offsetToCenter:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->downY:F

    .line 81
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->viewBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    .local v2, "it":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 82
    .local v3, "$i$a$-let-DragAndDropListView$onTouchEvent$1":I
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->downY:F

    float-to-int v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 83
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    iget v6, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 84
    .local v4, "top":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v4

    .line 85
    .local v5, "bottom":I
    iget-object v6, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->hoveringListItem:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_2

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v7, v4, v8, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 81
    .end local v2    # "it":Landroid/graphics/Rect;
    .end local v3    # "$i$a$-let-DragAndDropListView$onTouchEvent$1":I
    .end local v4    # "top":I
    .end local v5    # "bottom":I
    :cond_2
    nop

    .line 87
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->invalidate()V

    .line 88
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->swapListItems()V

    .end local v0    # "dY":F
    goto :goto_0

    .line 74
    :cond_3
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->handleTouchUp()V

    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->downY:F

    .line 90
    :goto_0
    nop

    .line 91
    return v1

    .line 72
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final setPresenter(Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;)V
    .locals 1
    .param p1, "presenter"    # Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;

    const-string v0, "presenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->presenter:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;

    .line 69
    return-void
.end method

.method public startDragging(ILandroid/view/View;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :cond_0
    iput-object p2, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->view:Landroid/view/View;

    .line 97
    iput p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->initialPosition:I

    .line 98
    iput p1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->position:I

    .line 99
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 100
    invoke-direct {p0, p2}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->getHoveringListItem(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->hoveringListItem:Landroid/graphics/drawable/BitmapDrawable;

    .line 101
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->viewBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->setOffsetToCenter(Landroid/graphics/Rect;)V

    .line 102
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->invalidate()V

    .line 103
    return-void
.end method

.method public stopDragging()V
    .locals 2

    .line 106
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->hoveringListItem:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->presenter:Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropPresenter;

    instance-of v1, v0, Lorg/catrobat/paintroid/presenter/LayerPresenter;

    if-eqz v1, :cond_1

    .line 108
    if-eqz v0, :cond_0

    check-cast v0, Lorg/catrobat/paintroid/presenter/LayerPresenter;

    iget v1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->mergePosition:I

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/presenter/LayerPresenter;->resetMergeColor(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.paintroid.presenter.LayerPresenter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->mergePosition:I

    .line 111
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->view:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_2
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->view:Landroid/view/View;

    .line 113
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->hoveringListItem:Landroid/graphics/drawable/BitmapDrawable;

    .line 114
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/dragndrop/DragAndDropListView;->invalidate()V

    .line 115
    return-void

    .line 106
    :cond_3
    return-void
.end method
