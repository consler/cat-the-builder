.class Lorg/catrobat/catroid/pocketmusic/ScrollController$3;
.super Ljava/lang/Object;
.source "ScrollController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/pocketmusic/ScrollController;->initializePlayLine()V
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

    .line 109
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$3;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 112
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$3;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->initializeAnimator()V

    .line 113
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController$3;->this$0:Lorg/catrobat/catroid/pocketmusic/ScrollController;

    invoke-static {v0}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->access$100(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 114
    return-void
.end method
