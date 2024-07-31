.class public Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;
.super Landroid/widget/BaseAdapter;
.source "PrototypeBrickAdapter.java"


# instance fields
.field private brickList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/bricks/Brick;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "brickList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;->brickList:Ljava/util/List;

    .line 39
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;->brickList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;->getItem(I)Lorg/catrobat/catroid/content/bricks/Brick;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/catrobat/catroid/content/bricks/Brick;
    .locals 1
    .param p1, "position"    # I

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;->brickList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 58
    iget-object v0, p0, Lorg/catrobat/catroid/ui/adapter/PrototypeBrickAdapter;->brickList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/content/bricks/Brick;->getPrototypeView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
