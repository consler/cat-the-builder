.class Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller$1;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->initHandleMovement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    .line 150
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller$1;->this$0:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 153
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 163
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller$1;->this$0:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    invoke-static {v0, v2}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->access$202(Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;Z)Z

    .line 164
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller$1;->this$0:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->access$000(Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;)Lorg/catrobat/catroid/pocketmusic/fastscroller/SectionTitleProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller$1;->this$0:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->access$100(Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;)Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->onHandleReleased()V

    .line 167
    :cond_1
    return v1

    .line 169
    :cond_2
    return v2

    .line 154
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller$1;->this$0:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->access$000(Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;)Lorg/catrobat/catroid/pocketmusic/fastscroller/SectionTitleProvider;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 155
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller$1;->this$0:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->access$100(Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;)Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->onHandleGrabbed()V

    .line 157
    :cond_4
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller$1;->this$0:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    invoke-static {v0, v1}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->access$202(Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;Z)Z

    .line 158
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller$1;->this$0:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    invoke-static {v0, p2}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->access$300(Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;Landroid/view/MotionEvent;)F

    move-result v0

    .line 159
    .local v0, "relativePos":F
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller$1;->this$0:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->setScrollerPosition(F)V

    .line 160
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller$1;->this$0:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    invoke-static {v2, v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->access$400(Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;F)V

    .line 161
    return v1
.end method
