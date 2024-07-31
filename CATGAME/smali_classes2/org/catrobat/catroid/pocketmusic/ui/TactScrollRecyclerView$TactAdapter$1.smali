.class Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter$1;
.super Ljava/lang/Object;
.source "TactScrollRecyclerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;

    .line 154
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter$1;->this$1:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 157
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter$1;->this$1:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;

    iget-object v0, v0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->this$0:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->access$108(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)I

    .line 158
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter$1;->this$1:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;->notifyDataSetChanged()V

    .line 159
    return-void
.end method
