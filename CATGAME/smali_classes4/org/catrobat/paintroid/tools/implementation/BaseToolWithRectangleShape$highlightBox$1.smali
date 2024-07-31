.class public final Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$highlightBox$1;
.super Landroid/os/CountDownTimer;
.source "BaseToolWithRectangleShape.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->highlightBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "org/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$highlightBox$1",
        "Landroid/os/CountDownTimer;",
        "onFinish",
        "",
        "onTick",
        "millisUntilFinished",
        "",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;JJ)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;
    .param p2, "$super_call_param$1"    # J
    .param p4, "$super_call_param$2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)V"
        }
    .end annotation

    .line 672
    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$highlightBox$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    .line 673
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 683
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$highlightBox$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->highlightBoxWhenClickInBox(Z)V

    .line 684
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$highlightBox$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    iget-object v0, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    .line 685
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$highlightBox$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    invoke-static {v0}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->access$getDownTimer$p(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 686
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .param p1, "millisUntilFinished"    # J

    .line 678
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$highlightBox$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->highlightBoxWhenClickInBox(Z)V

    .line 679
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$highlightBox$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    iget-object v0, v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->workspace:Lorg/catrobat/paintroid/tools/Workspace;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/Workspace;->invalidate()V

    .line 680
    return-void
.end method
