.class public Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "TouchHelperCallback.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private adapterInterface:Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperAdapterInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperAdapterInterface;)V
    .locals 0
    .param p1, "adapterInterface"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperAdapterInterface;

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperCallback;->adapterInterface:Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperAdapterInterface;

    .line 39
    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 63
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 64
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0800d6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 65
    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 3
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 43
    const/4 v0, 0x3

    .line 44
    .local v0, "dragFlags":I
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperCallback;->makeMovementFlags(II)I

    move-result v1

    return v1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperCallback;->adapterInterface:Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperAdapterInterface;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperAdapterInterface;->onItemMove(II)Z

    move-result v0

    return v0
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .line 54
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0800d5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    :goto_0
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .line 74
    return-void
.end method
