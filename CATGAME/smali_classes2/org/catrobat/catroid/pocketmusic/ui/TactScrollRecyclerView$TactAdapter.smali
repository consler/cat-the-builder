.class Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TactScrollRecyclerView.java"

# interfaces
.implements Lorg/catrobat/catroid/pocketmusic/fastscroller/SectionTitleProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TactAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/catrobat/catroid/pocketmusic/TactViewHolder;",
        ">;",
        "Lorg/catrobat/catroid/pocketmusic/fastscroller/SectionTitleProvider;"
    }
.end annotation


# static fields
.field private static final PLUS_BUTTON_ON_END:I = 0x1


# instance fields
.field private final addTactClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;


# direct methods
.method private constructor <init>(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->this$0:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 154
    new-instance p1, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter$1;

    invoke-direct {p1, p0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter$1;-><init>(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;)V

    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->addTactClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method synthetic constructor <init>(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;
    .param p2, "x1"    # Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$1;

    .line 151
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;-><init>(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 213
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->this$0:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->access$500(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->this$0:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->access$100(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v1

    return v0

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->this$0:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->access$100(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .line 198
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->this$0:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->access$500(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-lt p1, v0, :cond_0

    .line 200
    const/16 v0, 0x66

    return v0

    .line 202
    :cond_0
    return v1

    .line 204
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    .line 205
    const/16 v0, 0x65

    return v0

    .line 207
    :cond_2
    return v1
.end method

.method public getSectionTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .line 221
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p1, :cond_0

    .line 222
    const-string v0, "+"

    return-object v0

    .line 224
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 151
    check-cast p1, Lorg/catrobat/catroid/pocketmusic/TactViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->onBindViewHolder(Lorg/catrobat/catroid/pocketmusic/TactViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/catrobat/catroid/pocketmusic/TactViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lorg/catrobat/catroid/pocketmusic/TactViewHolder;
    .param p2, "position"    # I

    .line 190
    invoke-virtual {p0, p2}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p1, Lorg/catrobat/catroid/pocketmusic/TactViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;

    .line 192
    .local v0, "trackView":Lorg/catrobat/catroid/pocketmusic/ui/TrackView;
    invoke-virtual {v0, p2}, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;->updateDataForTactPosition(I)V

    .line 194
    .end local v0    # "trackView":Lorg/catrobat/catroid/pocketmusic/ui/TrackView;
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 151
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/pocketmusic/TactViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/pocketmusic/TactViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 165
    const/16 v0, 0x65

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/16 v0, 0x66

    if-eq p2, v0, :cond_0

    .line 178
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;

    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->this$0:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-virtual {v2}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->this$0:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-static {v3}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->access$300(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/catrobat/catroid/pocketmusic/ui/TrackView;-><init>(Landroid/content/Context;Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;)V

    .line 179
    .local v0, "tactContent":Landroid/view/View;
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->this$0:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-static {v2}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->access$200(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->this$0:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-static {v2}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->access$400(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)Lorg/catrobat/catroid/pocketmusic/ui/AnimatorUpdateCallback;

    move-result-object v2

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->this$0:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-static {v3}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->access$100(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)I

    move-result v3

    iget-object v4, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->this$0:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-virtual {v4}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->getMeasuredWidth()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lorg/catrobat/catroid/pocketmusic/ui/AnimatorUpdateCallback;->updateCallback(II)V

    goto :goto_0

    .line 173
    .end local v0    # "tactContent":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d01b9

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 175
    .restart local v0    # "tactContent":Landroid/view/View;
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->this$0:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-static {v2}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->access$200(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    goto :goto_0

    .line 167
    .end local v0    # "tactContent":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d01b8

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 169
    .restart local v0    # "tactContent":Landroid/view/View;
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->this$0:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-static {v2}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->access$200(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->addTactClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    nop

    .line 183
    :goto_0
    new-instance v2, Lorg/catrobat/catroid/pocketmusic/TactViewHolder;

    invoke-direct {v2, v0}, Lorg/catrobat/catroid/pocketmusic/TactViewHolder;-><init>(Landroid/view/View;)V

    .line 184
    .local v2, "tactViewHolder":Lorg/catrobat/catroid/pocketmusic/TactViewHolder;
    invoke-virtual {v2, v1}, Lorg/catrobat/catroid/pocketmusic/TactViewHolder;->setIsRecyclable(Z)V

    .line 185
    return-object v2
.end method
