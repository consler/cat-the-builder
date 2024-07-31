.class Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactSnapper;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "TactScrollRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TactSnapper"
.end annotation


# instance fields
.field private scrollStartedByUser:Z

.field final synthetic this$0:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)V
    .locals 1
    .param p1, "this$0"    # Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    .line 228
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactSnapper;->this$0:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactSnapper;->scrollStartedByUser:Z

    return-void
.end method


# virtual methods
.method getViewHolderAtScreenCenter()Lorg/catrobat/catroid/pocketmusic/TactViewHolder;
    .locals 7

    .line 250
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactSnapper;->this$0:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 251
    .local v0, "midX":I
    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactSnapper;->this$0:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 252
    .local v1, "midY":I
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactSnapper;->this$0:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    .line 254
    .local v2, "view":Landroid/view/View;
    const/4 v3, 0x0

    .line 256
    .local v3, "tactViewHolder":Lorg/catrobat/catroid/pocketmusic/TactViewHolder;
    :try_start_0
    iget-object v4, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactSnapper;->this$0:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-virtual {v4, v2}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/pocketmusic/TactViewHolder;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 259
    goto :goto_0

    .line 257
    :catch_0
    move-exception v4

    .line 258
    .local v4, "e":Ljava/lang/NullPointerException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning: Tact not found for centering"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-object v3
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 233
    if-nez p2, :cond_1

    iget-boolean v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactSnapper;->scrollStartedByUser:Z

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactSnapper;->getViewHolderAtScreenCenter()Lorg/catrobat/catroid/pocketmusic/TactViewHolder;

    move-result-object v0

    .line 236
    .local v0, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 237
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 240
    .end local v0    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_0
    iput-boolean v1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactSnapper;->scrollStartedByUser:Z

    .line 241
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 243
    :cond_1
    return-void
.end method

.method public setScrollStartedByUser(Z)V
    .locals 0
    .param p1, "scrollStartedByUser"    # Z

    .line 246
    iput-boolean p1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactSnapper;->scrollStartedByUser:Z

    .line 247
    return-void
.end method
