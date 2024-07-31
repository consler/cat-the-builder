.class public Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;
.super Landroid/widget/BaseAdapter;
.source "BrickAdapter.java"

# interfaces
.implements Lorg/catrobat/catroid/ui/dragndrop/BrickAdapterInterface;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter$OnItemClickListener;,
        Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter$SelectionListener;,
        Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter$CheckBoxMode;
    }
.end annotation


# static fields
.field public static final ALL:I = 0x1

.field public static final CONNECTED_ONLY:I = 0x3

.field public static final DISABLED_BRICK_ALPHA:F = 0.8f

.field public static final NONE:I = 0x0

.field public static final SCRIPTS_ONLY:I = 0x2


# instance fields
.field private checkBoxMode:I

.field private firstConnectedItem:I

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation
.end field

.field private lastConnectedItem:I

.field private onItemClickListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter$OnItemClickListener;

.field private scripts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Script;",
            ">;"
        }
    .end annotation
.end field

.field private selectionListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter$SelectionListener;

.field private selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

.field private final sprite:Lorg/catrobat/catroid/content/Sprite;

.field private viewStateManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 85
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->checkBoxMode:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->scripts:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->firstConnectedItem:I

    .line 75
    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->lastConnectedItem:I

    .line 77
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    .line 78
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->viewStateManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;

    .line 86
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->sprite:Lorg/catrobat/catroid/content/Sprite;

    .line 87
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->updateItems(Lorg/catrobat/catroid/content/Sprite;)V

    .line 88
    return-void
.end method

.method private clearConnectedItems()V
    .locals 1

    .line 278
    const/4 v0, -0x1

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->firstConnectedItem:I

    .line 279
    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->lastConnectedItem:I

    .line 280
    return-void
.end method

.method public static colorAsCommentedOut(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "background"    # Landroid/graphics/drawable/Drawable;

    .line 174
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 175
    .local v0, "matrix":Landroid/graphics/ColorMatrix;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 176
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 177
    .local v1, "filter":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 178
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 179
    return-void
.end method

.method private getBrickAbovePosition(I)Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 1
    .param p1, "position"    # I

    .line 420
    if-lez p1, :cond_0

    .line 421
    add-int/lit8 p1, p1, -0x1

    .line 423
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick;

    return-object v0
.end method

.method private isItemOfNewScript(IZ)Z
    .locals 1
    .param p1, "brickPosition"    # I
    .param p2, "scriptSelected"    # Z

    .line 270
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->lastConnectedItem:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->firstConnectedItem:I

    if-gt p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isItemWithinConnectedRange(IZ)Z
    .locals 2
    .param p1, "brickPosition"    # I
    .param p2, "scriptSelected"    # Z

    .line 266
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->firstConnectedItem:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    add-int/2addr v0, v1

    if-le p1, v0, :cond_2

    :cond_0
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->lastConnectedItem:I

    if-gt p1, v0, :cond_1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private noConnectedItemsSelected()Z
    .locals 2

    .line 274
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->firstConnectedItem:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->lastConnectedItem:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onCheckBoxClick(I)V
    .locals 3
    .param p1, "position"    # I

    .line 200
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->isPositionSelected(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 201
    .local v0, "selected":Z
    invoke-direct {p0, v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->setSelectionTo(ZI)V

    .line 202
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->selectionListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter$SelectionListener;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->getSelectedPositions()Ljava/util/SortedSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedSet;->size()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter$SelectionListener;->onSelectionChanged(I)V

    .line 203
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->notifyDataSetChanged()V

    .line 204
    return-void
.end method

.method private selectableForCopy(IZ)Z
    .locals 1
    .param p1, "brickPosition"    # I
    .param p2, "scriptSelected"    # Z

    .line 261
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->noConnectedItemsSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->isItemWithinConnectedRange(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->isItemOfNewScript(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 261
    :goto_1
    return v0
.end method

.method private setSelectionTo(ZI)V
    .locals 11
    .param p1, "selected"    # Z
    .param p2, "position"    # I

    .line 207
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 209
    .local v0, "item":Lorg/catrobat/catroid/content/bricks/Brick;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v1, "flatItems":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-interface {v0, v1}, Lorg/catrobat/catroid/content/bricks/Brick;->addToFlatList(Ljava/util/List;)V

    .line 212
    instance-of v8, v0, Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    .line 213
    .local v8, "scriptSelected":Z
    const/4 v2, -0x1

    .line 215
    .local v2, "adapterPosition":I
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->noConnectedItemsSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    add-int/lit8 v3, p2, -0x1

    iput v3, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->firstConnectedItem:I

    .line 217
    add-int/lit8 v3, p2, 0x1

    iput v3, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->lastConnectedItem:I

    .line 220
    :cond_0
    const/4 v3, 0x0

    move v9, v2

    .end local v2    # "adapterPosition":I
    .local v3, "i":I
    .local v9, "adapterPosition":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 221
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 222
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v2, p1, v9}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->setSelectionTo(ZI)V

    .line 223
    if-lez v3, :cond_1

    .line 224
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->viewStateManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v4, v9}, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;->setEnabled(ZI)V

    .line 220
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    .end local v3    # "i":I
    :cond_2
    iget v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->checkBoxMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 229
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 230
    .local v10, "firstFlatListPosition":I
    move-object v2, p0

    move v3, p2

    move v4, v10

    move v5, v9

    move v6, p1

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->updateConnectedItems(IIIZZ)V

    .line 232
    .end local v10    # "firstFlatListPosition":I
    :cond_3
    return-void
.end method

.method private updateConnectedItems(IIIZZ)V
    .locals 5
    .param p1, "selectedPosition"    # I
    .param p2, "firstFlatListPosition"    # I
    .param p3, "lastFlatListPosition"    # I
    .param p4, "selected"    # Z
    .param p5, "scriptSelected"    # Z

    .line 236
    if-eqz p4, :cond_1

    .line 237
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->lastConnectedItem:I

    if-lt p3, v0, :cond_0

    .line 238
    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->lastConnectedItem:I

    .line 240
    :cond_0
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->firstConnectedItem:I

    if-gt p2, v0, :cond_4

    .line 241
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->firstConnectedItem:I

    goto :goto_0

    .line 244
    :cond_1
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->firstConnectedItem:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_2

    .line 245
    iput p2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->firstConnectedItem:I

    .line 247
    :cond_2
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->lastConnectedItem:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    .line 248
    iput p2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->lastConnectedItem:I

    .line 250
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->getSelectedPositions()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 251
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->clearConnectedItems()V

    .line 254
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 255
    .local v1, "item":Lorg/catrobat/catroid/content/bricks/Brick;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 256
    .local v2, "brickPosition":I
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->viewStateManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;

    invoke-direct {p0, v2, p5}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->selectableForCopy(IZ)Z

    move-result v4

    invoke-virtual {v3, v4, v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;->setEnabled(ZI)V

    .line 257
    .end local v1    # "item":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v2    # "brickPosition":I
    goto :goto_1

    .line 258
    :cond_5
    return-void
.end method

.method private updateItemsFromCurrentScripts()V
    .locals 3

    .line 109
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->sprite:Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Sprite;->removeAllEmptyScriptBricks()Ljava/util/List;

    .line 111
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->scripts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Script;

    .line 112
    .local v1, "script":Lorg/catrobat/catroid/content/Script;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Script;->setParents()V

    .line 113
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/Script;->addToFlatList(Ljava/util/List;)V

    .line 114
    .end local v1    # "script":Lorg/catrobat/catroid/content/Script;
    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->notifyDataSetChanged()V

    .line 116
    return-void
.end method


# virtual methods
.method public addItem(ILorg/catrobat/catroid/content/bricks/Brick;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "item"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 315
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 316
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->notifyDataSetChanged()V

    .line 317
    return-void
.end method

.method public clearSelection()V
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->clearSelection()V

    .line 292
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->viewStateManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;->clearDisabledPositions()V

    .line 293
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->clearConnectedItems()V

    .line 294
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->notifyDataSetChanged()V

    .line 295
    return-void
.end method

.method public findByHash(I)Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 3
    .param p1, "hashCode"    # I

    .line 325
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 326
    .local v1, "item":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 327
    return-object v1

    .line 329
    .end local v1    # "item":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_0
    goto :goto_0

    .line 330
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 428
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->getItem(I)Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 1
    .param p1, "position"    # I

    .line 321
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 433
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPosition(Lorg/catrobat/catroid/content/bricks/Brick;)I
    .locals 1
    .param p1, "brick"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 348
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSelectedItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v0, "selectedItems":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->getSelectedPositions()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 285
    .local v2, "position":I
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v2    # "position":I
    goto :goto_0

    .line 287
    :cond_0
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 120
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 122
    .local v0, "item":Lorg/catrobat/catroid/content/bricks/Brick;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/content/bricks/Brick;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 123
    .local v1, "itemView":Landroid/view/View;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->viewStateManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;

    invoke-virtual {v2, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;->isVisible(I)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->viewStateManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;

    invoke-virtual {v2, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;->isEnabled(I)Z

    move-result v2

    const v5, 0x3f4ccccd    # 0.8f

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 126
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 127
    .local v2, "brickViewContainer":Landroid/view/View;
    instance-of v7, v0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;

    if-eqz v7, :cond_2

    .line 128
    move-object v7, v1

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 131
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 133
    .local v7, "background":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->isCommentedOut()Z

    move-result v8

    if-nez v8, :cond_4

    instance-of v8, v0, Lorg/catrobat/catroid/content/bricks/EmptyEventBrick;

    if-eqz v8, :cond_3

    goto :goto_2

    .line 136
    :cond_3
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3

    .line 134
    :cond_4
    :goto_2
    invoke-static {v7}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->colorAsCommentedOut(Landroid/graphics/drawable/Drawable;)V

    .line 139
    :goto_3
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v8

    new-instance v9, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$BrickAdapter$pTQIlFcSzjjDAe3-_KKCpQ8KaQQ;

    invoke-direct {v9, p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$BrickAdapter$pTQIlFcSzjjDAe3-_KKCpQ8KaQQ;-><init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;I)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget v8, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->checkBoxMode:I

    if-eqz v8, :cond_a

    if-eq v8, v6, :cond_9

    const/4 v6, 0x2

    if-eq v8, v6, :cond_7

    const/4 v3, 0x3

    if-eq v8, v3, :cond_5

    goto :goto_4

    .line 151
    :cond_5
    instance-of v3, v0, Lorg/catrobat/catroid/content/bricks/UserDefinedReceiverBrick;

    if-eqz v3, :cond_6

    .line 152
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->viewStateManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;

    invoke-virtual {v3, v4, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;->setEnabled(ZI)V

    .line 153
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 155
    :cond_6
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 156
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->disableSpinners()V

    .line 157
    goto :goto_4

    .line 163
    :cond_7
    instance-of v5, v0, Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    .line 164
    .local v5, "isScriptBrick":Z
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v6

    if-eqz v5, :cond_8

    move v3, v4

    :cond_8
    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 165
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->disableSpinners()V

    goto :goto_4

    .line 159
    .end local v5    # "isScriptBrick":Z
    :cond_9
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 160
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->disableSpinners()V

    .line 161
    goto :goto_4

    .line 143
    :cond_a
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 144
    instance-of v3, v0, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    if-eqz v3, :cond_b

    .line 145
    move-object v3, v0

    check-cast v3, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->setClickListeners()V

    goto :goto_4

    .line 146
    :cond_b
    instance-of v3, v0, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;

    if-eqz v3, :cond_c

    .line 147
    move-object v3, v0

    check-cast v3, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/bricks/ListSelectorBrick;->setClickListeners()V

    .line 168
    :cond_c
    :goto_4
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v4, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->isPositionSelected(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 169
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v3

    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->viewStateManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;

    invoke-virtual {v4, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;->isEnabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 170
    return-object v1
.end method

.method public synthetic lambda$getView$0$BrickAdapter(ILandroid/view/View;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 139
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->onCheckBoxClick(I)V

    return-void
.end method

.method public moveItemTo(ILorg/catrobat/catroid/content/bricks/Brick;)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "itemToMove"    # Lorg/catrobat/catroid/content/bricks/Brick;

    .line 368
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->getBrickAbovePosition(I)Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object v0

    .line 370
    .local v0, "brickAboveTargetPosition":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v1, p2, Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 371
    invoke-interface {p2}, Lorg/catrobat/catroid/content/bricks/Brick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v1

    .line 372
    .local v1, "scriptToMove":Lorg/catrobat/catroid/content/Script;
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getScript()Lorg/catrobat/catroid/content/Script;

    move-result-object v3

    .line 374
    .local v3, "scriptAtTargetPosition":Lorg/catrobat/catroid/content/Script;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Script;->getBrickList()Ljava/util/List;

    move-result-object v4

    .line 375
    .local v4, "bricksInScriptToMove":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Script;->getBrickList()Ljava/util/List;

    move-result-object v5

    .line 377
    .local v5, "bricksInScriptAtTargetPosition":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 378
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 380
    .local v6, "divideScriptAtPositionAndAddBricksToMovingScript":Z
    :goto_0
    if-eqz v6, :cond_2

    .line 381
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getPositionInScript()I

    move-result v7

    add-int/2addr v7, v2

    .line 383
    .local v7, "positionToDivideScriptAt":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v8, "bricksToMove":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    move v9, v7

    .local v9, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 385
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 388
    .end local v9    # "i":I
    :cond_1
    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 389
    invoke-interface {v5, v8}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 392
    .end local v7    # "positionToDivideScriptAt":I
    .end local v8    # "bricksToMove":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    :cond_2
    iget-object v7, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->scripts:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 394
    iget-object v7, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->scripts:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    add-int/2addr v7, v2

    .line 396
    .local v7, "destinationPosition":I
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->scripts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v7, v2, :cond_3

    .line 397
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->scripts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 399
    :cond_3
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->scripts:Ljava/util/List;

    invoke-interface {v2, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 401
    .end local v1    # "scriptToMove":Lorg/catrobat/catroid/content/Script;
    .end local v3    # "scriptAtTargetPosition":Lorg/catrobat/catroid/content/Script;
    .end local v4    # "bricksInScriptToMove":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    .end local v5    # "bricksInScriptAtTargetPosition":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    .end local v6    # "divideScriptAtPositionAndAddBricksToMovingScript":Z
    .end local v7    # "destinationPosition":I
    :goto_2
    goto :goto_4

    .line 402
    :cond_4
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->scripts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Script;

    .line 403
    .local v3, "script":Lorg/catrobat/catroid/content/Script;
    invoke-virtual {v3, p2}, Lorg/catrobat/catroid/content/Script;->removeBrick(Lorg/catrobat/catroid/content/bricks/Brick;)Z

    .line 404
    .end local v3    # "script":Lorg/catrobat/catroid/content/Script;
    goto :goto_3

    .line 406
    :cond_5
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getPositionInDragAndDropTargetList()I

    move-result v1

    add-int/2addr v1, v2

    .line 408
    .local v1, "destinationPosition":I
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getDragAndDropTargetList()Ljava/util/List;

    move-result-object v2

    .line 410
    .local v2, "destinationList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 411
    invoke-interface {v2, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 413
    :cond_6
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    .end local v1    # "destinationPosition":I
    .end local v2    # "destinationList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    :goto_4
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->updateItemsFromCurrentScripts()V

    .line 417
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 183
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->checkBoxMode:I

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 185
    .local v0, "item":Lorg/catrobat/catroid/content/bricks/Brick;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->onItemClickListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter$OnItemClickListener;

    invoke-interface {v1, v0, p3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter$OnItemClickListener;->onItemClick(Lorg/catrobat/catroid/content/bricks/Brick;I)V

    .line 187
    .end local v0    # "item":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 191
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->checkBoxMode:I

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 193
    .local v0, "item":Lorg/catrobat/catroid/content/bricks/Brick;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->onItemClickListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter$OnItemClickListener;

    invoke-interface {v1, v0, p3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter$OnItemClickListener;->onItemLongClick(Lorg/catrobat/catroid/content/bricks/Brick;I)Z

    .line 194
    const/4 v1, 0x1

    return v1

    .line 196
    .end local v0    # "item":Lorg/catrobat/catroid/content/bricks/Brick;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onItemMove(II)Z
    .locals 4
    .param p1, "sourcePosition"    # I
    .param p2, "targetPosition"    # I

    .line 353
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 354
    .local v0, "source":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v1, v0, Lorg/catrobat/catroid/content/bricks/ScriptBrick;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    .line 355
    return v2

    .line 358
    :cond_0
    invoke-interface {v0}, Lorg/catrobat/catroid/content/bricks/Brick;->getAllParts()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    return v2

    .line 362
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-static {v1, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 363
    const/4 v1, 0x1

    return v1
.end method

.method public removeItems(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;)Z"
        }
    .end annotation

    .line 339
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->notifyDataSetChanged()V

    .line 341
    const/4 v0, 0x1

    return v0

    .line 343
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public selectAllCommentedOutBricks()V
    .locals 2

    .line 308
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 309
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-interface {v1}, Lorg/catrobat/catroid/content/bricks/Brick;->isCommentedOut()Z

    move-result v1

    invoke-direct {p0, v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->setSelectionTo(ZI)V

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->notifyDataSetChanged()V

    .line 312
    return-void
.end method

.method public setAllPositionsVisible()V
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->viewStateManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;->setAllPositionsVisible()V

    .line 305
    return-void
.end method

.method public setCheckBoxMode(I)V
    .locals 0
    .param p1, "checkBoxMode"    # I

    .line 99
    iput p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->checkBoxMode:I

    .line 100
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->notifyDataSetChanged()V

    .line 101
    return-void
.end method

.method public setItemVisible(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "visible"    # Z

    .line 299
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->viewStateManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;

    invoke-virtual {v0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/ViewStateManager;->setVisible(IZ)V

    .line 300
    return-void
.end method

.method public setOnItemClickListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter$OnItemClickListener;

    .line 91
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->onItemClickListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter$OnItemClickListener;

    .line 92
    return-void
.end method

.method public setSelectionListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter$SelectionListener;)V
    .locals 0
    .param p1, "selectionListener"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter$SelectionListener;

    .line 95
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->selectionListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter$SelectionListener;

    .line 96
    return-void
.end method

.method public updateItems(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 104
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->scripts:Ljava/util/List;

    .line 105
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/BrickAdapter;->updateItemsFromCurrentScripts()V

    .line 106
    return-void
.end method
