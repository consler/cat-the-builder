.class Lorg/catrobat/catroid/pocketmusic/ScrollController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrollController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/pocketmusic/ScrollController;->initializeAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/pocketmusic/ScrollController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/pocketmusic/ScrollController;

    .line 86
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$2;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 98
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$2;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->access$300(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f08020b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 99
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$2;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->access$400(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$2;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->access$100(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->setPlaying(Z)V

    .line 101
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$2;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->access$100(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->getTrackGrid()Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    move-result-object v0

    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$2;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-static {v2}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->access$500(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Lorg/catrobat/catroid/pocketmusic/ui/PianoView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->stopPlayback(Lorg/catrobat/catroid/pocketmusic/ui/PianoView;)V

    .line 102
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$2;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->access$100(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->smoothScrollToPosition(I)V

    .line 103
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 89
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$2;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->access$300(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f080260

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 90
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$2;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->access$400(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$2;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->access$100(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->setPlaying(Z)V

    .line 92
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$2;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->access$100(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->smoothScrollToPosition(I)V

    .line 93
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$2;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->access$100(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->getTrackGrid()Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$2;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-static {v1}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->access$500(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Lorg/catrobat/catroid/pocketmusic/ui/PianoView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->startPlayback(Lorg/catrobat/catroid/pocketmusic/ui/PianoView;)V

    .line 94
    return-void
.end method
