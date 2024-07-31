.class Lorg/catrobat/catroid/pocketmusic/ScrollController$1;
.super Ljava/lang/Object;
.source "ScrollController.java"

# interfaces
.implements Lorg/catrobat/catroid/pocketmusic/ui/AnimatorUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/pocketmusic/ScrollController;->init()V
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

    .line 63
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$1;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateCallback(II)V
    .locals 8
    .param p1, "tactCount"    # I
    .param p2, "measuredWidth"    # I

    .line 66
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->QUARTER:Lorg/catrobat/catroid/pocketmusic/note/NoteLength;

    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$1;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-static {v1}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->access$000(Lorg/catrobat/catroid/pocketmusic/ScrollController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/pocketmusic/note/NoteLength;->toMilliseconds(I)J

    move-result-wide v0

    .line 67
    .local v0, "singleButtonDuration":J
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$1;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-static {v2}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->access$100(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->getNotesPerScreen()I

    move-result v2

    div-int v2, p2, v2

    .line 68
    .local v2, "singleButtonWidth":I
    mul-int/lit8 v3, p1, 0x4

    .line 69
    .local v3, "buttonsInTrack":I
    iget-object v4, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$1;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-static {v4}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->access$200(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [I

    mul-int v6, v2, v3

    const/4 v7, 0x0

    aput v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 70
    iget-object v4, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$1;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-static {v4}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->access$200(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    int-to-long v5, v3

    mul-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 71
    return-void
.end method
